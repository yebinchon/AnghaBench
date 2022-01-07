; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_rename.c_test_refs_rename__force_loose_packed.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_rename.c_test_refs_rename__force_loose_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@g_repo = common dso_local global i32 0, align 4
@packed_head_name = common dso_local global i32 0, align 4
@packed_test_head_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_rename__force_loose_packed() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @g_repo, align 4
  %5 = load i32, i32* @packed_head_name, align 4
  %6 = call i32 @git_reference_lookup(%struct.TYPE_7__** %1, i32 %4, i32 %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %9 = call i32 @git_reference_target(%struct.TYPE_7__* %8)
  %10 = call i32 @git_oid_cpy(i32* %3, i32 %9)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %12 = load i32, i32* @packed_test_head_name, align 4
  %13 = call i32 @git_reference_rename(%struct.TYPE_7__** %2, %struct.TYPE_7__* %11, i32 %12, i32 1, i32* null)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %16 = call i32 @git_reference_free(%struct.TYPE_7__* %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = call i32 @git_reference_free(%struct.TYPE_7__* %17)
  %19 = load i32, i32* @g_repo, align 4
  %20 = load i32, i32* @packed_test_head_name, align 4
  %21 = call i32 @git_reference_lookup(%struct.TYPE_7__** %1, i32 %19, i32 %20)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @packed_test_head_name, align 4
  %27 = call i32 @cl_assert_equal_s(i32 %25, i32 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %29 = call i32 @git_reference_target(%struct.TYPE_7__* %28)
  %30 = call i32 @cl_assert_equal_oid(i32* %3, i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %32 = call i32 @git_reference_free(%struct.TYPE_7__* %31)
  %33 = load i32, i32* @g_repo, align 4
  %34 = load i32, i32* @packed_head_name, align 4
  %35 = call i32 @git_reference_lookup(%struct.TYPE_7__** %1, i32 %33, i32 %34)
  %36 = call i32 @cl_git_fail(i32 %35)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(%struct.TYPE_7__**, i32, i32) #1

declare dso_local i32 @git_oid_cpy(i32*, i32) #1

declare dso_local i32 @git_reference_target(%struct.TYPE_7__*) #1

declare dso_local i32 @git_reference_rename(%struct.TYPE_7__**, %struct.TYPE_7__*, i32, i32, i32*) #1

declare dso_local i32 @git_reference_free(%struct.TYPE_7__*) #1

declare dso_local i32 @cl_assert_equal_s(i32, i32) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32) #1

declare dso_local i32 @cl_git_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
