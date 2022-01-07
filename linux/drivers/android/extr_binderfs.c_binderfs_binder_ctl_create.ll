; ModuleID = '/home/carl/AnghaBench/linux/drivers/android/extr_binderfs.c_binderfs_binder_ctl_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/android/extr_binderfs.c_binderfs_binder_ctl_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.binderfs_info*, %struct.dentry* }
%struct.binderfs_info = type { %struct.dentry*, i32, i32, i32* }
%struct.dentry = type { i32 }
%struct.binder_device = type { %struct.TYPE_2__, %struct.inode* }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { %struct.binder_device*, i32, i32, i32*, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@binderfs_minors_mutex = common dso_local global i32 0, align 4
@binderfs_minors = common dso_local global i32 0, align 4
@BINDERFS_MAX_MINOR = common dso_local global i32 0, align 4
@BINDERFS_MAX_MINOR_CAPPED = common dso_local global i32 0, align 4
@SECOND_INODE = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@binderfs_dev = common dso_local global i32 0, align 4
@binder_ctl_fops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"binder-control\00", align 1
@init_ipc_ns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @binderfs_binder_ctl_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binderfs_binder_ctl_create(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.binder_device*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.binderfs_info*, align 8
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.inode* null, %struct.inode** %8, align 8
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 1
  %14 = load %struct.dentry*, %struct.dentry** %13, align 8
  store %struct.dentry* %14, %struct.dentry** %9, align 8
  %15 = load %struct.super_block*, %struct.super_block** %3, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 0
  %17 = load %struct.binderfs_info*, %struct.binderfs_info** %16, align 8
  store %struct.binderfs_info* %17, %struct.binderfs_info** %10, align 8
  store i32 1, i32* %11, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.binder_device* @kzalloc(i32 16, i32 %18)
  store %struct.binder_device* %19, %struct.binder_device** %7, align 8
  %20 = load %struct.binder_device*, %struct.binder_device** %7, align 8
  %21 = icmp ne %struct.binder_device* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %116

25:                                               ; preds = %1
  %26 = load %struct.binderfs_info*, %struct.binderfs_info** %10, align 8
  %27 = getelementptr inbounds %struct.binderfs_info, %struct.binderfs_info* %26, i32 0, i32 0
  %28 = load %struct.dentry*, %struct.dentry** %27, align 8
  %29 = icmp ne %struct.dentry* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %110

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  %34 = load %struct.super_block*, %struct.super_block** %3, align 8
  %35 = call %struct.inode* @new_inode(%struct.super_block* %34)
  store %struct.inode* %35, %struct.inode** %8, align 8
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = icmp ne %struct.inode* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %110

39:                                               ; preds = %31
  %40 = call i32 @mutex_lock(i32* @binderfs_minors_mutex)
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @BINDERFS_MAX_MINOR, align 4
  br label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @BINDERFS_MAX_MINOR_CAPPED, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i32 @ida_alloc_max(i32* @binderfs_minors, i32 %48, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = call i32 @mutex_unlock(i32* @binderfs_minors_mutex)
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %5, align 4
  br label %110

56:                                               ; preds = %47
  %57 = load i32, i32* @SECOND_INODE, align 4
  %58 = load %struct.inode*, %struct.inode** %8, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 4
  %60 = load %struct.inode*, %struct.inode** %8, align 8
  %61 = call i32 @current_time(%struct.inode* %60)
  %62 = load %struct.inode*, %struct.inode** %8, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.inode*, %struct.inode** %8, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 5
  store i32 %61, i32* %65, align 4
  %66 = load %struct.inode*, %struct.inode** %8, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 6
  store i32 %61, i32* %67, align 8
  %68 = load %struct.inode*, %struct.inode** %8, align 8
  %69 = load i32, i32* @S_IFCHR, align 4
  %70 = or i32 %69, 384
  %71 = load i32, i32* @binderfs_dev, align 4
  %72 = call i32 @MAJOR(i32 %71)
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @MKDEV(i32 %72, i32 %73)
  %75 = call i32 @init_special_inode(%struct.inode* %68, i32 %70, i32 %74)
  %76 = load %struct.inode*, %struct.inode** %8, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 3
  store i32* @binder_ctl_fops, i32** %77, align 8
  %78 = load %struct.binderfs_info*, %struct.binderfs_info** %10, align 8
  %79 = getelementptr inbounds %struct.binderfs_info, %struct.binderfs_info* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.inode*, %struct.inode** %8, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.binderfs_info*, %struct.binderfs_info** %10, align 8
  %84 = getelementptr inbounds %struct.binderfs_info, %struct.binderfs_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.inode*, %struct.inode** %8, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  %88 = load %struct.inode*, %struct.inode** %8, align 8
  %89 = load %struct.binder_device*, %struct.binder_device** %7, align 8
  %90 = getelementptr inbounds %struct.binder_device, %struct.binder_device* %89, i32 0, i32 1
  store %struct.inode* %88, %struct.inode** %90, align 8
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.binder_device*, %struct.binder_device** %7, align 8
  %93 = getelementptr inbounds %struct.binder_device, %struct.binder_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  %95 = load %struct.dentry*, %struct.dentry** %9, align 8
  %96 = call %struct.dentry* @d_alloc_name(%struct.dentry* %95, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.dentry* %96, %struct.dentry** %6, align 8
  %97 = load %struct.dentry*, %struct.dentry** %6, align 8
  %98 = icmp ne %struct.dentry* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %56
  br label %110

100:                                              ; preds = %56
  %101 = load %struct.binder_device*, %struct.binder_device** %7, align 8
  %102 = load %struct.inode*, %struct.inode** %8, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 0
  store %struct.binder_device* %101, %struct.binder_device** %103, align 8
  %104 = load %struct.dentry*, %struct.dentry** %6, align 8
  %105 = load %struct.binderfs_info*, %struct.binderfs_info** %10, align 8
  %106 = getelementptr inbounds %struct.binderfs_info, %struct.binderfs_info* %105, i32 0, i32 0
  store %struct.dentry* %104, %struct.dentry** %106, align 8
  %107 = load %struct.dentry*, %struct.dentry** %6, align 8
  %108 = load %struct.inode*, %struct.inode** %8, align 8
  %109 = call i32 @d_add(%struct.dentry* %107, %struct.inode* %108)
  store i32 0, i32* %2, align 4
  br label %116

110:                                              ; preds = %99, %54, %38, %30
  %111 = load %struct.binder_device*, %struct.binder_device** %7, align 8
  %112 = call i32 @kfree(%struct.binder_device* %111)
  %113 = load %struct.inode*, %struct.inode** %8, align 8
  %114 = call i32 @iput(%struct.inode* %113)
  %115 = load i32, i32* %5, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %110, %100, %22
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.binder_device* @kzalloc(i32, i32) #1

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ida_alloc_max(i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local %struct.dentry* @d_alloc_name(%struct.dentry*, i8*) #1

declare dso_local i32 @d_add(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @kfree(%struct.binder_device*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
