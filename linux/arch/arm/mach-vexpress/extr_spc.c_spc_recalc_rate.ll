; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-vexpress/extr_spc.c_spc_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-vexpress/extr_spc.c_spc_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_spc = type { i32 }

@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @spc_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @spc_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk_spc*, align 8
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %9 = call %struct.clk_spc* @to_clk_spc(%struct.clk_hw* %8)
  store %struct.clk_spc* %9, %struct.clk_spc** %6, align 8
  %10 = load %struct.clk_spc*, %struct.clk_spc** %6, align 8
  %11 = getelementptr inbounds %struct.clk_spc, %struct.clk_spc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @ve_spc_get_performance(i32 %12, i32* %7)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i64, i64* @EIO, align 8
  %17 = sub i64 0, %16
  store i64 %17, i64* %3, align 8
  br label %22

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = mul nsw i32 %19, 1000
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %3, align 8
  br label %22

22:                                               ; preds = %18, %15
  %23 = load i64, i64* %3, align 8
  ret i64 %23
}

declare dso_local %struct.clk_spc* @to_clk_spc(%struct.clk_hw*) #1

declare dso_local i64 @ve_spc_get_performance(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
