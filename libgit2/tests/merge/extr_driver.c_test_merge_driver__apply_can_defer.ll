; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/extr_driver.c_test_merge_driver__apply_can_defer.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/extr_driver.c_test_merge_driver__apply_can_defer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"defer\00", align 1
@test_driver_defer_apply = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@repo_index = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"automergeable.txt\00", align 1
@automergeable_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_merge_driver__apply_can_defer() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = call i32 @git_merge_driver_register(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @test_driver_defer_apply, i32 0, i32 0))
  %3 = call i32 @cl_git_pass(i32 %2)
  %4 = call i32 @set_gitattributes_to(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 (...) @merge_branch()
  %6 = load i32, i32* @repo_index, align 4
  %7 = call %struct.TYPE_5__* @git_index_get_bypath(i32 %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %1, align 8
  %8 = call i32 @cl_assert(%struct.TYPE_5__* %7)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = call i32 @cl_assert_equal_oid(i32* @automergeable_id, i32* %10)
  %12 = call i32 @git_merge_driver_unregister(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_merge_driver_register(i8*, i32*) #1

declare dso_local i32 @set_gitattributes_to(i8*) #1

declare dso_local i32 @merge_branch(...) #1

declare dso_local i32 @cl_assert(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @git_index_get_bypath(i32, i8*, i32) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

declare dso_local i32 @git_merge_driver_unregister(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
