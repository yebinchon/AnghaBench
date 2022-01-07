; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/ts5500/extr_ts5500.c_ts5500_adc_convert.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/ts5500/extr_ts5500.c_ts5500_adc_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TS5500_ADC_CONV_INIT_LSB_ADDR = common dso_local global i32 0, align 4
@TS5500_ADC_CONV_DELAY = common dso_local global i32 0, align 4
@TS5500_ADC_CONV_BUSY_ADDR = common dso_local global i32 0, align 4
@TS5500_ADC_CONV_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TS5500_ADC_CONV_MSB_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ts5500_adc_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts5500_adc_convert(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, 31
  %8 = load i32, i32* @TS5500_ADC_CONV_INIT_LSB_ADDR, align 4
  %9 = call i32 @outb(i32 %7, i32 %8)
  %10 = load i32, i32* @TS5500_ADC_CONV_DELAY, align 4
  %11 = call i32 @udelay(i32 %10)
  %12 = load i32, i32* @TS5500_ADC_CONV_BUSY_ADDR, align 4
  %13 = call i32 @inb(i32 %12)
  %14 = load i32, i32* @TS5500_ADC_CONV_BUSY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %29

20:                                               ; preds = %1
  %21 = load i32, i32* @TS5500_ADC_CONV_INIT_LSB_ADDR, align 4
  %22 = call i32 @inb(i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @TS5500_ADC_CONV_MSB_ADDR, align 4
  %24 = call i32 @inb(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 %25, 8
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %20, %17
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
