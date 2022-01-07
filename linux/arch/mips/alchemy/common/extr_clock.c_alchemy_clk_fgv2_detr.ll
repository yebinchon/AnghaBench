; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_clock.c_alchemy_clk_fgv2_detr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_clock.c_alchemy_clk_fgv2_detr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i32 }
%struct.alchemy_fgcs_clk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*)* @alchemy_clk_fgv2_detr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alchemy_clk_fgv2_detr(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_rate_request*, align 8
  %5 = alloca %struct.alchemy_fgcs_clk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %4, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.alchemy_fgcs_clk* @to_fgcs_clk(%struct.clk_hw* %8)
  store %struct.alchemy_fgcs_clk* %9, %struct.alchemy_fgcs_clk** %5, align 8
  %10 = load %struct.alchemy_fgcs_clk*, %struct.alchemy_fgcs_clk** %5, align 8
  %11 = getelementptr inbounds %struct.alchemy_fgcs_clk, %struct.alchemy_fgcs_clk* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @alchemy_rdsys(i32 %12)
  %14 = and i32 %13, 1073741824
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  store i32 256, i32* %7, align 4
  br label %18

17:                                               ; preds = %2
  store i32 2, i32* %6, align 4
  store i32 512, i32* %7, align 4
  br label %18

18:                                               ; preds = %17, %16
  %19 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %20 = load %struct.clk_rate_request*, %struct.clk_rate_request** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @alchemy_clk_fgcs_detr(%struct.clk_hw* %19, %struct.clk_rate_request* %20, i32 %21, i32 %22)
  ret i32 %23
}

declare dso_local %struct.alchemy_fgcs_clk* @to_fgcs_clk(%struct.clk_hw*) #1

declare dso_local i32 @alchemy_rdsys(i32) #1

declare dso_local i32 @alchemy_clk_fgcs_detr(%struct.clk_hw*, %struct.clk_rate_request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
