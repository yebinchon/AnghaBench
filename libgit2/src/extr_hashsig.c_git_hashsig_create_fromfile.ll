; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_hashsig.c_git_hashsig_create_fromfile.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_hashsig.c_git_hashsig_create_fromfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"read error on '%s' calculating similarity hashes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_hashsig_create_fromfile(i32** %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4096 x i32], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32* @hashsig_alloc(i32 %14)
  store i32* %15, i32** %13, align 8
  %16 = load i32*, i32** %13, align 8
  %17 = call i32 @GIT_ERROR_CHECK_ALLOC(i32* %16)
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @git_futils_open_ro(i8* %18)
  store i32 %19, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32*, i32** %13, align 8
  %23 = call i32 @git__free(i32* %22)
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %4, align 4
  br label %70

25:                                               ; preds = %3
  %26 = load i32*, i32** %13, align 8
  %27 = call i32 @hashsig_in_progress_init(i32* %12, i32* %26)
  br label %28

28:                                               ; preds = %46, %25
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load i32, i32* %11, align 4
  %34 = getelementptr inbounds [4096 x i32], [4096 x i32]* %8, i64 0, i64 0
  %35 = call i64 @p_read(i32 %33, i32* %34, i32 16384)
  store i64 %35, i64* %9, align 8
  %36 = icmp sle i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load i64, i64* %9, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* @GIT_ERROR_OS, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @git_error_set(i32 %42, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %41, %37
  br label %51

46:                                               ; preds = %32
  %47 = load i32*, i32** %13, align 8
  %48 = getelementptr inbounds [4096 x i32], [4096 x i32]* %8, i64 0, i64 0
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @hashsig_add_hashes(i32* %47, i32* %48, i64 %49, i32* %12)
  store i32 %50, i32* %10, align 4
  br label %28

51:                                               ; preds = %45, %28
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @p_close(i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i32*, i32** %13, align 8
  %58 = call i32 @hashsig_finalize_hashes(i32* %57)
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32*, i32** %13, align 8
  %64 = load i32**, i32*** %5, align 8
  store i32* %63, i32** %64, align 8
  br label %68

65:                                               ; preds = %59
  %66 = load i32*, i32** %13, align 8
  %67 = call i32 @git_hashsig_free(i32* %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %21
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32* @hashsig_alloc(i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i32*) #1

declare dso_local i32 @git_futils_open_ro(i8*) #1

declare dso_local i32 @git__free(i32*) #1

declare dso_local i32 @hashsig_in_progress_init(i32*, i32*) #1

declare dso_local i64 @p_read(i32, i32*, i32) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

declare dso_local i32 @hashsig_add_hashes(i32*, i32*, i64, i32*) #1

declare dso_local i32 @p_close(i32) #1

declare dso_local i32 @hashsig_finalize_hashes(i32*) #1

declare dso_local i32 @git_hashsig_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
