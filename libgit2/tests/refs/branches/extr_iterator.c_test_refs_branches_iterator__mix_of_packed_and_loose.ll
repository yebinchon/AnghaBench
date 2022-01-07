; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_iterator.c_test_refs_branches_iterator__mix_of_packed_and_loose.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_iterator.c_test_refs_branches_iterator__mix_of_packed_and_loose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expectations = type { i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"origin/HEAD\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"origin/master\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"origin/packed\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"testrepo2\00", align 1
@GIT_BRANCH_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_branches_iterator__mix_of_packed_and_loose() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca [5 x %struct.expectations], align 16
  %3 = alloca i32*, align 8
  %4 = bitcast [5 x %struct.expectations]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 80, i1 false)
  %5 = bitcast i8* %4 to [5 x %struct.expectations]*
  %6 = getelementptr inbounds [5 x %struct.expectations], [5 x %struct.expectations]* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.expectations, %struct.expectations* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8** %7, align 16
  %8 = getelementptr inbounds [5 x %struct.expectations], [5 x %struct.expectations]* %5, i32 0, i32 1
  %9 = getelementptr inbounds %struct.expectations, %struct.expectations* %8, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8** %9, align 16
  %10 = getelementptr inbounds [5 x %struct.expectations], [5 x %struct.expectations]* %5, i32 0, i32 2
  %11 = getelementptr inbounds %struct.expectations, %struct.expectations* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8** %11, align 16
  %12 = getelementptr inbounds [5 x %struct.expectations], [5 x %struct.expectations]* %5, i32 0, i32 3
  %13 = getelementptr inbounds %struct.expectations, %struct.expectations* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i8** %13, align 16
  %14 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i32* %14, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* @GIT_BRANCH_ALL, align 4
  %17 = call i32 @git_branch_iterator_new(i32** %1, i32* %15, i32 %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = getelementptr inbounds [5 x %struct.expectations], [5 x %struct.expectations]* %2, i64 0, i64 0
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @contains_branches(%struct.expectations* %19, i32* %20)
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @git_branch_iterator_free(i32* %22)
  %24 = getelementptr inbounds [5 x %struct.expectations], [5 x %struct.expectations]* %2, i64 0, i64 0
  %25 = call i32 @assert_branch_has_been_found(%struct.expectations* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %26 = getelementptr inbounds [5 x %struct.expectations], [5 x %struct.expectations]* %2, i64 0, i64 0
  %27 = call i32 @assert_branch_has_been_found(%struct.expectations* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %28 = getelementptr inbounds [5 x %struct.expectations], [5 x %struct.expectations]* %2, i64 0, i64 0
  %29 = call i32 @assert_branch_has_been_found(%struct.expectations* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %30 = getelementptr inbounds [5 x %struct.expectations], [5 x %struct.expectations]* %2, i64 0, i64 0
  %31 = call i32 @assert_branch_has_been_found(%struct.expectations* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @cl_git_sandbox_init(i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_branch_iterator_new(i32**, i32*, i32) #2

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
