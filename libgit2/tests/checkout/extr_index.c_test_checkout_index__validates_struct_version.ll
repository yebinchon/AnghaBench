; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_index.c_test_checkout_index__validates_struct_version.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_index.c_test_checkout_index__validates_struct_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@GIT_CHECKOUT_OPTIONS_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@g_repo = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_index__validates_struct_version() #0 {
  %1 = alloca %struct.TYPE_7__, align 4
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = bitcast %struct.TYPE_7__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.TYPE_7__* @GIT_CHECKOUT_OPTIONS_INIT to i8*), i64 4, i1 false)
  %4 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i32 1024, i32* %4, align 4
  %5 = load i32, i32* @g_repo, align 4
  %6 = call i32 @git_checkout_index(i32 %5, i32* null, %struct.TYPE_7__* %1)
  %7 = call i32 @cl_git_fail(i32 %6)
  %8 = call %struct.TYPE_6__* (...) @git_error_last()
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %2, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %13 = call i32 @cl_assert_equal_i(i32 %11, i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = call i32 (...) @git_error_clear()
  %16 = load i32, i32* @g_repo, align 4
  %17 = call i32 @git_checkout_index(i32 %16, i32* null, %struct.TYPE_7__* %1)
  %18 = call i32 @cl_git_fail(i32 %17)
  %19 = call %struct.TYPE_6__* (...) @git_error_last()
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %2, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %24 = call i32 @cl_assert_equal_i(i32 %22, i32 %23)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @git_checkout_index(i32, i32*, %struct.TYPE_7__*) #2

declare dso_local %struct.TYPE_6__* @git_error_last(...) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_error_clear(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
