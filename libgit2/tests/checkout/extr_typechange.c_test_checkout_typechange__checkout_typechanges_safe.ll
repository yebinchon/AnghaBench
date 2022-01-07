; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_typechange.c_test_checkout_typechange__checkout_typechanges_safe.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_typechange.c_test_checkout_typechange__checkout_typechanges_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@g_typechange_oids = common dso_local global i32** null, align 8
@g_repo = common dso_local global i32 0, align 4
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@GIT_CHECKOUT_SAFE = common dso_local global i32 0, align 4
@g_typechange_empty = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"typechanges\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"typechanges/a\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"typechanges/b\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"typechanges/c\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"typechanges/d\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"typechanges/e\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_typechange__checkout_typechanges_safe() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = bitcast %struct.TYPE_4__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %93, %0
  %6 = load i32**, i32*** @g_typechange_oids, align 8
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32*, i32** %6, i64 %8
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %96

12:                                               ; preds = %5
  %13 = load i32, i32* @g_repo, align 4
  %14 = load i32**, i32*** @g_typechange_oids, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @git_revparse_single(i32** %2, i32 %13, i32* %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* %1, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  %24 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  br label %27

25:                                               ; preds = %12
  %26 = load i32, i32* @GIT_CHECKOUT_SAFE, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @g_repo, align 4
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @git_checkout_tree(i32 %30, i32* %31, %struct.TYPE_4__* %3)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32, i32* @g_repo, align 4
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @git_object_id(i32* %35)
  %37 = call i32 @git_repository_set_head_detached(i32 %34, i32 %36)
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = load i32, i32* @g_repo, align 4
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @git_object_id(i32* %40)
  %42 = call i32 @assert_workdir_matches_tree(i32 %39, i32 %41, i32* null, i32 1)
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @git_object_free(i32* %43)
  %45 = load i32*, i32** @g_typechange_empty, align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %27
  %52 = call i32 @git_path_isdir(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %53 = call i32 @cl_assert(i32 %52)
  %54 = call i32 @git_path_exists(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %55 = call i32 @cl_assert(i32 %54)
  %56 = call i32 @git_path_exists(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i32 @cl_assert(i32 %56)
  %58 = call i32 @git_path_exists(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %59 = call i32 @cl_assert(i32 %58)
  %60 = call i32 @git_path_exists(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %61 = call i32 @cl_assert(i32 %60)
  %62 = call i32 @git_path_exists(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %63 = call i32 @cl_assert(i32 %62)
  br label %92

64:                                               ; preds = %27
  %65 = call i32 @git_path_isdir(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %66 = call i32 @cl_assert(i32 %65)
  %67 = call i32 @git_path_exists(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i32 @cl_assert(i32 %70)
  %72 = call i32 @git_path_exists(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i32 @cl_assert(i32 %75)
  %77 = call i32 @git_path_exists(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @cl_assert(i32 %80)
  %82 = call i32 @git_path_exists(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 @cl_assert(i32 %85)
  %87 = call i32 @git_path_exists(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i32 @cl_assert(i32 %90)
  br label %92

92:                                               ; preds = %64, %51
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %1, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %1, align 4
  br label %5

96:                                               ; preds = %5
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_revparse_single(i32**, i32, i32*) #2

declare dso_local i32 @git_checkout_tree(i32, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @git_repository_set_head_detached(i32, i32) #2

declare dso_local i32 @git_object_id(i32*) #2

declare dso_local i32 @assert_workdir_matches_tree(i32, i32, i32*, i32) #2

declare dso_local i32 @git_object_free(i32*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_path_isdir(i8*) #2

declare dso_local i32 @git_path_exists(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
