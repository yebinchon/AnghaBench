; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_lock_del_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_lock_del_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_img_request = type { i32, %struct.rbd_device* }
%struct.rbd_device = type { i64, i32, i32, i32, i32 }

@RBD_LOCK_STATE_RELEASING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rbd_img_request*)* @rbd_lock_del_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbd_lock_del_request(%struct.rbd_img_request* %0) #0 {
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
  %12 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %11, i32 0, i32 2
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.rbd_img_request*, %struct.rbd_img_request** %2, align 8
  %15 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %14, i32 0, i32 0
  %16 = call i64 @list_empty(i32* %15)
  %17 = icmp ne i64 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @rbd_assert(i32 %19)
  %21 = load %struct.rbd_img_request*, %struct.rbd_img_request** %2, align 8
  %22 = getelementptr inbounds %struct.rbd_img_request, %struct.rbd_img_request* %21, i32 0, i32 0
  %23 = call i32 @list_del_init(i32* %22)
  %24 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %25 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RBD_LOCK_STATE_RELEASING, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %31 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %30, i32 0, i32 3
  %32 = call i64 @list_empty(i32* %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %29, %1
  %35 = phi i1 [ false, %1 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %4, align 4
  %37 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %38 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %37, i32 0, i32 2
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %44 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %43, i32 0, i32 1
  %45 = call i32 @complete(i32* %44)
  br label %46

46:                                               ; preds = %42, %34
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rbd_assert(i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
