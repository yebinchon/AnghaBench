; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_dev_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_dev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbd_device = type { i64, i32, i32, %struct.gendisk* }
%struct.gendisk = type { i32*, %struct.request_queue* }
%struct.request_queue = type { i32 }

@NBD_DESTROY_ON_DISCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nbd_device*)* @nbd_dev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nbd_dev_remove(%struct.nbd_device* %0) #0 {
  %2 = alloca %struct.nbd_device*, align 8
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca %struct.request_queue*, align 8
  store %struct.nbd_device* %0, %struct.nbd_device** %2, align 8
  %5 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %6 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %5, i32 0, i32 3
  %7 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  store %struct.gendisk* %7, %struct.gendisk** %3, align 8
  %8 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %9 = icmp ne %struct.gendisk* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %12 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %11, i32 0, i32 1
  %13 = load %struct.request_queue*, %struct.request_queue** %12, align 8
  store %struct.request_queue* %13, %struct.request_queue** %4, align 8
  %14 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %15 = call i32 @del_gendisk(%struct.gendisk* %14)
  %16 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %17 = call i32 @blk_cleanup_queue(%struct.request_queue* %16)
  %18 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %19 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %18, i32 0, i32 2
  %20 = call i32 @blk_mq_free_tag_set(i32* %19)
  %21 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %22 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  %23 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %24 = call i32 @put_disk(%struct.gendisk* %23)
  br label %25

25:                                               ; preds = %10, %1
  %26 = load i32, i32* @NBD_DESTROY_ON_DISCONNECT, align 4
  %27 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %28 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %27, i32 0, i32 1
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %33 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %38 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @complete(i64 %39)
  br label %41

41:                                               ; preds = %36, %31, %25
  %42 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %43 = call i32 @kfree(%struct.nbd_device* %42)
  ret void
}

declare dso_local i32 @del_gendisk(%struct.gendisk*) #1

declare dso_local i32 @blk_cleanup_queue(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_free_tag_set(i32*) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @complete(i64) #1

declare dso_local i32 @kfree(%struct.nbd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
