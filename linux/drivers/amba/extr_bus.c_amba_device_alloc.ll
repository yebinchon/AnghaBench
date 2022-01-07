; ModuleID = '/home/carl/AnghaBench/linux/drivers/amba/extr_bus.c_amba_device_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/amba/extr_bus.c_amba_device_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.amba_device* @amba_device_alloc(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.amba_device*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.amba_device* @kzalloc(i32 24, i32 %8)
  store %struct.amba_device* %9, %struct.amba_device** %7, align 8
  %10 = load %struct.amba_device*, %struct.amba_device** %7, align 8
  %11 = icmp ne %struct.amba_device* %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %3
  %13 = load %struct.amba_device*, %struct.amba_device** %7, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @amba_device_initialize(%struct.amba_device* %13, i8* %14)
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.amba_device*, %struct.amba_device** %7, align 8
  %18 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i8* %16, i8** %19, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr i8, i8* %20, i64 %21
  %23 = getelementptr i8, i8* %22, i64 -1
  %24 = load %struct.amba_device*, %struct.amba_device** %7, align 8
  %25 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i8* %23, i8** %26, align 8
  %27 = load i32, i32* @IORESOURCE_MEM, align 4
  %28 = load %struct.amba_device*, %struct.amba_device** %7, align 8
  %29 = getelementptr inbounds %struct.amba_device, %struct.amba_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  br label %31

31:                                               ; preds = %12, %3
  %32 = load %struct.amba_device*, %struct.amba_device** %7, align 8
  ret %struct.amba_device* %32
}

declare dso_local %struct.amba_device* @kzalloc(i32, i32) #1

declare dso_local i32 @amba_device_initialize(%struct.amba_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
