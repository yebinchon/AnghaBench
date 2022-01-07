; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/extr_driver.c_test_merge_driver__not_configured_driver_falls_back.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/extr_driver.c_test_merge_driver__not_configured_driver_falls_back.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"notfound\00", align 1
@repo_index = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"automergeable.txt\00", align 1
@automergeable_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_merge_driver__not_configured_driver_falls_back() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = call i32 (...) @test_drivers_unregister()
  %3 = call i32 @set_gitattributes_to(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 (...) @merge_branch()
  %5 = load i32, i32* @repo_index, align 4
  %6 = call %struct.TYPE_4__* @git_index_get_bypath(i32 %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %1, align 8
  %7 = call i32 @cl_assert(%struct.TYPE_4__* %6)
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call i32 @cl_assert_equal_oid(i32* @automergeable_id, i32* %9)
  %11 = call i32 (...) @test_drivers_register()
  ret void
}

declare dso_local i32 @test_drivers_unregister(...) #1

declare dso_local i32 @set_gitattributes_to(i8*) #1

declare dso_local i32 @merge_branch(...) #1

declare dso_local i32 @cl_assert(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @git_index_get_bypath(i32, i8*, i32) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

declare dso_local i32 @test_drivers_register(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
