; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_bypath.c_test_index_bypath__add_honors_existing_case_3.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_bypath.c_test_index_bypath__add_honors_existing_case_3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"core.ignorecase\00", align 1
@GIT_FILEMODE_BLOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"f990a25a74d1a8281ce2ab018ea8df66795cd60b\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"just_a_dir/filea.txt\00", align 1
@g_idx = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Just_A_Dir/fileB.txt\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"just_A_DIR/FILEC.txt\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Just_a_DIR/FileD.txt\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"submod2/JuSt_A_DiR/fILEE.txt\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"This is a file\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"just_a_dir/fILEE.txt\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"JUST_A_DIR/fILEE.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_bypath__add_honors_existing_case_3() #0 {
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
  %31 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %32 = load i32, i32* @g_idx, align 4
  %33 = call i32 @git_index_add_bypath(i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32, i32* @g_idx, align 4
  %36 = call %struct.TYPE_7__* @git_index_get_bypath(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 0)
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %2, align 8
  %37 = call i32 @cl_assert(%struct.TYPE_7__* %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %40)
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

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
