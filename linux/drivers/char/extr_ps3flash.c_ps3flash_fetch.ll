; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_ps3flash.c_ps3flash_fetch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_ps3flash.c_ps3flash_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3_storage_device = type { i32 }
%struct.ps3flash_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps3_storage_device*, i32)* @ps3flash_fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3flash_fetch(%struct.ps3_storage_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ps3_storage_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ps3flash_private*, align 8
  %7 = alloca i32, align 4
  store %struct.ps3_storage_device* %0, %struct.ps3_storage_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ps3_storage_device*, %struct.ps3_storage_device** %4, align 8
  %9 = getelementptr inbounds %struct.ps3_storage_device, %struct.ps3_storage_device* %8, i32 0, i32 0
  %10 = call %struct.ps3flash_private* @ps3_system_bus_get_drvdata(i32* %9)
  store %struct.ps3flash_private* %10, %struct.ps3flash_private** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.ps3flash_private*, %struct.ps3flash_private** %6, align 8
  %13 = getelementptr inbounds %struct.ps3flash_private, %struct.ps3flash_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

17:                                               ; preds = %2
  %18 = load %struct.ps3_storage_device*, %struct.ps3_storage_device** %4, align 8
  %19 = call i32 @ps3flash_writeback(%struct.ps3_storage_device* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %38

24:                                               ; preds = %17
  %25 = load %struct.ps3flash_private*, %struct.ps3flash_private** %6, align 8
  %26 = getelementptr inbounds %struct.ps3flash_private, %struct.ps3flash_private* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 4
  %27 = load %struct.ps3_storage_device*, %struct.ps3_storage_device** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @ps3flash_read_write_sectors(%struct.ps3_storage_device* %27, i32 %28, i32 0)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %38

34:                                               ; preds = %24
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.ps3flash_private*, %struct.ps3flash_private** %6, align 8
  %37 = getelementptr inbounds %struct.ps3flash_private, %struct.ps3flash_private* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %32, %22, %16
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.ps3flash_private* @ps3_system_bus_get_drvdata(i32*) #1

declare dso_local i32 @ps3flash_writeback(%struct.ps3_storage_device*) #1

declare dso_local i32 @ps3flash_read_write_sectors(%struct.ps3_storage_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
