; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binderfs.c_binderfs_evict_inode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binderfs.c_binderfs_evict_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.binder_device* }
%struct.binder_device = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { %struct.binder_device* }
%struct.TYPE_4__ = type { i32 }
%struct.binderfs_info = type { i32 }

@binderfs_minors_mutex = common dso_local global i32 0, align 4
@binderfs_minors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @binderfs_evict_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @binderfs_evict_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.binder_device*, align 8
  %4 = alloca %struct.binderfs_info*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 1
  %7 = load %struct.binder_device*, %struct.binder_device** %6, align 8
  store %struct.binder_device* %7, %struct.binder_device** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = call %struct.binderfs_info* @BINDERFS_I(%struct.inode* %8)
  store %struct.binderfs_info* %9, %struct.binderfs_info** %4, align 8
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = call i32 @clear_inode(%struct.inode* %10)
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @S_ISCHR(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.binder_device*, %struct.binder_device** %3, align 8
  %19 = icmp ne %struct.binder_device* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %1
  br label %40

21:                                               ; preds = %17
  %22 = call i32 @mutex_lock(i32* @binderfs_minors_mutex)
  %23 = load %struct.binderfs_info*, %struct.binderfs_info** %4, align 8
  %24 = getelementptr inbounds %struct.binderfs_info, %struct.binderfs_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.binder_device*, %struct.binder_device** %3, align 8
  %28 = getelementptr inbounds %struct.binder_device, %struct.binder_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ida_free(i32* @binderfs_minors, i32 %30)
  %32 = call i32 @mutex_unlock(i32* @binderfs_minors_mutex)
  %33 = load %struct.binder_device*, %struct.binder_device** %3, align 8
  %34 = getelementptr inbounds %struct.binder_device, %struct.binder_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.binder_device*, %struct.binder_device** %35, align 8
  %37 = call i32 @kfree(%struct.binder_device* %36)
  %38 = load %struct.binder_device*, %struct.binder_device** %3, align 8
  %39 = call i32 @kfree(%struct.binder_device* %38)
  br label %40

40:                                               ; preds = %21, %20
  ret void
}

declare dso_local %struct.binderfs_info* @BINDERFS_I(%struct.inode*) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

declare dso_local i32 @S_ISCHR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ida_free(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.binder_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
