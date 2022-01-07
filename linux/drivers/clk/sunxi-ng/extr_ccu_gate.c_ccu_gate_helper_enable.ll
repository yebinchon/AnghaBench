; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_gate.c_ccu_gate_helper_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi-ng/extr_ccu_gate.c_ccu_gate_helper_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_common = type { i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccu_gate_helper_enable(%struct.ccu_common* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccu_common*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ccu_common* %0, %struct.ccu_common** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

11:                                               ; preds = %2
  %12 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %13 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32 %14, i64 %15)
  %17 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %18 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %21 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %29 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %32 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = call i32 @writel(i32 %27, i64 %34)
  %36 = load %struct.ccu_common*, %struct.ccu_common** %4, align 8
  %37 = getelementptr inbounds %struct.ccu_common, %struct.ccu_common* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32 %38, i64 %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %11, %10
  %42 = load i32, i32* %3, align 4
  ret i32 %42
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
