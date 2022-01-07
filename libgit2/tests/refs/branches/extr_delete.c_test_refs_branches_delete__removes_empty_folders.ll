; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_delete.c_test_refs_branches_delete__removes_empty_folders.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_delete.c_test_refs_branches_delete__removes_empty_folders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@repo = common dso_local global i32 0, align 4
@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"a65fedf39aefe402d3bb6e24df4d4f5fe4547750\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"some/deep/ref\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"Me\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"user@example.com\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"refs/heads/some/deep/ref\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"refs/heads/some/deep\00", align 1
@GIT_REFLOG_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_branches_delete__removes_empty_folders() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.TYPE_7__, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @repo, align 4
  %11 = call i8* @git_repository_commondir(i32 %10)
  store i8* %11, i8** %1, align 8
  %12 = bitcast %struct.TYPE_7__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %14, i32* %9, align 4
  %15 = call i32 @git_oid_fromstr(%struct.TYPE_7__* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32, i32* @repo, align 4
  %18 = call i32 @git_commit_lookup(i32** %3, i32 %17, %struct.TYPE_7__* %2)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* @repo, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @git_branch_create(i32** %4, i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %21, i32 0)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @git_commit_free(i32* %24)
  %26 = call i32 @git_signature_now(i32** %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32, i32* @repo, align 4
  %29 = call i32 @git_reflog_read(i32** %5, i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @git_reflog_append(i32* %31, %struct.TYPE_7__* %6, i32* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = call i64 @git_reflog_entrycount(i32* %35)
  %37 = icmp sgt i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @cl_assert(i32 %38)
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @git_signature_free(i32* %40)
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @git_reflog_free(i32* %42)
  %44 = load i8*, i8** %1, align 8
  %45 = call i32 @git_buf_joinpath(i32* %8, i8* %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = load i8*, i8** %1, align 8
  %48 = load i32, i32* @GIT_REFLOG_DIR, align 4
  %49 = call i32 @git_buf_join3(i32* %9, i8 signext 47, i8* %47, i32 %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %50 = call i32 @cl_git_pass(i32 %49)
  %51 = call i32 @git_buf_cstr(i32* %8)
  %52 = call i32 @git_path_exists(i32 %51)
  %53 = icmp eq i32 %52, 1
  %54 = zext i1 %53 to i32
  %55 = call i32 @cl_assert(i32 %54)
  %56 = call i32 @git_buf_cstr(i32* %9)
  %57 = call i32 @git_path_exists(i32 %56)
  %58 = icmp eq i32 %57, 1
  %59 = zext i1 %58 to i32
  %60 = call i32 @cl_assert(i32 %59)
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @git_branch_delete(i32* %61)
  %63 = call i32 @cl_git_pass(i32 %62)
  %64 = call i32 @git_buf_cstr(i32* %8)
  %65 = call i32 @git_path_exists(i32 %64)
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @cl_assert(i32 %67)
  %69 = call i32 @git_buf_cstr(i32* %9)
  %70 = call i32 @git_path_exists(i32 %69)
  %71 = icmp eq i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @cl_assert(i32 %72)
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @git_reference_free(i32* %74)
  %76 = call i32 @git_buf_dispose(i32* %8)
  %77 = call i32 @git_buf_dispose(i32* %9)
  ret void
}

declare dso_local i8* @git_repository_commondir(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @git_commit_lookup(i32**, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @git_branch_create(i32**, i32, i8*, i32*, i32) #1

declare dso_local i32 @git_commit_free(i32*) #1

declare dso_local i32 @git_signature_now(i32**, i8*, i8*) #1

declare dso_local i32 @git_reflog_read(i32**, i32, i8*) #1

declare dso_local i32 @git_reflog_append(i32*, %struct.TYPE_7__*, i32*, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_reflog_entrycount(i32*) #1

declare dso_local i32 @git_signature_free(i32*) #1

declare dso_local i32 @git_reflog_free(i32*) #1

declare dso_local i32 @git_buf_joinpath(i32*, i8*, i8*) #1

declare dso_local i32 @git_buf_join3(i32*, i8 signext, i8*, i32, i8*) #1

declare dso_local i32 @git_path_exists(i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_branch_delete(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
