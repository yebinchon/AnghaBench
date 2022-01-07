; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_r9a06g032-clocks.c_r9a06g032_clk_gate_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_r9a06g032-clocks.c_r9a06g032_clk_gate_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r9a06g032_priv = type { i32 }
%struct.r9a06g032_gate = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r9a06g032_priv*, %struct.r9a06g032_gate*, i32)* @r9a06g032_clk_gate_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r9a06g032_clk_gate_set(%struct.r9a06g032_priv* %0, %struct.r9a06g032_gate* %1, i32 %2) #0 {
  %4 = alloca %struct.r9a06g032_priv*, align 8
  %5 = alloca %struct.r9a06g032_gate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.r9a06g032_priv* %0, %struct.r9a06g032_priv** %4, align 8
  store %struct.r9a06g032_gate* %1, %struct.r9a06g032_gate** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.r9a06g032_gate*, %struct.r9a06g032_gate** %5, align 8
  %9 = getelementptr inbounds %struct.r9a06g032_gate, %struct.r9a06g032_gate* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.r9a06g032_priv*, %struct.r9a06g032_priv** %4, align 8
  %16 = getelementptr inbounds %struct.r9a06g032_priv, %struct.r9a06g032_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.r9a06g032_priv*, %struct.r9a06g032_priv** %4, align 8
  %20 = load %struct.r9a06g032_gate*, %struct.r9a06g032_gate** %5, align 8
  %21 = getelementptr inbounds %struct.r9a06g032_gate, %struct.r9a06g032_gate* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @clk_rdesc_set(%struct.r9a06g032_priv* %19, i64 %22, i32 %23)
  %25 = load %struct.r9a06g032_gate*, %struct.r9a06g032_gate** %5, align 8
  %26 = getelementptr inbounds %struct.r9a06g032_gate, %struct.r9a06g032_gate* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = load %struct.r9a06g032_priv*, %struct.r9a06g032_priv** %4, align 8
  %31 = load %struct.r9a06g032_gate*, %struct.r9a06g032_gate** %5, align 8
  %32 = getelementptr inbounds %struct.r9a06g032_gate, %struct.r9a06g032_gate* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @clk_rdesc_set(%struct.r9a06g032_priv* %30, i64 %33, i32 1)
  br label %35

35:                                               ; preds = %29, %3
  %36 = load %struct.r9a06g032_priv*, %struct.r9a06g032_priv** %4, align 8
  %37 = getelementptr inbounds %struct.r9a06g032_priv, %struct.r9a06g032_priv* %36, i32 0, i32 0
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = call i32 @udelay(i32 5)
  %41 = load %struct.r9a06g032_gate*, %struct.r9a06g032_gate** %5, align 8
  %42 = getelementptr inbounds %struct.r9a06g032_gate, %struct.r9a06g032_gate* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %35
  %46 = load %struct.r9a06g032_gate*, %struct.r9a06g032_gate** %5, align 8
  %47 = getelementptr inbounds %struct.r9a06g032_gate, %struct.r9a06g032_gate* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %86

50:                                               ; preds = %45, %35
  %51 = load %struct.r9a06g032_priv*, %struct.r9a06g032_priv** %4, align 8
  %52 = getelementptr inbounds %struct.r9a06g032_priv, %struct.r9a06g032_priv* %51, i32 0, i32 0
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.r9a06g032_gate*, %struct.r9a06g032_gate** %5, align 8
  %56 = getelementptr inbounds %struct.r9a06g032_gate, %struct.r9a06g032_gate* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %50
  %60 = load %struct.r9a06g032_priv*, %struct.r9a06g032_priv** %4, align 8
  %61 = load %struct.r9a06g032_gate*, %struct.r9a06g032_gate** %5, align 8
  %62 = getelementptr inbounds %struct.r9a06g032_gate, %struct.r9a06g032_gate* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @clk_rdesc_set(%struct.r9a06g032_priv* %60, i64 %63, i32 %64)
  br label %66

66:                                               ; preds = %59, %50
  %67 = load %struct.r9a06g032_gate*, %struct.r9a06g032_gate** %5, align 8
  %68 = getelementptr inbounds %struct.r9a06g032_gate, %struct.r9a06g032_gate* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load %struct.r9a06g032_priv*, %struct.r9a06g032_priv** %4, align 8
  %73 = load %struct.r9a06g032_gate*, %struct.r9a06g032_gate** %5, align 8
  %74 = getelementptr inbounds %struct.r9a06g032_gate, %struct.r9a06g032_gate* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i32 @clk_rdesc_set(%struct.r9a06g032_priv* %72, i64 %75, i32 %79)
  br label %81

81:                                               ; preds = %71, %66
  %82 = load %struct.r9a06g032_priv*, %struct.r9a06g032_priv** %4, align 8
  %83 = getelementptr inbounds %struct.r9a06g032_priv, %struct.r9a06g032_priv* %82, i32 0, i32 0
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  br label %86

86:                                               ; preds = %81, %45
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @clk_rdesc_set(%struct.r9a06g032_priv*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
