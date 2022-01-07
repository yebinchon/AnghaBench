; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bsg.c_bsg_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bsg.c_bsg_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_device = type { i32, i32, i32, i32, %struct.request_queue* }
%struct.inode = type { i32 }
%struct.request_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }

@bsg_mutex = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"bound to <%s>, max queue %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bsg_device* (%struct.inode*, %struct.request_queue*, %struct.file*)* @bsg_add_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bsg_device* @bsg_add_device(%struct.inode* %0, %struct.request_queue* %1, %struct.file* %2) #0 {
  %4 = alloca %struct.bsg_device*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.bsg_device*, align 8
  %9 = alloca [32 x i8], align 16
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.request_queue* %1, %struct.request_queue** %6, align 8
  store %struct.file* %2, %struct.file** %7, align 8
  %10 = call i32 @lockdep_assert_held(i32* @bsg_mutex)
  %11 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %12 = call i32 @blk_get_queue(%struct.request_queue* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENXIO, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.bsg_device* @ERR_PTR(i32 %16)
  store %struct.bsg_device* %17, %struct.bsg_device** %4, align 8
  br label %61

18:                                               ; preds = %3
  %19 = call %struct.bsg_device* (...) @bsg_alloc_device()
  store %struct.bsg_device* %19, %struct.bsg_device** %8, align 8
  %20 = load %struct.bsg_device*, %struct.bsg_device** %8, align 8
  %21 = icmp ne %struct.bsg_device* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %24 = call i32 @blk_put_queue(%struct.request_queue* %23)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.bsg_device* @ERR_PTR(i32 %26)
  store %struct.bsg_device* %27, %struct.bsg_device** %4, align 8
  br label %61

28:                                               ; preds = %18
  %29 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %30 = load %struct.bsg_device*, %struct.bsg_device** %8, align 8
  %31 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %30, i32 0, i32 4
  store %struct.request_queue* %29, %struct.request_queue** %31, align 8
  %32 = load %struct.bsg_device*, %struct.bsg_device** %8, align 8
  %33 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %32, i32 0, i32 3
  %34 = call i32 @refcount_set(i32* %33, i32 1)
  %35 = load %struct.bsg_device*, %struct.bsg_device** %8, align 8
  %36 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %35, i32 0, i32 2
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = call i32 @iminor(%struct.inode* %37)
  %39 = call i32 @bsg_dev_idx_hash(i32 %38)
  %40 = call i32 @hlist_add_head(i32* %36, i32 %39)
  %41 = load %struct.bsg_device*, %struct.bsg_device** %8, align 8
  %42 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %45 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_name(i32 %47)
  %49 = call i32 @strncpy(i32 %43, i32 %48, i32 3)
  %50 = load %struct.bsg_device*, %struct.bsg_device** %8, align 8
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @format_dev_t(i8* %51, i32 %54)
  %56 = load %struct.bsg_device*, %struct.bsg_device** %8, align 8
  %57 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @bsg_dbg(%struct.bsg_device* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %58)
  %60 = load %struct.bsg_device*, %struct.bsg_device** %8, align 8
  store %struct.bsg_device* %60, %struct.bsg_device** %4, align 8
  br label %61

61:                                               ; preds = %28, %22, %14
  %62 = load %struct.bsg_device*, %struct.bsg_device** %4, align 8
  ret %struct.bsg_device* %62
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @blk_get_queue(%struct.request_queue*) #1

declare dso_local %struct.bsg_device* @ERR_PTR(i32) #1

declare dso_local %struct.bsg_device* @bsg_alloc_device(...) #1

declare dso_local i32 @blk_put_queue(%struct.request_queue*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @hlist_add_head(i32*, i32) #1

declare dso_local i32 @bsg_dev_idx_hash(i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @bsg_dbg(%struct.bsg_device*, i8*, i32, i32) #1

declare dso_local i32 @format_dev_t(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
