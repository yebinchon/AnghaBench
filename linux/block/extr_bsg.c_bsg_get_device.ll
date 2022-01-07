; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bsg.c_bsg_get_device.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bsg.c_bsg_get_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_device = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.bsg_class_device = type { i32 }

@bsg_mutex = common dso_local global i32 0, align 4
@bsg_minor_idr = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bsg_device* (%struct.inode*, %struct.file*)* @bsg_get_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bsg_device* @bsg_get_device(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.bsg_device*, align 8
  %6 = alloca %struct.bsg_class_device*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = call i32 @mutex_lock(i32* @bsg_mutex)
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call i32 @iminor(%struct.inode* %8)
  %10 = call %struct.bsg_class_device* @idr_find(i32* @bsg_minor_idr, i32 %9)
  store %struct.bsg_class_device* %10, %struct.bsg_class_device** %6, align 8
  %11 = load %struct.bsg_class_device*, %struct.bsg_class_device** %6, align 8
  %12 = icmp ne %struct.bsg_class_device* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.bsg_device* @ERR_PTR(i32 %15)
  store %struct.bsg_device* %16, %struct.bsg_device** %5, align 8
  br label %34

17:                                               ; preds = %2
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = call i32 @iminor(%struct.inode* %18)
  %20 = load %struct.bsg_class_device*, %struct.bsg_class_device** %6, align 8
  %21 = getelementptr inbounds %struct.bsg_class_device, %struct.bsg_class_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.bsg_device* @__bsg_get_device(i32 %19, i32 %22)
  store %struct.bsg_device* %23, %struct.bsg_device** %5, align 8
  %24 = load %struct.bsg_device*, %struct.bsg_device** %5, align 8
  %25 = icmp ne %struct.bsg_device* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %17
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = load %struct.bsg_class_device*, %struct.bsg_class_device** %6, align 8
  %29 = getelementptr inbounds %struct.bsg_class_device, %struct.bsg_class_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.file*, %struct.file** %4, align 8
  %32 = call %struct.bsg_device* @bsg_add_device(%struct.inode* %27, i32 %30, %struct.file* %31)
  store %struct.bsg_device* %32, %struct.bsg_device** %5, align 8
  br label %33

33:                                               ; preds = %26, %17
  br label %34

34:                                               ; preds = %33, %13
  %35 = call i32 @mutex_unlock(i32* @bsg_mutex)
  %36 = load %struct.bsg_device*, %struct.bsg_device** %5, align 8
  ret %struct.bsg_device* %36
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.bsg_class_device* @idr_find(i32*, i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local %struct.bsg_device* @ERR_PTR(i32) #1

declare dso_local %struct.bsg_device* @__bsg_get_device(i32, i32) #1

declare dso_local %struct.bsg_device* @bsg_add_device(%struct.inode*, i32, %struct.file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
