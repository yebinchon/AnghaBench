; ModuleID = '/home/carl/AnghaBench/linux/block/extr_genhd.c_disk_clear_events.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_genhd.c_disk_clear_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.disk_events*, %struct.block_device_operations* }
%struct.disk_events = type { i32, i32, i32 }
%struct.block_device_operations = type { i64 (%struct.gendisk*)* }

@DISK_EVENT_MEDIA_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @disk_clear_events(%struct.gendisk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.block_device_operations*, align 8
  %7 = alloca %struct.disk_events*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gendisk* %0, %struct.gendisk** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %11 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %10, i32 0, i32 1
  %12 = load %struct.block_device_operations*, %struct.block_device_operations** %11, align 8
  store %struct.block_device_operations* %12, %struct.block_device_operations** %6, align 8
  %13 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %14 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %13, i32 0, i32 0
  %15 = load %struct.disk_events*, %struct.disk_events** %14, align 8
  store %struct.disk_events* %15, %struct.disk_events** %7, align 8
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.disk_events*, %struct.disk_events** %7, align 8
  %18 = icmp ne %struct.disk_events* %17, null
  br i1 %18, label %39, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @DISK_EVENT_MEDIA_CHANGE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load %struct.block_device_operations*, %struct.block_device_operations** %6, align 8
  %26 = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %25, i32 0, i32 0
  %27 = load i64 (%struct.gendisk*)*, i64 (%struct.gendisk*)** %26, align 8
  %28 = icmp ne i64 (%struct.gendisk*)* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.block_device_operations*, %struct.block_device_operations** %6, align 8
  %31 = getelementptr inbounds %struct.block_device_operations, %struct.block_device_operations* %30, i32 0, i32 0
  %32 = load i64 (%struct.gendisk*)*, i64 (%struct.gendisk*)** %31, align 8
  %33 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %34 = call i64 %32(%struct.gendisk* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @DISK_EVENT_MEDIA_CHANGE, align 4
  store i32 %37, i32* %3, align 4
  br label %87

38:                                               ; preds = %29, %24, %19
  store i32 0, i32* %3, align 4
  br label %87

39:                                               ; preds = %2
  %40 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %41 = call i32 @disk_block_events(%struct.gendisk* %40)
  %42 = load %struct.disk_events*, %struct.disk_events** %7, align 8
  %43 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %42, i32 0, i32 2
  %44 = call i32 @spin_lock_irq(i32* %43)
  %45 = load %struct.disk_events*, %struct.disk_events** %7, align 8
  %46 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load %struct.disk_events*, %struct.disk_events** %7, align 8
  %51 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  %52 = load %struct.disk_events*, %struct.disk_events** %7, align 8
  %53 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %52, i32 0, i32 2
  %54 = call i32 @spin_unlock_irq(i32* %53)
  %55 = load %struct.disk_events*, %struct.disk_events** %7, align 8
  %56 = call i32 @disk_check_events(%struct.disk_events* %55, i32* %9)
  %57 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %58 = load %struct.disk_events*, %struct.disk_events** %7, align 8
  %59 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 1, i32 0
  %64 = call i32 @__disk_unblock_events(%struct.gendisk* %57, i32 %63)
  %65 = load %struct.disk_events*, %struct.disk_events** %7, align 8
  %66 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %65, i32 0, i32 2
  %67 = call i32 @spin_lock_irq(i32* %66)
  %68 = load %struct.disk_events*, %struct.disk_events** %7, align 8
  %69 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %5, align 4
  %72 = and i32 %70, %71
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %5, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.disk_events*, %struct.disk_events** %7, align 8
  %76 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.disk_events*, %struct.disk_events** %7, align 8
  %80 = getelementptr inbounds %struct.disk_events, %struct.disk_events* %79, i32 0, i32 2
  %81 = call i32 @spin_unlock_irq(i32* %80)
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %5, align 4
  %84 = and i32 %82, %83
  %85 = call i32 @WARN_ON_ONCE(i32 %84)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %39, %38, %36
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @disk_block_events(%struct.gendisk*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @disk_check_events(%struct.disk_events*, i32*) #1

declare dso_local i32 @__disk_unblock_events(%struct.gendisk*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
