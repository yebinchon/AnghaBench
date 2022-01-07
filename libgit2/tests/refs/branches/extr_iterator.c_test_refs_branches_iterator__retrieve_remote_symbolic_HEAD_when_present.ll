; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_iterator.c_test_refs_branches_iterator__retrieve_remote_symbolic_HEAD_when_present.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_iterator.c_test_refs_branches_iterator__retrieve_remote_symbolic_HEAD_when_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expectations = type { i8*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"nulltoken/HEAD\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"nulltoken/master\00", align 1
@fake_remote = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"refs/remotes/nulltoken/HEAD\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"refs/remotes/nulltoken/master\00", align 1
@GIT_BRANCH_REMOTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_branches_iterator__retrieve_remote_symbolic_HEAD_when_present() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [3 x %struct.expectations], align 16
  %3 = bitcast [3 x %struct.expectations]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 48, i1 false)
  %4 = bitcast i8* %3 to [3 x %struct.expectations]*
  %5 = getelementptr inbounds [3 x %struct.expectations], [3 x %struct.expectations]* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.expectations, %struct.expectations* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8** %6, align 16
  %7 = getelementptr inbounds [3 x %struct.expectations], [3 x %struct.expectations]* %4, i32 0, i32 1
  %8 = getelementptr inbounds %struct.expectations, %struct.expectations* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8** %8, align 16
  %9 = load i32, i32* @fake_remote, align 4
  %10 = call i32 @git_reference_free(i32 %9)
  %11 = load i32, i32* @repo, align 4
  %12 = call i32 @git_reference_symbolic_create(i32* @fake_remote, i32 %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 0, i32* null)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @GIT_BRANCH_REMOTE, align 4
  %15 = call i32 @assert_retrieval(i32 %14, i32 3)
  %16 = load i32, i32* @repo, align 4
  %17 = load i32, i32* @GIT_BRANCH_REMOTE, align 4
  %18 = call i32 @git_branch_iterator_new(i32** %1, i32 %16, i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = getelementptr inbounds [3 x %struct.expectations], [3 x %struct.expectations]* %2, i64 0, i64 0
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @contains_branches(%struct.expectations* %20, i32* %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @git_branch_iterator_free(i32* %23)
  %25 = getelementptr inbounds [3 x %struct.expectations], [3 x %struct.expectations]* %2, i64 0, i64 0
  %26 = call i32 @assert_branch_has_been_found(%struct.expectations* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %27 = getelementptr inbounds [3 x %struct.expectations], [3 x %struct.expectations]* %2, i64 0, i64 0
  %28 = call i32 @assert_branch_has_been_found(%struct.expectations* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @git_reference_free(i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_symbolic_create(i32*, i32, i8*, i8*, i32, i32*) #2

declare dso_local i32 @assert_retrieval(i32, i32) #2

declare dso_local i32 @git_branch_iterator_new(i32**, i32, i32) #2

declare dso_local i32 @contains_branches(%struct.expectations*, i32*) #2

declare dso_local i32 @git_branch_iterator_free(i32*) #2

declare dso_local i32 @assert_branch_has_been_found(%struct.expectations*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
