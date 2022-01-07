; ModuleID = '/home/carl/AnghaBench/libgit2/tests/path/extr_dotgit.c_test_path_dotgit__dotgit_modules.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/path/extr_dotgit.c_test_path_dotgit__dotgit_modules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c".gitmodules\00", align 1
@GIT_PATH_GITFILE_GITMODULES = common dso_local global i32 0, align 4
@GIT_PATH_FS_GENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c".git\E2\80\8Cmodules\00", align 1
@gitmodules_altnames = common dso_local global i8** null, align 8
@gitmodules_not_altnames = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_path_dotgit__dotgit_modules() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = call i32 @strlen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* @GIT_PATH_GITFILE_GITMODULES, align 4
  %6 = load i32, i32* @GIT_PATH_FS_GENERIC, align 4
  %7 = call i64 @git_path_is_gitfile(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %5, i32 %6)
  %8 = call i32 @cl_assert_equal_i(i32 1, i64 %7)
  %9 = call i32 @strlen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i32, i32* @GIT_PATH_GITFILE_GITMODULES, align 4
  %11 = load i32, i32* @GIT_PATH_FS_GENERIC, align 4
  %12 = call i64 @git_path_is_gitfile(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %9, i32 %10, i32 %11)
  %13 = call i32 @cl_assert_equal_i(i32 1, i64 %12)
  store i64 0, i64* %1, align 8
  br label %14

14:                                               ; preds = %35, %0
  %15 = load i64, i64* %1, align 8
  %16 = load i8**, i8*** @gitmodules_altnames, align 8
  %17 = call i64 @ARRAY_SIZE(i8** %16)
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %14
  %20 = load i8**, i8*** @gitmodules_altnames, align 8
  %21 = load i64, i64* %1, align 8
  %22 = getelementptr inbounds i8*, i8** %20, i64 %21
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %2, align 8
  %24 = load i8*, i8** %2, align 8
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = load i32, i32* @GIT_PATH_GITFILE_GITMODULES, align 4
  %28 = load i32, i32* @GIT_PATH_FS_GENERIC, align 4
  %29 = call i64 @git_path_is_gitfile(i8* %24, i32 %26, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %19
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 @cl_fail(i8* %32)
  br label %34

34:                                               ; preds = %31, %19
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %1, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %1, align 8
  br label %14

38:                                               ; preds = %14
  store i64 0, i64* %1, align 8
  br label %39

39:                                               ; preds = %60, %38
  %40 = load i64, i64* %1, align 8
  %41 = load i8**, i8*** @gitmodules_not_altnames, align 8
  %42 = call i64 @ARRAY_SIZE(i8** %41)
  %43 = icmp ult i64 %40, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %39
  %45 = load i8**, i8*** @gitmodules_not_altnames, align 8
  %46 = load i64, i64* %1, align 8
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %3, align 8
  %49 = load i8*, i8** %3, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = load i32, i32* @GIT_PATH_GITFILE_GITMODULES, align 4
  %53 = load i32, i32* @GIT_PATH_FS_GENERIC, align 4
  %54 = call i64 @git_path_is_gitfile(i8* %49, i32 %51, i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 @cl_fail(i8* %57)
  br label %59

59:                                               ; preds = %56, %44
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %1, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %1, align 8
  br label %39

63:                                               ; preds = %39
  ret void
}

declare dso_local i32 @cl_assert_equal_i(i32, i64) #1

declare dso_local i64 @git_path_is_gitfile(i8*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @cl_fail(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
