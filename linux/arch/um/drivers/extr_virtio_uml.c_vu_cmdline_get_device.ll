; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vu_cmdline_get_device.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vu_cmdline_get_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.virtio_uml_platform_data* }
%struct.virtio_uml_platform_data = type { i8*, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"%s:%d:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @vu_cmdline_get_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vu_cmdline_get_device(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.virtio_uml_platform_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.platform_device* @to_platform_device(%struct.device* %9)
  store %struct.platform_device* %10, %struct.platform_device** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.virtio_uml_platform_data*, %struct.virtio_uml_platform_data** %13, align 8
  store %struct.virtio_uml_platform_data* %14, %struct.virtio_uml_platform_data** %6, align 8
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @strlen(i8* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i64, i64* @PAGE_SIZE, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = sub nsw i64 %22, %24
  %26 = load %struct.virtio_uml_platform_data*, %struct.virtio_uml_platform_data** %6, align 8
  %27 = getelementptr inbounds %struct.virtio_uml_platform_data, %struct.virtio_uml_platform_data* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.virtio_uml_platform_data*, %struct.virtio_uml_platform_data** %6, align 8
  %30 = getelementptr inbounds %struct.virtio_uml_platform_data, %struct.virtio_uml_platform_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @snprintf(i8* %21, i64 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %31, i32 %34)
  ret i32 0
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
