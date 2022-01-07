; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_drbd_debugfs_peer_device_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_debugfs.c_drbd_debugfs_peer_device_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_peer_device = type { %struct.dentry*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.dentry = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.dentry* }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drbd_debugfs_peer_device_add(%struct.drbd_peer_device* %0) #0 {
  %2 = alloca %struct.drbd_peer_device*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca [8 x i8], align 1
  store %struct.drbd_peer_device* %0, %struct.drbd_peer_device** %2, align 8
  %6 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %2, align 8
  %7 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %10, %struct.dentry** %3, align 8
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %12 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %2, align 8
  %13 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @snprintf(i8* %11, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %19 = load %struct.dentry*, %struct.dentry** %3, align 8
  %20 = call %struct.dentry* @debugfs_create_dir(i8* %18, %struct.dentry* %19)
  store %struct.dentry* %20, %struct.dentry** %4, align 8
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %2, align 8
  %23 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %22, i32 0, i32 0
  store %struct.dentry* %21, %struct.dentry** %23, align 8
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
