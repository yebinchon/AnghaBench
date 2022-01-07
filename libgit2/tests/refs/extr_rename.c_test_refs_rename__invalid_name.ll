; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_rename.c_test_refs_rename__invalid_name.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_rename.c_test_refs_rename__invalid_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@g_repo = common dso_local global i32 0, align 4
@packed_test_head_name = common dso_local global i32 0, align 4
@GIT_EINVALIDSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Hello! I'm a very invalid name.\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"i-will-sudo-you\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_rename__invalid_name() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = load i32, i32* @g_repo, align 4
  %4 = load i32, i32* @packed_test_head_name, align 4
  %5 = call i32 @git_reference_lookup(%struct.TYPE_6__** %1, i32 %3, i32 %4)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %9 = call i32 @git_reference_rename(%struct.TYPE_6__** %2, %struct.TYPE_6__* %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 0, i32* null)
  %10 = call i32 @cl_assert_equal_i(i32 %7, i32 %9)
  %11 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %13 = call i32 @git_reference_rename(%struct.TYPE_6__** %2, %struct.TYPE_6__* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* null)
  %14 = call i32 @cl_assert_equal_i(i32 %11, i32 %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %16 = call i32 @git_reference_free(%struct.TYPE_6__* %15)
  %17 = load i32, i32* @g_repo, align 4
  %18 = load i32, i32* @packed_test_head_name, align 4
  %19 = call i32 @git_reference_lookup(%struct.TYPE_6__** %1, i32 %17, i32 %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @packed_test_head_name, align 4
  %25 = call i32 @cl_assert_equal_s(i32 %23, i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %27 = call i32 @git_reference_free(%struct.TYPE_6__* %26)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(%struct.TYPE_6__**, i32, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_reference_rename(%struct.TYPE_6__**, %struct.TYPE_6__*, i8*, i32, i32*) #1

declare dso_local i32 @git_reference_free(%struct.TYPE_6__*) #1

declare dso_local i32 @cl_assert_equal_s(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
