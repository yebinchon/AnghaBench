; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_typechange.c_test_checkout_typechange__initialize.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_typechange.c_test_checkout_typechange__initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"typechanges\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"submod2_target\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"submod2_target/.gitted\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"submod2_target/.git\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_typechange__initialize() #0 {
  %1 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %1, i32* @g_repo, align 4
  %2 = call i32 @cl_fixture_sandbox(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @p_rename(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_fixture_sandbox(i8*) #1

declare dso_local i32 @p_rename(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
