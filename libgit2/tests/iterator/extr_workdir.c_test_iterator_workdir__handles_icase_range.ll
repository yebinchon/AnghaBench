; ModuleID = '/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__handles_icase_range.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/iterator/extr_workdir.c_test_iterator_workdir__handles_icase_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"dummy-marker.txt\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"empty_standard_repo/before\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"whatever\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"empty_standard_repo/FIRST\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"empty_standard_repo/second\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"empty_standard_repo/THIRD\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"empty_standard_repo/zafter\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"empty_standard_repo/Zlast\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"third\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"FIRST\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"THIRD\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"FirSt\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"tHiRd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_iterator_workdir__handles_icase_range() #0 {
  %1 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 %1, i32* @g_repo, align 4
  %2 = load i32, i32* @g_repo, align 4
  %3 = call i32 @git_repository_path(i32 %2)
  %4 = call i32 @cl_git_remove_placeholders(i32 %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %5 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %6 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %7 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %8 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %9 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %10 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %11 = load i32, i32* @g_repo, align 4
  %12 = call i32 @check_wd_first_through_third_range(i32 %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %13 = load i32, i32* @g_repo, align 4
  %14 = call i32 @check_wd_first_through_third_range(i32 %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %15 = load i32, i32* @g_repo, align 4
  %16 = call i32 @check_wd_first_through_third_range(i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %17 = load i32, i32* @g_repo, align 4
  %18 = call i32 @check_wd_first_through_third_range(i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %19 = load i32, i32* @g_repo, align 4
  %20 = call i32 @check_wd_first_through_third_range(i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_remove_placeholders(i32, i8*) #1

declare dso_local i32 @git_repository_path(i32) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @check_wd_first_through_third_range(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
