; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/b53/extr_b53_spi.c_b53_spi_probe.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/b53/extr_b53_spi.c_b53_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.b53_device = type { i64 }

@b53_spi_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @b53_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.b53_device*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = call %struct.b53_device* @b53_switch_alloc(%struct.TYPE_2__* %7, i32* @b53_spi_ops, %struct.spi_device* %8)
  store %struct.b53_device* %9, %struct.b53_device** %4, align 8
  %10 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %11 = icmp ne %struct.b53_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %39

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %27 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %21, %15
  %29 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %30 = call i32 @b53_switch_register(%struct.b53_device* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %39

35:                                               ; preds = %28
  %36 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %37 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %38 = call i32 @spi_set_drvdata(%struct.spi_device* %36, %struct.b53_device* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %35, %33, %12
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.b53_device* @b53_switch_alloc(%struct.TYPE_2__*, i32*, %struct.spi_device*) #1

declare dso_local i32 @b53_switch_register(%struct.b53_device*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.b53_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
