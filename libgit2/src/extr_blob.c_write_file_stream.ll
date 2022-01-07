; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_blob.c_write_file_stream.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_blob.c_write_file_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILEIO_BUFSIZE = common dso_local global i32 0, align 4
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to read file into stream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i64)* @write_file_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_file_stream(i32* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load i32, i32* @FILEIO_BUFSIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  store i32* null, i32** %14, align 8
  store i64 -1, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %25 = call i32 @git_odb_open_wstream(i32** %14, i32* %22, i64 %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %77

29:                                               ; preds = %4
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @git_futils_open_ro(i8* %30)
  store i32 %31, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32*, i32** %14, align 8
  %35 = call i32 @git_odb_stream_free(i32* %34)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %77

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %47, %36
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  %42 = trunc i64 %19 to i32
  %43 = call i64 @p_read(i32 %41, i8* %21, i32 %42)
  store i64 %43, i64* %15, align 8
  %44 = icmp sgt i64 %43, 0
  br label %45

45:                                               ; preds = %40, %37
  %46 = phi i1 [ false, %37 ], [ %44, %40 ]
  br i1 %46, label %47, label %54

47:                                               ; preds = %45
  %48 = load i32*, i32** %14, align 8
  %49 = load i64, i64* %15, align 8
  %50 = call i32 @git_odb_stream_write(i32* %48, i8* %21, i64 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* %16, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %16, align 8
  br label %37

54:                                               ; preds = %45
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @p_close(i32 %55)
  %57 = load i64, i64* %16, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i64, i64* %15, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60, %54
  %64 = load i32, i32* @GIT_ERROR_OS, align 4
  %65 = call i32 @git_error_set(i32 %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %11, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = load i32*, i32** %6, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = call i32 @git_odb_stream_finalize_write(i32* %70, i32* %71)
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %69, %66
  %74 = load i32*, i32** %14, align 8
  %75 = call i32 @git_odb_stream_free(i32* %74)
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %77

77:                                               ; preds = %73, %33, %27
  %78 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @git_odb_open_wstream(i32**, i32*, i64, i32) #2

declare dso_local i32 @git_futils_open_ro(i8*) #2

declare dso_local i32 @git_odb_stream_free(i32*) #2

declare dso_local i64 @p_read(i32, i8*, i32) #2

declare dso_local i32 @git_odb_stream_write(i32*, i8*, i64) #2

declare dso_local i32 @p_close(i32) #2

declare dso_local i32 @git_error_set(i32, i8*) #2

declare dso_local i32 @git_odb_stream_finalize_write(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
