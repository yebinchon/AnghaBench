; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_int.h_drbd_read_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_int.h_drbd_read_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { %struct.TYPE_2__, %struct.drbd_resource* }
%struct.TYPE_2__ = type { i32 }
%struct.drbd_resource = type { i32, i32, i32 }
%union.drbd_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_device*)* @drbd_read_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drbd_read_state(%struct.drbd_device* %0) #0 {
  %2 = alloca %union.drbd_state, align 4
  %3 = alloca %struct.drbd_device*, align 8
  %4 = alloca %struct.drbd_resource*, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %3, align 8
  %5 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %6 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %5, i32 0, i32 1
  %7 = load %struct.drbd_resource*, %struct.drbd_resource** %6, align 8
  store %struct.drbd_resource* %7, %struct.drbd_resource** %4, align 8
  %8 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %9 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = bitcast %union.drbd_state* %2 to i32*
  store i32 %11, i32* %12, align 4
  %13 = load %struct.drbd_resource*, %struct.drbd_resource** %4, align 8
  %14 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = bitcast %union.drbd_state* %2 to i32*
  store i32 %15, i32* %16, align 4
  %17 = load %struct.drbd_resource*, %struct.drbd_resource** %4, align 8
  %18 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = bitcast %union.drbd_state* %2 to i32*
  store i32 %19, i32* %20, align 4
  %21 = load %struct.drbd_resource*, %struct.drbd_resource** %4, align 8
  %22 = getelementptr inbounds %struct.drbd_resource, %struct.drbd_resource* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = bitcast %union.drbd_state* %2 to i32*
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %2, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
