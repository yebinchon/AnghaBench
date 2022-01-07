; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_obj_is_entire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_obj_is_entire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_obj_request = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { %struct.rbd_device* }
%struct.rbd_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rbd_obj_request*)* @rbd_obj_is_entire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbd_obj_is_entire(%struct.rbd_obj_request* %0) #0 {
  %2 = alloca %struct.rbd_obj_request*, align 8
  %3 = alloca %struct.rbd_device*, align 8
  store %struct.rbd_obj_request* %0, %struct.rbd_obj_request** %2, align 8
  %4 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %2, align 8
  %5 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.rbd_device*, %struct.rbd_device** %7, align 8
  store %struct.rbd_device* %8, %struct.rbd_device** %3, align 8
  %9 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %2, align 8
  %10 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %1
  %15 = load %struct.rbd_obj_request*, %struct.rbd_obj_request** %2, align 8
  %16 = getelementptr inbounds %struct.rbd_obj_request, %struct.rbd_obj_request* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.rbd_device*, %struct.rbd_device** %3, align 8
  %20 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %18, %22
  br label %24

24:                                               ; preds = %14, %1
  %25 = phi i1 [ false, %1 ], [ %23, %14 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
