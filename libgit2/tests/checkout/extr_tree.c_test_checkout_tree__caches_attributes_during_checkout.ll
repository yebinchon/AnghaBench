; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__caches_attributes_during_checkout.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__caches_attributes_during_checkout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i8**, i32 }
%struct.TYPE_11__ = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@GIT_BUF_INIT = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c"ident1.txt\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ident2.txt\00", align 1
@__const.test_checkout_tree__caches_attributes_during_checkout.ident_paths = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0)], align 16
@update_attr_callback = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"refs/heads/ident\00", align 1
@GIT_OBJECT_ANY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"testrepo/ident1.txt\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"testrepo/ident2.txt\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"# $Id$\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"# $Id: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_tree__caches_attributes_during_checkout() #0 {
  %1 = alloca %struct.TYPE_10__, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__, align 4
  %5 = alloca %struct.TYPE_11__, align 4
  %6 = alloca [2 x i8*], align 16
  %7 = bitcast %struct.TYPE_10__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.TYPE_10__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 24, i1 false)
  store i32* null, i32** %3, align 8
  %8 = bitcast %struct.TYPE_11__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_11__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %9 = bitcast %struct.TYPE_11__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_11__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %10 = bitcast [2 x i8*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([2 x i8*]* @__const.test_checkout_tree__caches_attributes_during_checkout.ident_paths to i8*), i64 16, i1 false)
  %11 = load i32, i32* @update_attr_callback, align 4
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @g_repo, align 4
  %14 = call i32 @assert_on_branch(i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %15 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i8** %17, i8*** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  store i32 2, i32* %21, align 8
  %22 = load i32, i32* @g_repo, align 4
  %23 = call i32 @git_reference_name_to_id(i32* %2, i32 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32, i32* @g_repo, align 4
  %26 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %27 = call i32 @git_object_lookup(i32** %3, i32 %25, i32* %2, i32 %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32, i32* @g_repo, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @git_checkout_tree(i32 %29, i32* %30, %struct.TYPE_10__* %1)
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = call i32 @git_futils_readbuffer(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = call i32 @git_futils_readbuffer(%struct.TYPE_11__* %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cl_assert_equal_strn(i32 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 6)
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cl_assert_equal_strn(i32 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 6)
  %43 = load i32, i32* @g_repo, align 4
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @git_checkout_tree(i32 %43, i32* %44, %struct.TYPE_10__* %1)
  %46 = call i32 @cl_git_pass(i32 %45)
  %47 = call i32 @git_futils_readbuffer(%struct.TYPE_11__* %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %48 = call i32 @cl_git_pass(i32 %47)
  %49 = call i32 @git_futils_readbuffer(%struct.TYPE_11__* %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %50 = call i32 @cl_git_pass(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @cl_assert_equal_strn(i32 %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 7)
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @cl_assert_equal_strn(i32 %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 7)
  %57 = call i32 @git_buf_dispose(%struct.TYPE_11__* %4)
  %58 = call i32 @git_buf_dispose(%struct.TYPE_11__* %5)
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @git_object_free(i32* %59)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert_on_branch(i32, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_name_to_id(i32*, i32, i8*) #2

declare dso_local i32 @git_object_lookup(i32**, i32, i32*, i32) #2

declare dso_local i32 @git_checkout_tree(i32, i32*, %struct.TYPE_10__*) #2

declare dso_local i32 @git_futils_readbuffer(%struct.TYPE_11__*, i8*) #2

declare dso_local i32 @cl_assert_equal_strn(i32, i8*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_11__*) #2

declare dso_local i32 @git_object_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
