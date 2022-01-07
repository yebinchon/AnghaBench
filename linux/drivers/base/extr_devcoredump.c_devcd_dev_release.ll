; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_devcoredump.c_devcd_dev_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_devcoredump.c_devcd_dev_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.devcd_entry = type { %struct.TYPE_4__*, i32, i32, i32 (i32)* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"devcoredump\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @devcd_dev_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devcd_dev_release(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.devcd_entry*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.devcd_entry* @dev_to_devcd(%struct.device* %4)
  store %struct.devcd_entry* %5, %struct.devcd_entry** %3, align 8
  %6 = load %struct.devcd_entry*, %struct.devcd_entry** %3, align 8
  %7 = getelementptr inbounds %struct.devcd_entry, %struct.devcd_entry* %6, i32 0, i32 3
  %8 = load i32 (i32)*, i32 (i32)** %7, align 8
  %9 = load %struct.devcd_entry*, %struct.devcd_entry** %3, align 8
  %10 = getelementptr inbounds %struct.devcd_entry, %struct.devcd_entry* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 %8(i32 %11)
  %13 = load %struct.devcd_entry*, %struct.devcd_entry** %3, align 8
  %14 = getelementptr inbounds %struct.devcd_entry, %struct.devcd_entry* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @module_put(i32 %15)
  %17 = load %struct.devcd_entry*, %struct.devcd_entry** %3, align 8
  %18 = getelementptr inbounds %struct.devcd_entry, %struct.devcd_entry* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load %struct.devcd_entry*, %struct.devcd_entry** %3, align 8
  %26 = getelementptr inbounds %struct.devcd_entry, %struct.devcd_entry* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.device*, %struct.device** %2, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0
  %31 = call i32 @sysfs_delete_link(%struct.TYPE_3__* %28, i32* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %24, %1
  %33 = load %struct.devcd_entry*, %struct.devcd_entry** %3, align 8
  %34 = getelementptr inbounds %struct.devcd_entry, %struct.devcd_entry* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = call i32 @put_device(%struct.TYPE_4__* %35)
  %37 = load %struct.devcd_entry*, %struct.devcd_entry** %3, align 8
  %38 = call i32 @kfree(%struct.devcd_entry* %37)
  ret void
}

declare dso_local %struct.devcd_entry* @dev_to_devcd(%struct.device*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @sysfs_delete_link(%struct.TYPE_3__*, i32*, i8*) #1

declare dso_local i32 @put_device(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.devcd_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
