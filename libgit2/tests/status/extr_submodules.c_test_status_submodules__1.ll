; ModuleID = '/home/carl/AnghaBench/libgit2/tests/status/extr_submodules.c_test_status_submodules__1.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/status/extr_submodules.c_test_status_submodules__1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"submodules/.git\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"submodules/testrepo/.git\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"submodules/.gitmodules\00", align 1
@expected_files = common dso_local global i32 0, align 4
@expected_status = common dso_local global i32 0, align 4
@cb_status__match = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_status_submodules__1() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = call i32 (...) @setup_fixture_submodules()
  store i32 %2, i32* @g_repo, align 4
  %3 = call i32 @git_path_isdir(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @cl_assert(i32 %3)
  %5 = call i32 @git_path_isdir(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @cl_assert(i32 %5)
  %7 = call i32 @git_path_isfile(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 @cl_assert(i32 %7)
  %9 = load i32, i32* @expected_files, align 4
  %10 = load i32, i32* @expected_status, align 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @status_counts_init(i32 %12, i32 %9, i32 %10)
  %14 = load i32, i32* @g_repo, align 4
  %15 = load i32, i32* @cb_status__match, align 4
  %16 = call i32 @git_status_foreach(i32 %14, i32 %15, %struct.TYPE_4__* %1)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cl_assert_equal_i(i32 6, i32 %19)
  ret void
}

declare dso_local i32 @setup_fixture_submodules(...) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_path_isdir(i8*) #1

declare dso_local i32 @git_path_isfile(i8*) #1

declare dso_local i32 @status_counts_init(i32, i32, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_status_foreach(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
