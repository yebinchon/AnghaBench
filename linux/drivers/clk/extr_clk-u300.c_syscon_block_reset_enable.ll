; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-u300.c_syscon_block_reset_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-u300.c_syscon_block_reset_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_syscon = type { i32, i32, i32 }

@syscon_resetreg_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_syscon*)* @syscon_block_reset_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @syscon_block_reset_enable(%struct.clk_syscon* %0) #0 {
  %2 = alloca %struct.clk_syscon*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.clk_syscon* %0, %struct.clk_syscon** %2, align 8
  %5 = load %struct.clk_syscon*, %struct.clk_syscon** %2, align 8
  %6 = getelementptr inbounds %struct.clk_syscon, %struct.clk_syscon* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %32

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @spin_lock_irqsave(i32* @syscon_resetreg_lock, i64 %11)
  %13 = load %struct.clk_syscon*, %struct.clk_syscon** %2, align 8
  %14 = getelementptr inbounds %struct.clk_syscon, %struct.clk_syscon* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @readw(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.clk_syscon*, %struct.clk_syscon** %2, align 8
  %18 = getelementptr inbounds %struct.clk_syscon, %struct.clk_syscon* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @BIT(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.clk_syscon*, %struct.clk_syscon** %2, align 8
  %25 = getelementptr inbounds %struct.clk_syscon, %struct.clk_syscon* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @writew(i32 %23, i32 %26)
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* @syscon_resetreg_lock, i64 %28)
  %30 = load %struct.clk_syscon*, %struct.clk_syscon** %2, align 8
  %31 = getelementptr inbounds %struct.clk_syscon, %struct.clk_syscon* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readw(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
