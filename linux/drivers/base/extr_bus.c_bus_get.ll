; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_bus_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_bus_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bus_type* (%struct.bus_type*)* @bus_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bus_type* @bus_get(%struct.bus_type* %0) #0 {
  %2 = alloca %struct.bus_type*, align 8
  %3 = alloca %struct.bus_type*, align 8
  store %struct.bus_type* %0, %struct.bus_type** %3, align 8
  %4 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %5 = icmp ne %struct.bus_type* %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %8 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @kset_get(i32* %10)
  %12 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  store %struct.bus_type* %12, %struct.bus_type** %2, align 8
  br label %14

13:                                               ; preds = %1
  store %struct.bus_type* null, %struct.bus_type** %2, align 8
  br label %14

14:                                               ; preds = %13, %6
  %15 = load %struct.bus_type*, %struct.bus_type** %2, align 8
  ret %struct.bus_type* %15
}

declare dso_local i32 @kset_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
