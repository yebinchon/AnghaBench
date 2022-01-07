; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c64xx/extr_common.c_s3c_irq_demux_eint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c64xx/extr_common.c_s3c_irq_demux_eint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S3C64XX_EINT0PEND = common dso_local global i32 0, align 4
@S3C64XX_EINT0MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @s3c_irq_demux_eint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_irq_demux_eint(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @S3C64XX_EINT0PEND, align 4
  %9 = call i32 @__raw_readl(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @S3C64XX_EINT0MASK, align 4
  %11 = call i32 @__raw_readl(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %5, align 4
  %18 = lshr i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %3, align 4
  %21 = sub i32 %19, %20
  %22 = add i32 %21, 1
  %23 = shl i32 1, %22
  %24 = sub nsw i32 %23, 1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @IRQ_EINT(i32 %27)
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %44, %2
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @IRQ_EINT(i32 %31)
  %33 = icmp ule i32 %30, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @generic_handle_irq(i32 %39)
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i32, i32* %5, align 4
  %43 = lshr i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %29

47:                                               ; preds = %29
  ret void
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @IRQ_EINT(i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
