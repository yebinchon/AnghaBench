; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-krait.c___krait_mux_set_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-krait.c___krait_mux_set_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krait_mux_clk = type { i32, i32, i32, i64 }

@krait_clock_reg_lock = common dso_local global i32 0, align 4
@LPL_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.krait_mux_clk*, i32)* @__krait_mux_set_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__krait_mux_set_sel(%struct.krait_mux_clk* %0, i32 %1) #0 {
  %3 = alloca %struct.krait_mux_clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.krait_mux_clk* %0, %struct.krait_mux_clk** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @krait_clock_reg_lock, i64 %7)
  %9 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %3, align 8
  %10 = getelementptr inbounds %struct.krait_mux_clk, %struct.krait_mux_clk* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @krait_get_l2_indirect_reg(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %3, align 8
  %14 = getelementptr inbounds %struct.krait_mux_clk, %struct.krait_mux_clk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %3, align 8
  %17 = getelementptr inbounds %struct.krait_mux_clk, %struct.krait_mux_clk* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %15, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %3, align 8
  %25 = getelementptr inbounds %struct.krait_mux_clk, %struct.krait_mux_clk* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %23, %26
  %28 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %3, align 8
  %29 = getelementptr inbounds %struct.krait_mux_clk, %struct.krait_mux_clk* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %27, %30
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %3, align 8
  %35 = getelementptr inbounds %struct.krait_mux_clk, %struct.krait_mux_clk* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %2
  %39 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %3, align 8
  %40 = getelementptr inbounds %struct.krait_mux_clk, %struct.krait_mux_clk* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %3, align 8
  %43 = getelementptr inbounds %struct.krait_mux_clk, %struct.krait_mux_clk* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @LPL_SHIFT, align 4
  %46 = add nsw i32 %44, %45
  %47 = shl i32 %41, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %3, align 8
  %53 = getelementptr inbounds %struct.krait_mux_clk, %struct.krait_mux_clk* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %51, %54
  %56 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %3, align 8
  %57 = getelementptr inbounds %struct.krait_mux_clk, %struct.krait_mux_clk* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @LPL_SHIFT, align 4
  %60 = add nsw i32 %58, %59
  %61 = shl i32 %55, %60
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %38, %2
  %65 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %3, align 8
  %66 = getelementptr inbounds %struct.krait_mux_clk, %struct.krait_mux_clk* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @krait_set_l2_indirect_reg(i32 %67, i32 %68)
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* @krait_clock_reg_lock, i64 %70)
  %72 = call i32 (...) @mb()
  %73 = call i32 @udelay(i32 1)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @krait_get_l2_indirect_reg(i32) #1

declare dso_local i32 @krait_set_l2_indirect_reg(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
