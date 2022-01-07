; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_bypath.c_test_index_bypath__add_honors_existing_case_2.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_bypath.c_test_index_bypath__add_honors_existing_case_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"core.ignorecase\00", align 1
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"f990a25a74d1a8281ce2ab018ea8df66795cd60b\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Just_a_dir/file0.txt\00", align 1
@g_idx = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"just_a_dir/fileA.txt\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Just_A_Dir/fileB.txt\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"JUST_A_DIR/fileC.txt\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"just_A_dir/fileD.txt\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"JUST_a_DIR/fileE.txt\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"submod2/just_a_dir/file1.txt\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"This is a file\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"submod2/just_a_dir/file2.txt\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"This is another file\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"submod2/just_a_dir/file3.txt\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"submod2/just_a_dir/file4.txt\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"And another file\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"just_a_dir/File1.txt\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"JUST_A_DIR/file2.txt\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"Just_A_Dir/FILE3.txt\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"JusT_A_DIR/FILE4.txt\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"Rewritten\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"Just_A_Dir/file3.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_bypath__add_honors_existing_case_2() #0 {
  %1 = alloca %struct.TYPE_7__, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = bitcast %struct.TYPE_7__* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 24, i1 false)
  %4 = load i32, i32* @g_repo, align 4
  %5 = call i32 @cl_repo_get_bool(i32 %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = call i32 (...) @clar__skip()
  br label %9

9:                                                ; preds = %7, %0
  %10 = load i32, i32* @GIT_FILEMODE_BLOB, align 4
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 2
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 1
  %13 = call i32 @git_oid_fromstr(i32* %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %15, align 8
  %16 = load i32, i32* @g_idx, align 4
  %17 = call i32 @git_index_add(i32 %16, %struct.TYPE_7__* %1)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8** %19, align 8
  %20 = load i32, i32* @g_idx, align 4
  %21 = call i32 @git_index_add(i32 %20, %struct.TYPE_7__* %1)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** %23, align 8
  %24 = load i32, i32* @g_idx, align 4
  %25 = call i32 @git_index_add(i32 %24, %struct.TYPE_7__* %1)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8** %27, align 8
  %28 = load i32, i32* @g_idx, align 4
  %29 = call i32 @git_index_add(i32 %28, %struct.TYPE_7__* %1)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8** %31, align 8
  %32 = load i32, i32* @g_idx, align 4
  %33 = call i32 @git_index_add(i32 %32, %struct.TYPE_7__* %1)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8** %35, align 8
  %36 = load i32, i32* @g_idx, align 4
  %37 = call i32 @git_index_add(i32 %36, %struct.TYPE_7__* %1)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %40 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %41 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %42 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %43 = load i32, i32* @g_idx, align 4
  %44 = call i32 @git_index_add_bypath(i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i32, i32* @g_idx, align 4
  %47 = call i32 @git_index_add_bypath(i32 %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  %48 = call i32 @cl_git_pass(i32 %47)
  %49 = load i32, i32* @g_idx, align 4
  %50 = call i32 @git_index_add_bypath(i32 %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  %51 = call i32 @cl_git_pass(i32 %50)
  %52 = load i32, i32* @g_idx, align 4
  %53 = call i32 @git_index_add_bypath(i32 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  %54 = call i32 @cl_git_pass(i32 %53)
  %55 = load i32, i32* @g_idx, align 4
  %56 = call %struct.TYPE_7__* @git_index_get_bypath(i32 %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 0)
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %2, align 8
  %57 = call i32 @cl_assert(%struct.TYPE_7__* %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i8* %60)
  %62 = load i32, i32* @g_idx, align 4
  %63 = call %struct.TYPE_7__* @git_index_get_bypath(i32 %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 0)
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %2, align 8
  %64 = call i32 @cl_assert(%struct.TYPE_7__* %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i8* %67)
  %69 = load i32, i32* @g_idx, align 4
  %70 = call %struct.TYPE_7__* @git_index_get_bypath(i32 %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i32 0)
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %2, align 8
  %71 = call i32 @cl_assert(%struct.TYPE_7__* %70)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i8* %74)
  %76 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  %77 = load i32, i32* @g_idx, align 4
  %78 = call i32 @git_index_add_bypath(i32 %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0))
  %79 = call i32 @cl_git_pass(i32 %78)
  %80 = load i32, i32* @g_idx, align 4
  %81 = call %struct.TYPE_7__* @git_index_get_bypath(i32 %80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 0)
  store %struct.TYPE_7__* %81, %struct.TYPE_7__** %2, align 8
  %82 = call i32 @cl_assert(%struct.TYPE_7__* %81)
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i8* %85)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_repo_get_bool(i32, i8*) #2

declare dso_local i32 @clar__skip(...) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @git_index_add(i32, %struct.TYPE_7__*) #2

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #2

declare dso_local i32 @git_index_add_bypath(i32, i8*) #2

declare dso_local i32 @cl_assert(%struct.TYPE_7__*) #2

declare dso_local %struct.TYPE_7__* @git_index_get_bypath(i32, i8*, i32) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #2

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
