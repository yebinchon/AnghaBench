; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_int.h_drbd_state_is_stable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_int.h_drbd_state_is_stable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { %union.drbd_dev_state }
%union.drbd_dev_state = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_device*)* @drbd_state_is_stable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drbd_state_is_stable(%struct.drbd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drbd_device*, align 8
  %4 = alloca %union.drbd_dev_state, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %3, align 8
  %5 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %6 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %5, i32 0, i32 0
  %7 = bitcast %union.drbd_dev_state* %4 to i8*
  %8 = bitcast %union.drbd_dev_state* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 %8, i64 4, i1 false)
  %9 = bitcast %union.drbd_dev_state* %4 to i32*
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %23 [
    i32 152, label %11
    i32 140, label %11
    i32 159, label %11
    i32 149, label %11
    i32 148, label %11
    i32 144, label %11
    i32 143, label %11
    i32 155, label %11
    i32 154, label %11
    i32 162, label %11
    i32 161, label %11
    i32 158, label %11
    i32 145, label %11
    i32 146, label %11
    i32 160, label %11
    i32 156, label %11
    i32 153, label %11
    i32 147, label %11
    i32 139, label %11
    i32 151, label %11
    i32 150, label %11
    i32 142, label %12
    i32 141, label %22
    i32 138, label %22
    i32 157, label %22
  ]

11:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  br label %23

12:                                               ; preds = %1
  %13 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %14 = call %struct.TYPE_4__* @first_peer_device(%struct.drbd_device* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 96
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %29

21:                                               ; preds = %12
  br label %23

22:                                               ; preds = %1, %1, %1
  store i32 0, i32* %2, align 4
  br label %29

23:                                               ; preds = %1, %21, %11
  %24 = bitcast %union.drbd_dev_state* %4 to i32*
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %28 [
    i32 135, label %26
    i32 133, label %26
    i32 130, label %26
    i32 136, label %26
    i32 128, label %26
    i32 134, label %26
    i32 137, label %27
    i32 131, label %27
    i32 129, label %27
    i32 132, label %27
  ]

26:                                               ; preds = %23, %23, %23, %23, %23, %23
  br label %28

27:                                               ; preds = %23, %23, %23, %23
  store i32 0, i32* %2, align 4
  br label %29

28:                                               ; preds = %23, %26
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %27, %22, %20
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_4__* @first_peer_device(%struct.drbd_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
