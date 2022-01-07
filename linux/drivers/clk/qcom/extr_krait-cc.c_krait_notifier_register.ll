; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_krait-cc.c_krait_notifier_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_krait-cc.c_krait_notifier_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.clk = type { i32 }
%struct.krait_mux_clk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@krait_notifier_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to register clock notifier: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.clk*, %struct.krait_mux_clk*)* @krait_notifier_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @krait_notifier_register(%struct.device* %0, %struct.clk* %1, %struct.krait_mux_clk* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca %struct.krait_mux_clk*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.clk* %1, %struct.clk** %5, align 8
  store %struct.krait_mux_clk* %2, %struct.krait_mux_clk** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @krait_notifier_cb, align 4
  %9 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %6, align 8
  %10 = getelementptr inbounds %struct.krait_mux_clk, %struct.krait_mux_clk* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  %12 = load %struct.clk*, %struct.clk** %5, align 8
  %13 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %6, align 8
  %14 = getelementptr inbounds %struct.krait_mux_clk, %struct.krait_mux_clk* %13, i32 0, i32 0
  %15 = call i32 @clk_notifier_register(%struct.clk* %12, %struct.TYPE_2__* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %18, %3
  %23 = load i32, i32* %7, align 4
  ret i32 %23
}

declare dso_local i32 @clk_notifier_register(%struct.clk*, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
