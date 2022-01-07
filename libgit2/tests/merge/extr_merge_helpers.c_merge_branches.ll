; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/extr_merge_helpers.c_merge_branches.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/extr_merge_helpers.c_merge_branches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @merge_branches(i32* %0, i8* %1, i8* %2, i32* %3, %struct.TYPE_6__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_6__, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %10, align 8
  %15 = bitcast %struct.TYPE_6__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %16 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @git_reference_symbolic_create(i32** %11, i32* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %19, i32 1, i32* null)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @git_checkout_head(i32* %22, %struct.TYPE_6__* %14)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @git_reference_lookup(i32** %12, i32* %25, i8* %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 @git_annotated_commit_from_ref(i32** %13, i32* %29, i32* %30)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = call i32 @git_merge(i32* %33, i32** %13, i32 1, i32* %34, %struct.TYPE_6__* %35)
  %37 = call i32 @cl_git_pass(i32 %36)
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @git_reference_free(i32* %38)
  %40 = load i32*, i32** %12, align 8
  %41 = call i32 @git_reference_free(i32* %40)
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @git_annotated_commit_free(i32* %42)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_symbolic_create(i32**, i32*, i8*, i8*, i32, i32*) #2

declare dso_local i32 @git_checkout_head(i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @git_reference_lookup(i32**, i32*, i8*) #2

declare dso_local i32 @git_annotated_commit_from_ref(i32**, i32*, i32*) #2

declare dso_local i32 @git_merge(i32*, i32**, i32, i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_annotated_commit_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
