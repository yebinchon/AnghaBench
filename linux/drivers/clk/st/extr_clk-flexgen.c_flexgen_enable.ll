; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/st/extr_clk-flexgen.c_flexgen_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/st/extr_clk-flexgen.c_flexgen_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.clk_hw*)* }
%struct.clk_hw = type { i32 }
%struct.flexgen = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.clk_hw }
%struct.TYPE_4__ = type { %struct.clk_hw }

@clk_gate_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [28 x i8] c"%s: flexgen output enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @flexgen_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexgen_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.flexgen*, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.clk_hw*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.flexgen* @to_flexgen(%struct.clk_hw* %6)
  store %struct.flexgen* %7, %struct.flexgen** %3, align 8
  %8 = load %struct.flexgen*, %struct.flexgen** %3, align 8
  %9 = getelementptr inbounds %struct.flexgen, %struct.flexgen* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.clk_hw* %10, %struct.clk_hw** %4, align 8
  %11 = load %struct.flexgen*, %struct.flexgen** %3, align 8
  %12 = getelementptr inbounds %struct.flexgen, %struct.flexgen* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.clk_hw* %13, %struct.clk_hw** %5, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %15 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %16 = call i32 @__clk_hw_set_clk(%struct.clk_hw* %14, %struct.clk_hw* %15)
  %17 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %18 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %19 = call i32 @__clk_hw_set_clk(%struct.clk_hw* %17, %struct.clk_hw* %18)
  %20 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @clk_gate_ops, i32 0, i32 0), align 8
  %21 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %22 = call i32 %20(%struct.clk_hw* %21)
  %23 = load i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*)** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @clk_gate_ops, i32 0, i32 0), align 8
  %24 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %25 = call i32 %23(%struct.clk_hw* %24)
  %26 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %27 = call i32 @clk_hw_get_name(%struct.clk_hw* %26)
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %27)
  ret i32 0
}

declare dso_local %struct.flexgen* @to_flexgen(%struct.clk_hw*) #1

declare dso_local i32 @__clk_hw_set_clk(%struct.clk_hw*, %struct.clk_hw*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @clk_hw_get_name(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
