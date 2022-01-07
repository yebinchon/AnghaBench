; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_status.c_test_submodule_status__unchanged.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_status.c_test_submodule_status__unchanged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"sm_unchanged\00", align 1
@GIT_SUBMODULE_STATUS_IN_HEAD = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_IN_INDEX = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_IN_CONFIG = common dso_local global i32 0, align 4
@GIT_SUBMODULE_STATUS_IN_WD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_submodule_status__unchanged() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @g_repo, align 4
  %4 = call i32 @get_submodule_status(i32 %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_HEAD, align 4
  %6 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_INDEX, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_CONFIG, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @GIT_SUBMODULE_STATUS_IN_WD, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @GIT_SUBMODULE_STATUS_IS_UNMODIFIED(i32 %12)
  %14 = call i32 @cl_assert(i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* %1, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @cl_assert(i32 %18)
  ret void
}

declare dso_local i32 @get_submodule_status(i32, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @GIT_SUBMODULE_STATUS_IS_UNMODIFIED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
