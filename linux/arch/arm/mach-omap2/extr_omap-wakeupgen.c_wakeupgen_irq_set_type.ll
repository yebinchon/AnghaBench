; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap-wakeupgen.c_wakeupgen_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap-wakeupgen.c_wakeupgen_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }

@IRQ_TYPE_LEVEL_MASK = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@SYS_NIRQ1_EXT_SYS_IRQ_1 = common dso_local global i64 0, align 8
@SYS_NIRQ2_EXT_SYS_IRQ_2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"wakeupgen: irq%li polarity inverted in dts\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @wakeupgen_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wakeupgen_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %23 [
    i32 128, label %7
    i32 129, label %15
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @IRQ_TYPE_LEVEL_MASK, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %24

15:                                               ; preds = %2
  %16 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %24

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %23, %15, %7
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %29 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SYS_NIRQ1_EXT_SYS_IRQ_1, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %35 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SYS_NIRQ2_EXT_SYS_IRQ_2, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %41 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %42)
  br label %44

44:                                               ; preds = %39, %33, %27, %24
  %45 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @irq_chip_set_type_parent(%struct.irq_data* %45, i32 %46)
  ret i32 %47
}

declare dso_local i32 @pr_warn(i8*, i64) #1

declare dso_local i32 @irq_chip_set_type_parent(%struct.irq_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
