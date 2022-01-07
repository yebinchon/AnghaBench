; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_futils.c_git_futils_writebuffer.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_futils.c_git_futils_writebuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_FSYNC = common dso_local global i32 0, align 4
@GIT_FILEMODE_BLOB = common dso_local global i64 0, align 8
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"could not open '%s' for writing\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"could not write to '%s'\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"could not fsync '%s'\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"error while closing '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_futils_writebuffer(i32* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @O_CREAT, align 4
  %17 = load i32, i32* @O_TRUNC, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @O_WRONLY, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %15, %4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @O_FSYNC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %11, align 4
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i32, i32* @O_FSYNC, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %27
  %35 = load i64, i64* @GIT_FILEMODE_BLOB, align 8
  store i64 %35, i64* %9, align 8
  br label %36

36:                                               ; preds = %34, %27
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @p_open(i8* %37, i32 %38, i64 %39)
  store i32 %40, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i32, i32* @GIT_ERROR_OS, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @git_error_set(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %5, align 4
  br label %98

47:                                               ; preds = %36
  %48 = load i32, i32* %10, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @git_buf_cstr(i32* %49)
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @git_buf_len(i32* %51)
  %53 = call i32 @p_write(i32 %48, i32 %50, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %47
  %56 = load i32, i32* @GIT_ERROR_OS, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @git_error_set(i32 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @p_close(i32 %59)
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %5, align 4
  br label %98

62:                                               ; preds = %47
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @p_fsync(i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load i32, i32* @GIT_ERROR_OS, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @git_error_set(i32 %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %71)
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @p_close(i32 %73)
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %5, align 4
  br label %98

76:                                               ; preds = %65, %62
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @p_close(i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i32, i32* @GIT_ERROR_OS, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @git_error_set(i32 %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %5, align 4
  br label %98

85:                                               ; preds = %76
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @O_CREAT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 @git_futils_fsync_parent(i8* %94)
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %93, %88, %85
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %96, %80, %69, %55, %42
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @p_open(i8*, i32, i64) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

declare dso_local i32 @p_write(i32, i32, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_len(i32*) #1

declare dso_local i32 @p_close(i32) #1

declare dso_local i32 @p_fsync(i32) #1

declare dso_local i32 @git_futils_fsync_parent(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
