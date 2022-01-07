; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_watch_errcb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_watch_errcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"encountered watch error: %d\00", align 1
@rbd_empty_cid = common dso_local global i32 0, align 4
@RBD_WATCH_STATE_REGISTERED = common dso_local global i64 0, align 8
@RBD_WATCH_STATE_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @rbd_watch_errcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbd_watch_errcb(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rbd_device*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.rbd_device*
  store %struct.rbd_device* %9, %struct.rbd_device** %7, align 8
  %10 = load %struct.rbd_device*, %struct.rbd_device** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @rbd_warn(%struct.rbd_device* %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.rbd_device*, %struct.rbd_device** %7, align 8
  %14 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %13, i32 0, i32 4
  %15 = call i32 @down_write(i32* %14)
  %16 = load %struct.rbd_device*, %struct.rbd_device** %7, align 8
  %17 = call i32 @rbd_set_owner_cid(%struct.rbd_device* %16, i32* @rbd_empty_cid)
  %18 = load %struct.rbd_device*, %struct.rbd_device** %7, align 8
  %19 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %18, i32 0, i32 4
  %20 = call i32 @up_write(i32* %19)
  %21 = load %struct.rbd_device*, %struct.rbd_device** %7, align 8
  %22 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.rbd_device*, %struct.rbd_device** %7, align 8
  %25 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RBD_WATCH_STATE_REGISTERED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %3
  %30 = load %struct.rbd_device*, %struct.rbd_device** %7, align 8
  %31 = call i32 @__rbd_unregister_watch(%struct.rbd_device* %30)
  %32 = load i64, i64* @RBD_WATCH_STATE_ERROR, align 8
  %33 = load %struct.rbd_device*, %struct.rbd_device** %7, align 8
  %34 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.rbd_device*, %struct.rbd_device** %7, align 8
  %36 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.rbd_device*, %struct.rbd_device** %7, align 8
  %39 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %38, i32 0, i32 2
  %40 = call i32 @queue_delayed_work(i32 %37, i32* %39, i32 0)
  br label %41

41:                                               ; preds = %29, %3
  %42 = load %struct.rbd_device*, %struct.rbd_device** %7, align 8
  %43 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %42, i32 0, i32 1
  %44 = call i32 @mutex_unlock(i32* %43)
  ret void
}

declare dso_local i32 @rbd_warn(%struct.rbd_device*, i8*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @rbd_set_owner_cid(%struct.rbd_device*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__rbd_unregister_watch(%struct.rbd_device*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
