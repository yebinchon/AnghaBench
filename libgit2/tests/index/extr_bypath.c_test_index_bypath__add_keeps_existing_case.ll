; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_bypath.c_test_index_bypath__add_keeps_existing_case.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_bypath.c_test_index_bypath__add_keeps_existing_case.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"core.ignorecase\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"submod2/just_a_dir/file1.txt\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"This is a file\00", align 1
@g_idx = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"just_a_dir/file1.txt\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Updated!\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"just_a_dir/FILE1.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_bypath__add_keeps_existing_case() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = load i32, i32* @g_repo, align 4
  %3 = call i32 @cl_repo_get_bool(i32 %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = call i32 (...) @clar__skip()
  br label %7

7:                                                ; preds = %5, %0
  %8 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %9 = load i32, i32* @g_idx, align 4
  %10 = call i32 @git_index_add_bypath(i32 %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @g_idx, align 4
  %13 = call %struct.TYPE_4__* @git_index_get_bypath(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %1, align 8
  %14 = call i32 @cl_assert(%struct.TYPE_4__* %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %17)
  %19 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %20 = load i32, i32* @g_idx, align 4
  %21 = call i32 @git_index_add_bypath(i32 %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32, i32* @g_idx, align 4
  %24 = call %struct.TYPE_4__* @git_index_get_bypath(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 0)
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %1, align 8
  %25 = call i32 @cl_assert(%struct.TYPE_4__* %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  ret void
}

declare dso_local i32 @cl_repo_get_bool(i32, i8*) #1

declare dso_local i32 @clar__skip(...) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_add_bypath(i32, i8*) #1

declare dso_local i32 @cl_assert(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @git_index_get_bypath(i32, i8*, i32) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
