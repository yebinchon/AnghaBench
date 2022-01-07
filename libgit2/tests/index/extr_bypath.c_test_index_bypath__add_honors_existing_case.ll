; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_bypath.c_test_index_bypath__add_honors_existing_case.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_bypath.c_test_index_bypath__add_honors_existing_case.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"core.ignorecase\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"submod2/just_a_dir/file1.txt\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"This is a file\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"submod2/just_a_dir/file2.txt\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"This is another file\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"submod2/just_a_dir/file3.txt\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"submod2/just_a_dir/file4.txt\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"And another file\00", align 1
@g_idx = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"just_a_dir/File1.txt\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"JUST_A_DIR/file2.txt\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Just_A_Dir/FILE3.txt\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"just_a_dir/file2.txt\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"just_a_dir/FILE3.txt\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"Rewritten\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Just_A_Dir/file3.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_bypath__add_honors_existing_case() #0 {
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
  %9 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %10 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %11 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %12 = load i32, i32* @g_idx, align 4
  %13 = call i32 @git_index_add_bypath(i32 %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @g_idx, align 4
  %16 = call i32 @git_index_add_bypath(i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @g_idx, align 4
  %19 = call i32 @git_index_add_bypath(i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @g_idx, align 4
  %22 = call %struct.TYPE_4__* @git_index_get_bypath(i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 0)
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %1, align 8
  %23 = call i32 @cl_assert(%struct.TYPE_4__* %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @g_idx, align 4
  %29 = call %struct.TYPE_4__* @git_index_get_bypath(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 0)
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %1, align 8
  %30 = call i32 @cl_assert(%struct.TYPE_4__* %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @g_idx, align 4
  %36 = call %struct.TYPE_4__* @git_index_get_bypath(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 0)
  store %struct.TYPE_4__* %36, %struct.TYPE_4__** %1, align 8
  %37 = call i32 @cl_assert(%struct.TYPE_4__* %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %40)
  %42 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %43 = load i32, i32* @g_idx, align 4
  %44 = call i32 @git_index_add_bypath(i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i32, i32* @g_idx, align 4
  %47 = call %struct.TYPE_4__* @git_index_get_bypath(i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 0)
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %1, align 8
  %48 = call i32 @cl_assert(%struct.TYPE_4__* %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %51)
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
