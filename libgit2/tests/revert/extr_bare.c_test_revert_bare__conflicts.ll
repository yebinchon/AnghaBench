; ModuleID = '/home/carl/AnghaBench/libgit2/tests/revert/extr_bare.c_test_revert_bare__conflicts.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/revert/extr_bare.c_test_revert_bare__conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_index_entry = type { i32, i8*, i32, i8* }

@.str = private unnamed_addr constant [41 x i8] c"7731926a337c4eaba1e2187d90ebfa0a93659382\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"file1.txt\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"4b8fcff56437e60f58e9a6bc630dd242ebf6ea2c\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"3a3ef367eaf3fe79effbfb0a56b269c04c2b59fe\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"0ab09ea6d4c3634bdf6c221626d8b6f7dd890767\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"file2.txt\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"f4e107c230d08a60fb419d19869f1f282b272d9c\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"file3.txt\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"0f5bfcf58c558d865da6be0281d7795993646cee\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"file6.txt\00", align 1
@__const.test_revert_bare__conflicts.merge_index_entries = private unnamed_addr constant [6 x %struct.merge_index_entry] [%struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0) }, %struct.merge_index_entry { i32 33188, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0) }], align 16
@.str.10 = private unnamed_addr constant [41 x i8] c"72333f47d4e83616630ff3b0ffe4c0faebcc3c45\00", align 1
@repo = common dso_local global i32 0, align 4
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_revert_bare__conflicts() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca [6 x %struct.merge_index_entry], align 16
  %7 = bitcast [6 x %struct.merge_index_entry]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([6 x %struct.merge_index_entry]* @__const.test_revert_bare__conflicts.merge_index_entries to i8*), i64 192, i1 false)
  %8 = call i32 @git_oid_fromstr(i32* %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  %9 = load i32, i32* @repo, align 4
  %10 = call i32 @git_repository_head(i32** %1, i32 %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %14 = call i32 @git_reference_peel(i32** %2, i32* %12, i32 %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @repo, align 4
  %17 = call i32 @git_commit_lookup(i32** %3, i32 %16, i32* %4)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32, i32* @repo, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @git_revert_commit(i32** %5, i32 %19, i32* %20, i32* %21, i32 0, i32* null)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @git_index_has_conflicts(i32* %24)
  %26 = call i32 @cl_assert(i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds [6 x %struct.merge_index_entry], [6 x %struct.merge_index_entry]* %6, i64 0, i64 0
  %29 = call i32 @merge_test_index(i32* %27, %struct.merge_index_entry* %28, i32 6)
  %30 = call i32 @cl_assert(i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @git_commit_free(i32* %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @git_commit_free(i32* %33)
  %35 = load i32*, i32** %1, align 8
  %36 = call i32 @git_reference_free(i32* %35)
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @git_index_free(i32* %37)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_head(i32**, i32) #2

declare dso_local i32 @git_reference_peel(i32**, i32*, i32) #2

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_revert_commit(i32**, i32, i32*, i32*, i32, i32*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_index_has_conflicts(i32*) #2

declare dso_local i32 @merge_test_index(i32*, %struct.merge_index_entry*, i32) #2

declare dso_local i32 @git_commit_free(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
