; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-u300.c_syscon_clk_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-u300.c_syscon_clk_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_syscon = type { i64, i32 }

@U300_SYSCON_SBCER_UART_CLK_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @syscon_clk_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @syscon_clk_unprepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_syscon*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %4 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %5 = call %struct.clk_syscon* @to_syscon(%struct.clk_hw* %4)
  store %struct.clk_syscon* %5, %struct.clk_syscon** %3, align 8
  %6 = load %struct.clk_syscon*, %struct.clk_syscon** %3, align 8
  %7 = getelementptr inbounds %struct.clk_syscon, %struct.clk_syscon* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @U300_SYSCON_SBCER_UART_CLK_EN, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %20

12:                                               ; preds = %1
  %13 = load %struct.clk_syscon*, %struct.clk_syscon** %3, align 8
  %14 = getelementptr inbounds %struct.clk_syscon, %struct.clk_syscon* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load %struct.clk_syscon*, %struct.clk_syscon** %3, align 8
  %19 = call i32 @syscon_block_reset_enable(%struct.clk_syscon* %18)
  br label %20

20:                                               ; preds = %11, %17, %12
  ret void
}

declare dso_local %struct.clk_syscon* @to_syscon(%struct.clk_hw*) #1

declare dso_local i32 @syscon_block_reset_enable(%struct.clk_syscon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
