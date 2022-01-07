; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/boards/mach-se/7206/extr_irq.c_disable_se7206_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/boards/mach-se/7206/extr_irq.c_disable_se7206_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@INTC_IPR01 = common dso_local global i32 0, align 4
@INTMSK0 = common dso_local global i32 0, align 4
@INTMSK1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @disable_se7206_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_se7206_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = sub i32 130, %11
  %13 = sub i32 3, %12
  %14 = mul i32 4, %13
  %15 = shl i32 15, %14
  %16 = xor i32 65535, %15
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* %5, align 2
  %18 = load i32, i32* @INTC_IPR01, align 4
  %19 = call zeroext i16 @__raw_readw(i32 %18)
  store i16 %19, i16* %4, align 2
  %20 = load i16, i16* %5, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* %4, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, %21
  %25 = trunc i32 %24 to i16
  store i16 %25, i16* %4, align 2
  %26 = load i16, i16* %4, align 2
  %27 = load i32, i32* @INTC_IPR01, align 4
  %28 = call i32 @__raw_writew(i16 zeroext %26, i32 %27)
  %29 = load i32, i32* @INTMSK0, align 4
  %30 = call zeroext i16 @__raw_readw(i32 %29)
  store i16 %30, i16* %6, align 2
  %31 = load i32, i32* @INTMSK1, align 4
  %32 = call zeroext i16 @__raw_readw(i32 %31)
  store i16 %32, i16* %7, align 2
  %33 = load i32, i32* %3, align 4
  switch i32 %33, label %53 [
    i32 130, label %34
    i32 129, label %39
    i32 128, label %44
  ]

34:                                               ; preds = %1
  %35 = load i16, i16* %6, align 2
  %36 = zext i16 %35 to i32
  %37 = or i32 %36, 16
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %6, align 2
  br label %53

39:                                               ; preds = %1
  %40 = load i16, i16* %6, align 2
  %41 = zext i16 %40 to i32
  %42 = or i32 %41, 15
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* %6, align 2
  br label %53

44:                                               ; preds = %1
  %45 = load i16, i16* %6, align 2
  %46 = zext i16 %45 to i32
  %47 = or i32 %46, 3840
  %48 = trunc i32 %47 to i16
  store i16 %48, i16* %6, align 2
  %49 = load i16, i16* %7, align 2
  %50 = zext i16 %49 to i32
  %51 = or i32 %50, 255
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %7, align 2
  br label %53

53:                                               ; preds = %1, %44, %39, %34
  %54 = load i16, i16* %6, align 2
  %55 = load i32, i32* @INTMSK0, align 4
  %56 = call i32 @__raw_writew(i16 zeroext %54, i32 %55)
  %57 = load i16, i16* %7, align 2
  %58 = load i32, i32* @INTMSK1, align 4
  %59 = call i32 @__raw_writew(i16 zeroext %57, i32 %58)
  ret void
}

declare dso_local zeroext i16 @__raw_readw(i32) #1

declare dso_local i32 @__raw_writew(i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
