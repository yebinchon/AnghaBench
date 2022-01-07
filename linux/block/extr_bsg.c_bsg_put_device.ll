; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bsg.c_bsg_put_device.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bsg.c_bsg_put_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_device = type { i32, i32, %struct.request_queue* }
%struct.request_queue = type { i32 }

@bsg_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"tearing down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_device*)* @bsg_put_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsg_put_device(%struct.bsg_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bsg_device*, align 8
  %4 = alloca %struct.request_queue*, align 8
  store %struct.bsg_device* %0, %struct.bsg_device** %3, align 8
  %5 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  %6 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %5, i32 0, i32 2
  %7 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  store %struct.request_queue* %7, %struct.request_queue** %4, align 8
  %8 = call i32 @mutex_lock(i32* @bsg_mutex)
  %9 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  %10 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %9, i32 0, i32 1
  %11 = call i32 @refcount_dec_and_test(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = call i32 @mutex_unlock(i32* @bsg_mutex)
  store i32 0, i32* %2, align 4
  br label %26

15:                                               ; preds = %1
  %16 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  %17 = getelementptr inbounds %struct.bsg_device, %struct.bsg_device* %16, i32 0, i32 0
  %18 = call i32 @hlist_del(i32* %17)
  %19 = call i32 @mutex_unlock(i32* @bsg_mutex)
  %20 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  %21 = call i32 @bsg_dbg(%struct.bsg_device* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.bsg_device*, %struct.bsg_device** %3, align 8
  %23 = call i32 @kfree(%struct.bsg_device* %22)
  %24 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %25 = call i32 @blk_put_queue(%struct.request_queue* %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %15, %13
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @bsg_dbg(%struct.bsg_device*, i8*) #1

declare dso_local i32 @kfree(%struct.bsg_device*) #1

declare dso_local i32 @blk_put_queue(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
