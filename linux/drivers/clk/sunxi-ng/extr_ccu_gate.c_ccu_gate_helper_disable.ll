; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_gate.c_ccu_gate_helper_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_gate.c_ccu_gate_helper_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_common = type { i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccu_gate_helper_disable(%struct.ccu_common* %0, i32 %1) #0 {
  %3 = alloca %struct.ccu_common*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ccu_common* %0, %struct.ccu_common** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %41

10:                                               ; preds = %2
  %11 = load %struct.ccu_common*, %struct.ccu_common** %3, align 8
  %12 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32 %13, i64 %14)
  %16 = load %struct.ccu_common*, %struct.ccu_common** %3, align 8
  %17 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ccu_common*, %struct.ccu_common** %3, align 8
  %20 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = load %struct.ccu_common*, %struct.ccu_common** %3, align 8
  %29 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ccu_common*, %struct.ccu_common** %3, align 8
  %32 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = call i32 @writel(i32 %27, i64 %34)
  %36 = load %struct.ccu_common*, %struct.ccu_common** %3, align 8
  %37 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32 %38, i64 %39)
  br label %41

41:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
