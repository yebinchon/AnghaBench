; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_timerwheel.c_test_lib__common__timerwheel_c.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_timerwheel.c_test_lib__common__timerwheel_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"slot calculation\00", align 1
@test_slot_calc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"add fixed timers\00", align 1
@test_add_fixed_timers = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"add random timers\00", align 1
@test_add_rand_timers = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"del fixed timers\00", align 1
@test_del_timers = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"test out-of-range timer\00", align 1
@test_invalid_timer = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"exhaustive\00", align 1
@test_exhaustive = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@test_overflow = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"get_wake_at\00", align 1
@test_get_wake_at = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"multiple_cascade_in_sparse_wheels\00", align 1
@test_multiple_cascade_in_sparse_wheels = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_lib__common__timerwheel_c() #0 {
  %1 = load i32, i32* @test_slot_calc, align 4
  %2 = call i32 @subtest(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %1)
  %3 = load i32, i32* @test_add_fixed_timers, align 4
  %4 = call i32 @subtest(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* @test_add_rand_timers, align 4
  %6 = call i32 @subtest(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @test_del_timers, align 4
  %8 = call i32 @subtest(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @test_invalid_timer, align 4
  %10 = call i32 @subtest(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @test_exhaustive, align 4
  %12 = call i32 @subtest(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @test_overflow, align 4
  %14 = call i32 @subtest(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @test_get_wake_at, align 4
  %16 = call i32 @subtest(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @test_multiple_cascade_in_sparse_wheels, align 4
  %18 = call i32 @subtest(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %17)
  ret void
}

declare dso_local i32 @subtest(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
