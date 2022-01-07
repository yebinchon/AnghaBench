; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_icase.c_test_checkout_icase__ignores_unstaged_casechange.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_icase.c_test_checkout_icase__ignores_unstaged_casechange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@GIT_RESET_HARD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"testrepo/branch_file.txt\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"testrepo/Branch_File.txt\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"refs/heads/br2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_icase__ignores_unstaged_casechange() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__, align 4
  %6 = bitcast %struct.TYPE_4__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %7 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @repo, align 4
  %10 = call i32 @git_reference_lookup_resolved(i32** %1, i32 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 100)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32, i32* @repo, align 4
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @git_reference_target(i32* %13)
  %15 = call i32 @git_commit_lookup(i32** %3, i32 %12, i32 %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32, i32* @repo, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @GIT_RESET_HARD, align 4
  %20 = call i32 @git_reset(i32 %17, i32* %18, i32 %19, i32* null)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = call i32 @cl_rename(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %23 = load i32, i32* @repo, align 4
  %24 = call i32 @git_reference_lookup_resolved(i32** %2, i32 %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 100)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32, i32* @repo, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @git_reference_target(i32* %27)
  %29 = call i32 @git_commit_lookup(i32** %4, i32 %26, i32 %28)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32, i32* @repo, align 4
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @git_checkout_tree(i32 %31, i32* %32, %struct.TYPE_4__* %5)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @git_commit_free(i32* %35)
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @git_commit_free(i32* %37)
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @git_reference_free(i32* %39)
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @git_reference_free(i32* %41)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_lookup_resolved(i32**, i32, i8*, i32) #2

declare dso_local i32 @git_commit_lookup(i32**, i32, i32) #2

declare dso_local i32 @git_reference_target(i32*) #2

declare dso_local i32 @git_reset(i32, i32*, i32, i32*) #2

declare dso_local i32 @cl_rename(i8*, i8*) #2

declare dso_local i32 @git_checkout_tree(i32, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @git_commit_free(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
