; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_bus_remove_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_bus_remove_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.bus_attribute = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bus_remove_file(%struct.bus_type* %0, %struct.bus_attribute* %1) #0 {
  %3 = alloca %struct.bus_type*, align 8
  %4 = alloca %struct.bus_attribute*, align 8
  store %struct.bus_type* %0, %struct.bus_type** %3, align 8
  store %struct.bus_attribute* %1, %struct.bus_attribute** %4, align 8
  %5 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %6 = call i64 @bus_get(%struct.bus_type* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %10 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.bus_attribute*, %struct.bus_attribute** %4, align 8
  %15 = getelementptr inbounds %struct.bus_attribute, %struct.bus_attribute* %14, i32 0, i32 0
  %16 = call i32 @sysfs_remove_file(i32* %13, i32* %15)
  %17 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %18 = call i32 @bus_put(%struct.bus_type* %17)
  br label %19

19:                                               ; preds = %8, %2
  ret void
}

declare dso_local i64 @bus_get(%struct.bus_type*) #1

declare dso_local i32 @sysfs_remove_file(i32*, i32*) #1

declare dso_local i32 @bus_put(%struct.bus_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
