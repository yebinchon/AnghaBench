; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_devcoredump.c_devcd_data_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_devcoredump.c_devcd_data_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.device = type { i32 }
%struct.devcd_entry = type { i32, i32, i32 (i8*, i32, i64, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i32, i64)* @devcd_data_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devcd_data_read(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.kobject*, align 8
  %9 = alloca %struct.bin_attribute*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca %struct.devcd_entry*, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.kobject* %1, %struct.kobject** %8, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %15 = load %struct.kobject*, %struct.kobject** %8, align 8
  %16 = call %struct.device* @kobj_to_dev(%struct.kobject* %15)
  store %struct.device* %16, %struct.device** %13, align 8
  %17 = load %struct.device*, %struct.device** %13, align 8
  %18 = call %struct.devcd_entry* @dev_to_devcd(%struct.device* %17)
  store %struct.devcd_entry* %18, %struct.devcd_entry** %14, align 8
  %19 = load %struct.devcd_entry*, %struct.devcd_entry** %14, align 8
  %20 = getelementptr inbounds %struct.devcd_entry, %struct.devcd_entry* %19, i32 0, i32 2
  %21 = load i32 (i8*, i32, i64, i32, i32)*, i32 (i8*, i32, i64, i32, i32)** %20, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i64, i64* %12, align 8
  %25 = load %struct.devcd_entry*, %struct.devcd_entry** %14, align 8
  %26 = getelementptr inbounds %struct.devcd_entry, %struct.devcd_entry* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.devcd_entry*, %struct.devcd_entry** %14, align 8
  %29 = getelementptr inbounds %struct.devcd_entry, %struct.devcd_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 %21(i8* %22, i32 %23, i64 %24, i32 %27, i32 %30)
  ret i32 %31
}

declare dso_local %struct.device* @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.devcd_entry* @dev_to_devcd(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
