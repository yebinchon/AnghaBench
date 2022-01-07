; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_device_in_dod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_device_in_dod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_video_device = type { i32, %struct.acpi_video_bus* }
%struct.acpi_video_bus = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_video_device*)* @acpi_video_device_in_dod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_video_device_in_dod(%struct.acpi_video_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_video_device*, align 8
  %4 = alloca %struct.acpi_video_bus*, align 8
  %5 = alloca i32, align 4
  store %struct.acpi_video_device* %0, %struct.acpi_video_device** %3, align 8
  %6 = load %struct.acpi_video_device*, %struct.acpi_video_device** %3, align 8
  %7 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %6, i32 0, i32 1
  %8 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %7, align 8
  store %struct.acpi_video_bus* %8, %struct.acpi_video_bus** %4, align 8
  %9 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %4, align 8
  %10 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %4, align 8
  %15 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 8
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %1
  store i32 1, i32* %2, align 4
  br label %48

19:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %44, %19
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %4, align 8
  %23 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %20
  %27 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %4, align 8
  %28 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 4095
  %37 = load %struct.acpi_video_device*, %struct.acpi_video_device** %3, align 8
  %38 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, 4095
  %41 = icmp eq i32 %36, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %48

43:                                               ; preds = %26
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %20

47:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %42, %18
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
