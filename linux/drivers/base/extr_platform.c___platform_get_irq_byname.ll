; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_platform.c___platform_get_irq_byname.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_platform.c___platform_get_irq_byname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.resource = type { i32 }

@CONFIG_OF_IRQ = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i8*)* @__platform_get_irq_byname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__platform_get_irq_byname(%struct.platform_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @CONFIG_OF_IRQ, align 4
  %9 = call i64 @IS_ENABLED(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %11
  %18 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @of_irq_get_byname(i64 %21, i8* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @EPROBE_DEFER, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %17
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %48

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %11, %2
  %35 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %36 = load i32, i32* @IORESOURCE_IRQ, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %35, i32 %36, i8* %37)
  store %struct.resource* %38, %struct.resource** %6, align 8
  %39 = load %struct.resource*, %struct.resource** %6, align 8
  %40 = icmp ne %struct.resource* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.resource*, %struct.resource** %6, align 8
  %43 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %3, align 4
  br label %48

45:                                               ; preds = %34
  %46 = load i32, i32* @ENXIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %41, %31
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @of_irq_get_byname(i64, i8*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
