; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_crlf.c_test_checkout_crlf__autocrlf_false_index_size_is_unfiltered_size.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_crlf.c_test_checkout_crlf__autocrlf_false_index_size_is_unfiltered_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"core.autocrlf\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"all-lf\00", align 1
@ALL_LF_TEXT_RAW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"all-crlf\00", align 1
@ALL_CRLF_TEXT_RAW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_crlf__autocrlf_false_index_size_is_unfiltered_size() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = bitcast %struct.TYPE_7__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %5 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @g_repo, align 4
  %8 = call i32 @cl_repo_set_bool(i32 %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0)
  %9 = load i32, i32* @g_repo, align 4
  %10 = call i32 @git_repository_index(i32** %1, i32 %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @tick_index(i32* %11)
  %13 = load i32, i32* @g_repo, align 4
  %14 = call i32 @git_checkout_head(i32 %13, %struct.TYPE_7__* %3)
  %15 = load i32*, i32** %1, align 8
  %16 = call %struct.TYPE_6__* @git_index_get_bypath(i32* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %2, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @cl_assert(i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @ALL_LF_TEXT_RAW, align 4
  %24 = call i64 @strlen(i32 %23)
  %25 = icmp eq i64 %22, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @cl_assert(i32 %26)
  %28 = load i32*, i32** %1, align 8
  %29 = call %struct.TYPE_6__* @git_index_get_bypath(i32* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %2, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @cl_assert(i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @ALL_CRLF_TEXT_RAW, align 4
  %37 = call i64 @strlen(i32 %36)
  %38 = icmp eq i64 %35, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @cl_assert(i32 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = call i32 @git_index_free(i32* %41)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_repo_set_bool(i32, i8*, i32) #2

declare dso_local i32 @git_repository_index(i32**, i32) #2

declare dso_local i32 @tick_index(i32*) #2

declare dso_local i32 @git_checkout_head(i32, %struct.TYPE_7__*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local %struct.TYPE_6__* @git_index_get_bypath(i32*, i8*, i32) #2

declare dso_local i64 @strlen(i32) #2

declare dso_local i32 @git_index_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
