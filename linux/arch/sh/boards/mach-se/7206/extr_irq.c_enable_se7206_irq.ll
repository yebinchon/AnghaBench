; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/boards/mach-se/7206/extr_irq.c_enable_se7206_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/boards/mach-se/7206/extr_irq.c_enable_se7206_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@INTC_IPR01 = common dso_local global i32 0, align 4
@INTMSK0 = common dso_local global i32 0, align 4
@INTMSK1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @enable_se7206_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_se7206_irq(%struct.irq_data* %0) #0 {
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
  %15 = shl i32 1, %14
  %16 = trunc i32 %15 to i16
  store i16 %16, i16* %5, align 2
  %17 = load i32, i32* @INTC_IPR01, align 4
  %18 = call zeroext i16 @__raw_readw(i32 %17)
  store i16 %18, i16* %4, align 2
  %19 = load i16, i16* %5, align 2
  %20 = zext i16 %19 to i32
  %21 = load i16, i16* %4, align 2
  %22 = zext i16 %21 to i32
  %23 = or i32 %22, %20
  %24 = trunc i32 %23 to i16
  store i16 %24, i16* %4, align 2
  %25 = load i16, i16* %4, align 2
  %26 = load i32, i32* @INTC_IPR01, align 4
  %27 = call i32 @__raw_writew(i16 zeroext %25, i32 %26)
  %28 = load i32, i32* @INTMSK0, align 4
  %29 = call zeroext i16 @__raw_readw(i32 %28)
  store i16 %29, i16* %6, align 2
  %30 = load i32, i32* @INTMSK1, align 4
  %31 = call zeroext i16 @__raw_readw(i32 %30)
  store i16 %31, i16* %7, align 2
  %32 = load i32, i32* %3, align 4
  switch i32 %32, label %52 [
    i32 130, label %33
    i32 129, label %38
    i32 128, label %43
  ]

33:                                               ; preds = %1
  %34 = load i16, i16* %6, align 2
  %35 = zext i16 %34 to i32
  %36 = and i32 %35, -17
  %37 = trunc i32 %36 to i16
  store i16 %37, i16* %6, align 2
  br label %52

38:                                               ; preds = %1
  %39 = load i16, i16* %6, align 2
  %40 = zext i16 %39 to i32
  %41 = and i32 %40, -16
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %6, align 2
  br label %52

43:                                               ; preds = %1
  %44 = load i16, i16* %6, align 2
  %45 = zext i16 %44 to i32
  %46 = and i32 %45, -3841
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %6, align 2
  %48 = load i16, i16* %7, align 2
  %49 = zext i16 %48 to i32
  %50 = and i32 %49, -256
  %51 = trunc i32 %50 to i16
  store i16 %51, i16* %7, align 2
  br label %52

52:                                               ; preds = %1, %43, %38, %33
  %53 = load i16, i16* %6, align 2
  %54 = load i32, i32* @INTMSK0, align 4
  %55 = call i32 @__raw_writew(i16 zeroext %53, i32 %54)
  %56 = load i16, i16* %7, align 2
  %57 = load i32, i32* @INTMSK1, align 4
  %58 = call i32 @__raw_writew(i16 zeroext %56, i32 %57)
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
