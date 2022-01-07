; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_subsys_virtual_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_subsys_virtual_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { i32 }
%struct.attribute_group = type { i32 }
%struct.kobject = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @subsys_virtual_register(%struct.bus_type* %0, %struct.attribute_group** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bus_type*, align 8
  %5 = alloca %struct.attribute_group**, align 8
  %6 = alloca %struct.kobject*, align 8
  store %struct.bus_type* %0, %struct.bus_type** %4, align 8
  store %struct.attribute_group** %1, %struct.attribute_group*** %5, align 8
  %7 = call %struct.kobject* @virtual_device_parent(i32* null)
  store %struct.kobject* %7, %struct.kobject** %6, align 8
  %8 = load %struct.kobject*, %struct.kobject** %6, align 8
  %9 = icmp ne %struct.kobject* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %18

13:                                               ; preds = %2
  %14 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %15 = load %struct.attribute_group**, %struct.attribute_group*** %5, align 8
  %16 = load %struct.kobject*, %struct.kobject** %6, align 8
  %17 = call i32 @subsys_register(%struct.bus_type* %14, %struct.attribute_group** %15, %struct.kobject* %16)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %13, %10
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local %struct.kobject* @virtual_device_parent(i32*) #1

declare dso_local i32 @subsys_register(%struct.bus_type*, %struct.attribute_group**, %struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
