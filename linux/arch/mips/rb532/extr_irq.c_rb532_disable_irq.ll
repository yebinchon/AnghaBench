; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/rb532/extr_irq.c_rb532_disable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/rb532/extr_irq.c_rb532_disable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }
%struct.irq_data = type { i32 }

@GROUP0_IRQ_BASE = common dso_local global i32 0, align 4
@intr_group = common dso_local global %struct.TYPE_2__* null, align 8
@GPIO_MAPPED_IRQ_GROUP = common dso_local global i32 0, align 4
@GROUP4_IRQ_BASE = common dso_local global i32 0, align 4
@GPIO_MAPPED_IRQ_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @rb532_disable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb532_disable_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @GROUP0_IRQ_BASE, align 4
  %14 = sub i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @disable_local_irq(i32 %18)
  br label %69

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  %22 = ashr i32 %21, 5
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 31
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = shl i32 1, %25
  store i32 %26, i32* %4, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intr_group, align 8
  %28 = load i32, i32* %3, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @READ_MASK(i32* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @WRITE_MASK(i32* %38, i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @GPIO_MAPPED_IRQ_GROUP, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %20
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @GROUP4_IRQ_BASE, align 4
  %47 = add nsw i32 %46, 13
  %48 = icmp ule i32 %45, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = load i64, i64* @GPIO_MAPPED_IRQ_BASE, align 8
  %53 = sub nsw i64 %51, %52
  %54 = call i32 @rb532_gpio_set_istat(i32 0, i64 %53)
  br label %55

55:                                               ; preds = %49, %44, %20
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intr_group, align 8
  %58 = load i32, i32* %3, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %56, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @group_to_ip(i32 %65)
  %67 = call i32 @disable_local_irq(i32 %66)
  br label %68

68:                                               ; preds = %64, %55
  br label %69

69:                                               ; preds = %68, %17
  ret void
}

declare dso_local i32 @disable_local_irq(i32) #1

declare dso_local i32 @READ_MASK(i32*) #1

declare dso_local i32 @WRITE_MASK(i32*, i32) #1

declare dso_local i32 @rb532_gpio_set_istat(i32, i64) #1

declare dso_local i32 @group_to_ip(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
