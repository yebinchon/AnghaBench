; ModuleID = '/home/carl/AnghaBench/libgit2/tests/apply/extr_check.c_test_apply_check__generate_diff.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/apply/extr_check.c_test_apply_check__generate_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_DIFF_OPTIONS_INIT = common dso_local global i32 0, align 4
@GIT_APPLY_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [41 x i8] c"539bd011c4822c560c1d17cab095006b7a10f707\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"7c7bf85e978f1d18c0566f702d2cb7766b9c8d4f\00", align 1
@repo = common dso_local global i32 0, align 4
@GIT_APPLY_CHECK = common dso_local global i32 0, align 4
@GIT_APPLY_LOCATION_BOTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_apply_check__generate_diff() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 4
  %10 = load i32, i32* @GIT_DIFF_OPTIONS_INIT, align 4
  store i32 %10, i32* %8, align 4
  %11 = bitcast %struct.TYPE_4__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_APPLY_OPTIONS_INIT to i8*), i64 4, i1 false)
  %12 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = call i32 @git_oid_fromstr(i32* %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @repo, align 4
  %17 = call i32 @git_commit_lookup(i32** %3, i32 %16, i32* %1)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32, i32* @repo, align 4
  %20 = call i32 @git_commit_lookup(i32** %4, i32 %19, i32* %2)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @git_commit_tree(i32** %5, i32* %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @git_commit_tree(i32** %6, i32* %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32, i32* @GIT_APPLY_CHECK, align 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @repo, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @git_diff_tree_to_tree(i32** %7, i32 %32, i32* %33, i32* %34, i32* %8)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load i32, i32* @repo, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* @GIT_APPLY_LOCATION_BOTH, align 4
  %40 = call i32 @git_apply(i32 %37, i32* %38, i32 %39, %struct.TYPE_4__* %9)
  %41 = call i32 @cl_git_pass(i32 %40)
  %42 = load i32, i32* @repo, align 4
  %43 = call i32 @validate_index_unchanged(i32 %42)
  %44 = load i32, i32* @repo, align 4
  %45 = call i32 @validate_workdir_unchanged(i32 %44)
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @git_diff_free(i32* %46)
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @git_tree_free(i32* %48)
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @git_tree_free(i32* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @git_commit_free(i32* %52)
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @git_commit_free(i32* %54)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #2

declare dso_local i32 @git_commit_tree(i32**, i32*) #2

declare dso_local i32 @git_diff_tree_to_tree(i32**, i32, i32*, i32*, i32*) #2

declare dso_local i32 @git_apply(i32, i32*, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @validate_index_unchanged(i32) #2

declare dso_local i32 @validate_workdir_unchanged(i32) #2

declare dso_local i32 @git_diff_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

declare dso_local i32 @git_commit_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
