; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__can_cancel_checkout_from_notify.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__can_cancel_checkout_from_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.checkout_cancel_at*, i32, i32 }
%struct.checkout_cancel_at = type { i8*, i32, i64 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"refs/heads/dir\00", align 1
@GIT_OBJECT_ANY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"new.txt\00", align 1
@GIT_CHECKOUT_NOTIFY_UPDATED = common dso_local global i32 0, align 4
@checkout_cancel_cb = common dso_local global i32 0, align 4
@GIT_CHECKOUT_FORCE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"testrepo/new.txt\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"testrepo/.git/CoNfIg\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"README\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_tree__can_cancel_checkout_from_notify() #0 {
  %1 = alloca %struct.checkout_cancel_at, align 8
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = bitcast %struct.TYPE_4__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 bitcast (%struct.TYPE_4__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 24, i1 false)
  store i32* null, i32** %4, align 8
  %6 = load i32, i32* @g_repo, align 4
  %7 = call i32 @assert_on_branch(i32 %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @g_repo, align 4
  %9 = call i32 @git_reference_name_to_id(i32* %3, i32 %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32, i32* @g_repo, align 4
  %12 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %13 = call i32 @git_object_lookup(i32** %4, i32 %11, i32* %3, i32 %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = getelementptr inbounds %struct.checkout_cancel_at, %struct.checkout_cancel_at* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %15, align 8
  %16 = getelementptr inbounds %struct.checkout_cancel_at, %struct.checkout_cancel_at* %1, i32 0, i32 1
  store i32 -5555, i32* %16, align 8
  %17 = getelementptr inbounds %struct.checkout_cancel_at, %struct.checkout_cancel_at* %1, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @GIT_CHECKOUT_NOTIFY_UPDATED, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 3
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @checkout_cancel_cb, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 2
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 1
  store %struct.checkout_cancel_at* %1, %struct.checkout_cancel_at** %22, align 8
  %23 = load i32, i32* @GIT_CHECKOUT_FORCE, align 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = call i64 @git_path_exists(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @cl_assert(i32 %28)
  %30 = load i32, i32* @g_repo, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @git_checkout_tree(i32 %30, i32* %31, %struct.TYPE_4__* %2)
  %33 = call i32 @cl_git_fail_with(i32 %32, i32 -5555)
  %34 = call i64 @git_path_exists(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @cl_assert(i32 %37)
  %39 = call i64 @git_path_exists(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %0
  %42 = getelementptr inbounds %struct.checkout_cancel_at, %struct.checkout_cancel_at* %1, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @cl_assert_equal_i(i32 3, i64 %43)
  br label %49

45:                                               ; preds = %0
  %46 = getelementptr inbounds %struct.checkout_cancel_at, %struct.checkout_cancel_at* %1, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @cl_assert_equal_i(i32 4, i64 %47)
  br label %49

49:                                               ; preds = %45, %41
  %50 = getelementptr inbounds %struct.checkout_cancel_at, %struct.checkout_cancel_at* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %50, align 8
  %51 = getelementptr inbounds %struct.checkout_cancel_at, %struct.checkout_cancel_at* %1, i32 0, i32 1
  store i32 123, i32* %51, align 8
  %52 = getelementptr inbounds %struct.checkout_cancel_at, %struct.checkout_cancel_at* %1, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* @g_repo, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @git_checkout_tree(i32 %53, i32* %54, %struct.TYPE_4__* %2)
  %56 = call i32 @cl_git_fail_with(i32 %55, i32 123)
  %57 = call i64 @git_path_exists(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %58 = icmp ne i64 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 @cl_assert(i32 %60)
  %62 = call i64 @git_path_exists(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %49
  %65 = getelementptr inbounds %struct.checkout_cancel_at, %struct.checkout_cancel_at* %1, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @cl_assert_equal_i(i32 4, i64 %66)
  br label %72

68:                                               ; preds = %49
  %69 = getelementptr inbounds %struct.checkout_cancel_at, %struct.checkout_cancel_at* %1, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @cl_assert_equal_i(i32 1, i64 %70)
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @git_object_free(i32* %73)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert_on_branch(i32, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_name_to_id(i32*, i32, i8*) #2

declare dso_local i32 @git_object_lookup(i32**, i32, i32*, i32) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i64 @git_path_exists(i8*) #2

declare dso_local i32 @cl_git_fail_with(i32, i32) #2

declare dso_local i32 @git_checkout_tree(i32, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i64) #2

declare dso_local i32 @git_object_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
