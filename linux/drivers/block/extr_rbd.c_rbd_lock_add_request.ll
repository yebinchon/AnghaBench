; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_lock_add_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_lock_add_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_img_request = type { i32, %struct.rbd_device* }
%struct.rbd_device = type { i64, i32, i32, i32, i32 }

@RBD_LOCK_STATE_LOCKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_img_request*)* @rbd_lock_add_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_lock_add_request(%struct.rbd_img_request* %0) #0 {
  %2 = alloca %struct.rbd_img_request*, align 8
  %3 = alloca %struct.rbd_device*, align 8
  %4 = alloca i32, align 4
  store %struct.rbd_img_request* %0, %struct.rbd_img_request** %2, align 8
  %5 = load %struct.rbd_img_request*, %struct.rbd_img_request** %2, align 8
  %6 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %5, i32 0, i32 1
  %7 = load %struct.rbd_device*, %struct.rbd_device** %6, align 8
  store %struct.rbd_device* %7, %struct.rbd_device** %3, align 8
  %8 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %9 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %8, i32 0, i32 4
  %10 = call i32 @lockdep_assert_held(i32* %9)
  %11 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %12 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RBD_LOCK_STATE_LOCKED, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %18 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %17, i32 0, i32 1
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.rbd_img_request*, %struct.rbd_img_request** %2, align 8
  %21 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %20, i32 0, i32 0
  %22 = call i32 @list_empty(i32* %21)
  %23 = call i32 @rbd_assert(i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %1
  %27 = load %struct.rbd_img_request*, %struct.rbd_img_request** %2, align 8
  %28 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %27, i32 0, i32 0
  %29 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %30 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %29, i32 0, i32 3
  %31 = call i32 @list_add_tail(i32* %28, i32* %30)
  br label %38

32:                                               ; preds = %1
  %33 = load %struct.rbd_img_request*, %struct.rbd_img_request** %2, align 8
  %34 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %33, i32 0, i32 0
  %35 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %36 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %35, i32 0, i32 2
  %37 = call i32 @list_add_tail(i32* %34, i32* %36)
  br label %38

38:                                               ; preds = %32, %26
  %39 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %40 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %39, i32 0, i32 1
  %41 = call i32 @spin_unlock(i32* %40)
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rbd_assert(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
