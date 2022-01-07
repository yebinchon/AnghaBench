; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_futils.c_futils__rmdir_empty_parent.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_futils.c_futils__rmdir_empty_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@GIT_ITEROVER = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@GIT_RMDIR_SKIP_NONEMPTY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"rmdir\00", align 1
@ENOTEMPTY = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @futils__rmdir_empty_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @futils__rmdir_empty_parent(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sle i64 %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @GIT_ITEROVER, align 4
  store i32 %17, i32* %6, align 4
  br label %69

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @p_rmdir(i8* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %68

22:                                               ; preds = %18
  %23 = load i32, i32* @errno, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @ENOENT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @ENOTDIR, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %22
  br label %67

32:                                               ; preds = %27
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @GIT_RMDIR_SKIP_NONEMPTY, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @EBUSY, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* @errno, align 4
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @git_path_set_error(i32 %44, i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %46, i32* %6, align 4
  br label %66

47:                                               ; preds = %39, %32
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @ENOTEMPTY, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @EEXIST, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @EBUSY, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55, %51, %47
  %60 = load i32, i32* @GIT_ITEROVER, align 4
  store i32 %60, i32* %6, align 4
  br label %65

61:                                               ; preds = %55
  %62 = load i32, i32* @errno, align 4
  %63 = load i8*, i8** %4, align 8
  %64 = call i32 @git_path_set_error(i32 %62, i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %61, %59
  br label %66

66:                                               ; preds = %65, %43
  br label %67

67:                                               ; preds = %66, %31
  br label %68

68:                                               ; preds = %67, %18
  br label %69

69:                                               ; preds = %68, %16
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @p_rmdir(i8*) #1

declare dso_local i32 @git_path_set_error(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
