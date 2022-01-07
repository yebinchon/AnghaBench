; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_bus_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_bus_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [26 x i8] c"bus: '%s': unregistering\0A\00", align 1
@bus_attr_uevent = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bus_unregister(%struct.bus_type* %0) #0 {
  %2 = alloca %struct.bus_type*, align 8
  store %struct.bus_type* %0, %struct.bus_type** %2, align 8
  %3 = load %struct.bus_type*, %struct.bus_type** %2, align 8
  %4 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.bus_type*, %struct.bus_type** %2, align 8
  %8 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.bus_type*, %struct.bus_type** %2, align 8
  %13 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @device_unregister(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.bus_type*, %struct.bus_type** %2, align 8
  %18 = load %struct.bus_type*, %struct.bus_type** %2, align 8
  %19 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @bus_remove_groups(%struct.bus_type* %17, i32 %20)
  %22 = load %struct.bus_type*, %struct.bus_type** %2, align 8
  %23 = call i32 @remove_probe_files(%struct.bus_type* %22)
  %24 = load %struct.bus_type*, %struct.bus_type** %2, align 8
  %25 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @kset_unregister(i32* %28)
  %30 = load %struct.bus_type*, %struct.bus_type** %2, align 8
  %31 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @kset_unregister(i32* %34)
  %36 = load %struct.bus_type*, %struct.bus_type** %2, align 8
  %37 = call i32 @bus_remove_file(%struct.bus_type* %36, i32* @bus_attr_uevent)
  %38 = load %struct.bus_type*, %struct.bus_type** %2, align 8
  %39 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @kset_unregister(i32* %41)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @device_unregister(i64) #1

declare dso_local i32 @bus_remove_groups(%struct.bus_type*, i32) #1

declare dso_local i32 @remove_probe_files(%struct.bus_type*) #1

declare dso_local i32 @kset_unregister(i32*) #1

declare dso_local i32 @bus_remove_file(%struct.bus_type*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
