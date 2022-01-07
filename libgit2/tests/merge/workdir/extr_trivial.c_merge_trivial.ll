; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/workdir/extr_trivial.c_merge_trivial.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/workdir/extr_trivial.c_merge_trivial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@GIT_REFS_HEADS_DIR = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @merge_trivial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_trivial(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__, align 4
  %6 = alloca %struct.TYPE_9__, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [1 x i32*], align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = bitcast %struct.TYPE_10__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_10__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %11 = bitcast %struct.TYPE_9__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.TYPE_9__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %12 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @GIT_REFS_HEADS_DIR, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @git_buf_printf(%struct.TYPE_10__* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %14, i8* %15)
  %17 = load i32, i32* @repo, align 4
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @git_reference_symbolic_create(i32** %7, i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 1, i32* null)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* @repo, align 4
  %23 = call i32 @git_checkout_head(i32 %22, %struct.TYPE_9__* %6)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = call i32 @git_buf_clear(%struct.TYPE_10__* %5)
  %26 = load i32, i32* @GIT_REFS_HEADS_DIR, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @git_buf_printf(%struct.TYPE_10__* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %26, i8* %27)
  %29 = load i32, i32* @repo, align 4
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @git_reference_lookup(i32** %8, i32 %29, i32 %31)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = getelementptr inbounds [1 x i32*], [1 x i32*]* %9, i64 0, i64 0
  %35 = load i32, i32* @repo, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @git_annotated_commit_from_ref(i32** %34, i32 %35, i32* %36)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32, i32* @repo, align 4
  %40 = getelementptr inbounds [1 x i32*], [1 x i32*]* %9, i64 0, i64 0
  %41 = call i32 @git_merge(i32 %39, i32** %40, i32 1, i32* null, i32* null)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = call i32 @git_buf_dispose(%struct.TYPE_10__* %5)
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @git_reference_free(i32* %44)
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @git_reference_free(i32* %46)
  %48 = getelementptr inbounds [1 x i32*], [1 x i32*]* %9, i64 0, i64 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @git_annotated_commit_free(i32* %49)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_buf_printf(%struct.TYPE_10__*, i8*, i32, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_symbolic_create(i32**, i32, i8*, i32, i32, i32*) #2

declare dso_local i32 @git_checkout_head(i32, %struct.TYPE_9__*) #2

declare dso_local i32 @git_buf_clear(%struct.TYPE_10__*) #2

declare dso_local i32 @git_reference_lookup(i32**, i32, i32) #2

declare dso_local i32 @git_annotated_commit_from_ref(i32**, i32, i32*) #2

declare dso_local i32 @git_merge(i32, i32**, i32, i32*, i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_10__*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_annotated_commit_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
