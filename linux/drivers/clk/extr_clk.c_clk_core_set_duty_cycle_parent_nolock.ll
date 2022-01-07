; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_set_duty_cycle_parent_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_set_duty_cycle_parent_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_core = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.clk_duty = type { i32 }

@CLK_DUTY_CYCLE_PARENT = common dso_local global i32 0, align 4
@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_core*, %struct.clk_duty*)* @clk_core_set_duty_cycle_parent_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_core_set_duty_cycle_parent_nolock(%struct.clk_core* %0, %struct.clk_duty* %1) #0 {
  %3 = alloca %struct.clk_core*, align 8
  %4 = alloca %struct.clk_duty*, align 8
  %5 = alloca i32, align 4
  store %struct.clk_core* %0, %struct.clk_core** %3, align 8
  store %struct.clk_duty* %1, %struct.clk_duty** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %7 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %32

10:                                               ; preds = %2
  %11 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %12 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CLK_DUTY_CYCLE_PARENT, align 4
  %15 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %10
  %20 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %21 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load %struct.clk_duty*, %struct.clk_duty** %4, align 8
  %24 = call i32 @clk_core_set_duty_cycle_nolock(%struct.TYPE_2__* %22, %struct.clk_duty* %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %26 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %25, i32 0, i32 2
  %27 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %28 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @memcpy(i32* %26, i32* %30, i32 4)
  br label %32

32:                                               ; preds = %19, %10, %2
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @clk_core_set_duty_cycle_nolock(%struct.TYPE_2__*, %struct.clk_duty*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
