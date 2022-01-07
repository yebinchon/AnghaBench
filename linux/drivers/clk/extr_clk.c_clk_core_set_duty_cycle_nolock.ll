; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_set_duty_cycle_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_set_duty_cycle_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_core = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.clk_duty*)* }
%struct.clk_duty = type { i32 }

@prepare_lock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_core*, %struct.clk_duty*)* @clk_core_set_duty_cycle_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_core_set_duty_cycle_nolock(%struct.clk_core* %0, %struct.clk_duty* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_core*, align 8
  %5 = alloca %struct.clk_duty*, align 8
  %6 = alloca i32, align 4
  store %struct.clk_core* %0, %struct.clk_core** %4, align 8
  store %struct.clk_duty* %1, %struct.clk_duty** %5, align 8
  %7 = call i32 @lockdep_assert_held(i32* @prepare_lock)
  %8 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %9 = call i64 @clk_core_rate_is_protected(%struct.clk_core* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %51

14:                                               ; preds = %2
  %15 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %16 = load %struct.clk_duty*, %struct.clk_duty** %5, align 8
  %17 = call i32 @trace_clk_set_duty_cycle(%struct.clk_core* %15, %struct.clk_duty* %16)
  %18 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %19 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i32, %struct.clk_duty*)*, i32 (i32, %struct.clk_duty*)** %21, align 8
  %23 = icmp ne i32 (i32, %struct.clk_duty*)* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %14
  %25 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %26 = load %struct.clk_duty*, %struct.clk_duty** %5, align 8
  %27 = call i32 @clk_core_set_duty_cycle_parent_nolock(%struct.clk_core* %25, %struct.clk_duty* %26)
  store i32 %27, i32* %3, align 4
  br label %51

28:                                               ; preds = %14
  %29 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %30 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (i32, %struct.clk_duty*)*, i32 (i32, %struct.clk_duty*)** %32, align 8
  %34 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %35 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.clk_duty*, %struct.clk_duty** %5, align 8
  %38 = call i32 %33(i32 %36, %struct.clk_duty* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %28
  %42 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %43 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %42, i32 0, i32 0
  %44 = load %struct.clk_duty*, %struct.clk_duty** %5, align 8
  %45 = call i32 @memcpy(i32* %43, %struct.clk_duty* %44, i32 4)
  br label %46

46:                                               ; preds = %41, %28
  %47 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %48 = load %struct.clk_duty*, %struct.clk_duty** %5, align 8
  %49 = call i32 @trace_clk_set_duty_cycle_complete(%struct.clk_core* %47, %struct.clk_duty* %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %24, %11
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @clk_core_rate_is_protected(%struct.clk_core*) #1

declare dso_local i32 @trace_clk_set_duty_cycle(%struct.clk_core*, %struct.clk_duty*) #1

declare dso_local i32 @clk_core_set_duty_cycle_parent_nolock(%struct.clk_core*, %struct.clk_duty*) #1

declare dso_local i32 @memcpy(i32*, %struct.clk_duty*, i32) #1

declare dso_local i32 @trace_clk_set_duty_cycle_complete(%struct.clk_core*, %struct.clk_duty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
