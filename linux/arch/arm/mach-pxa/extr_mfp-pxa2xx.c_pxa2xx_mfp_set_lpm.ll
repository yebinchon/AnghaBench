; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_mfp-pxa2xx.c_pxa2xx_mfp_set_lpm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_mfp-pxa2xx.c_pxa2xx_mfp_set_lpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@gpio_desc = common dso_local global %struct.TYPE_2__* null, align 8
@MFP_LPM_STATE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pxa2xx_mfp_set_lpm(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @__mfp_validate(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %33

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @local_irq_save(i64 %14)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gpio_desc, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @MFP_LPM_STATE_MASK, align 8
  %24 = xor i64 %23, -1
  %25 = and i64 %22, %24
  %26 = load i64, i64* %4, align 8
  %27 = or i64 %25, %26
  store i64 %27, i64* %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @__mfp_config_gpio(i32 %28, i64 %29)
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @local_irq_restore(i64 %31)
  br label %33

33:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @__mfp_validate(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @__mfp_config_gpio(i32, i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
