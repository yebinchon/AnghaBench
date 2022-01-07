; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_pc8736x_gpio.c_pc8736x_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_pc8736x_gpio.c_pc8736x_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@pc8736x_gpio_base = common dso_local global i64 0, align 8
@port_offset = common dso_local global i64* null, align 8
@PORT_IN = common dso_local global i64 0, align 8
@pdev = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"_gpio_get(%d from %x bit %d) == val %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pc8736x_gpio_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pc8736x_gpio_get(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = lshr i32 %6, 3
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = and i32 %8, 7
  store i32 %9, i32* %4, align 4
  %10 = load i64, i64* @pc8736x_gpio_base, align 8
  %11 = load i64*, i64** @port_offset, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %10, %15
  %17 = load i64, i64* @PORT_IN, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @inb_p(i64 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = ashr i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 1
  store i32 %24, i32* %5, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pdev, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %2, align 4
  %28 = load i64, i64* @pc8736x_gpio_base, align 8
  %29 = load i64*, i64** @port_offset, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %28, %33
  %35 = load i64, i64* @PORT_IN, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @dev_dbg(i32* %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @inb_p(i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
