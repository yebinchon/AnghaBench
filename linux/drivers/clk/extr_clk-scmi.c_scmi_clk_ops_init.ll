; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-scmi.c_scmi_clk_ops_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-scmi.c_scmi_clk_ops_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scmi_clk = type { %struct.TYPE_6__*, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i32, i32*, i32, i32 }

@scmi_clk_ops = common dso_local global i32 0, align 4
@CLK_GET_RATE_NOCACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.scmi_clk*)* @scmi_clk_ops_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scmi_clk_ops_init(%struct.device* %0, %struct.scmi_clk* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.scmi_clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_init_data, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.scmi_clk* %1, %struct.scmi_clk** %4, align 8
  %7 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 0
  %8 = load %struct.scmi_clk*, %struct.scmi_clk** %4, align 8
  %9 = getelementptr inbounds %struct.scmi_clk, %struct.scmi_clk* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 8
  %13 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 1
  store i32* @scmi_clk_ops, i32** %13, align 8
  %14 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 2
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 3
  %16 = load i32, i32* @CLK_GET_RATE_NOCACHE, align 4
  store i32 %16, i32* %15, align 4
  %17 = load %struct.scmi_clk*, %struct.scmi_clk** %4, align 8
  %18 = getelementptr inbounds %struct.scmi_clk, %struct.scmi_clk* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store %struct.clk_init_data* %6, %struct.clk_init_data** %19, align 8
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = load %struct.scmi_clk*, %struct.scmi_clk** %4, align 8
  %22 = getelementptr inbounds %struct.scmi_clk, %struct.scmi_clk* %21, i32 0, i32 1
  %23 = call i32 @devm_clk_hw_register(%struct.device* %20, %struct.TYPE_7__* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %2
  %27 = load %struct.scmi_clk*, %struct.scmi_clk** %4, align 8
  %28 = getelementptr inbounds %struct.scmi_clk, %struct.scmi_clk* %27, i32 0, i32 1
  %29 = load %struct.scmi_clk*, %struct.scmi_clk** %4, align 8
  %30 = getelementptr inbounds %struct.scmi_clk, %struct.scmi_clk* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.scmi_clk*, %struct.scmi_clk** %4, align 8
  %36 = getelementptr inbounds %struct.scmi_clk, %struct.scmi_clk* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @clk_hw_set_rate_range(%struct.TYPE_7__* %28, i32 %34, i32 %40)
  br label %42

42:                                               ; preds = %26, %2
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @devm_clk_hw_register(%struct.device*, %struct.TYPE_7__*) #1

declare dso_local i32 @clk_hw_set_rate_range(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
