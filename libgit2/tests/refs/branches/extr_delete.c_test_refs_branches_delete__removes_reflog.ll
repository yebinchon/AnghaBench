; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_delete.c_test_refs_branches_delete__removes_reflog.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_delete.c_test_refs_branches_delete__removes_reflog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"Me\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"user@example.com\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"refs/heads/track-local\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"track-local\00", align 1
@GIT_BRANCH_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_branches_delete__removes_reflog() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca i32*, align 8
  %5 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 4, i1 false)
  %6 = call i32 @git_signature_now(i32** %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32, i32* @repo, align 4
  %9 = call i32 @git_reflog_read(i32** %2, i32 %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @git_reflog_append(i32* %11, %struct.TYPE_5__* %3, i32* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i64 @git_reflog_entrycount(i32* %15)
  %17 = icmp sgt i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @cl_assert(i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @git_signature_free(i32* %20)
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @git_reflog_free(i32* %22)
  %24 = load i32, i32* @repo, align 4
  %25 = load i32, i32* @GIT_BRANCH_LOCAL, align 4
  %26 = call i32 @git_branch_lookup(i32** %1, i32 %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @git_branch_delete(i32* %28)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %1, align 8
  %32 = call i32 @git_reference_free(i32* %31)
  %33 = load i32, i32* @repo, align 4
  %34 = call i64 @git_reference_has_log(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %35 = call i32 @cl_assert_equal_i(i32 0, i64 %34)
  %36 = load i32, i32* @repo, align 4
  %37 = call i32 @git_reflog_read(i32** %2, i32 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32*, i32** %2, align 8
  %40 = call i64 @git_reflog_entrycount(i32* %39)
  %41 = call i32 @cl_assert_equal_i(i32 0, i64 %40)
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @git_reflog_free(i32* %42)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_signature_now(i32**, i8*, i8*) #2

declare dso_local i32 @git_reflog_read(i32**, i32, i8*) #2

declare dso_local i32 @git_reflog_append(i32*, %struct.TYPE_5__*, i32*, i8*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i64 @git_reflog_entrycount(i32*) #2

declare dso_local i32 @git_signature_free(i32*) #2

declare dso_local i32 @git_reflog_free(i32*) #2

declare dso_local i32 @git_branch_lookup(i32**, i32, i8*, i32) #2

declare dso_local i32 @git_branch_delete(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i64) #2

declare dso_local i64 @git_reference_has_log(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
