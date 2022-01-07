; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_set_if_null_req_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_set_if_null_req_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_peer_device = type { %struct.drbd_connection* }
%struct.drbd_connection = type { %struct.drbd_request* }
%struct.drbd_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_peer_device*, %struct.drbd_request*)* @set_if_null_req_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_if_null_req_next(%struct.drbd_peer_device* %0, %struct.drbd_request* %1) #0 {
  %3 = alloca %struct.drbd_peer_device*, align 8
  %4 = alloca %struct.drbd_request*, align 8
  %5 = alloca %struct.drbd_connection*, align 8
  store %struct.drbd_peer_device* %0, %struct.drbd_peer_device** %3, align 8
  store %struct.drbd_request* %1, %struct.drbd_request** %4, align 8
  %6 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %3, align 8
  %7 = icmp ne %struct.drbd_peer_device* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %3, align 8
  %10 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %9, i32 0, i32 0
  %11 = load %struct.drbd_connection*, %struct.drbd_connection** %10, align 8
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi %struct.drbd_connection* [ %11, %8 ], [ null, %12 ]
  store %struct.drbd_connection* %14, %struct.drbd_connection** %5, align 8
  %15 = load %struct.drbd_connection*, %struct.drbd_connection** %5, align 8
  %16 = icmp ne %struct.drbd_connection* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  br label %27

18:                                               ; preds = %13
  %19 = load %struct.drbd_connection*, %struct.drbd_connection** %5, align 8
  %20 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %19, i32 0, i32 0
  %21 = load %struct.drbd_request*, %struct.drbd_request** %20, align 8
  %22 = icmp eq %struct.drbd_request* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %25 = load %struct.drbd_connection*, %struct.drbd_connection** %5, align 8
  %26 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %25, i32 0, i32 0
  store %struct.drbd_request* %24, %struct.drbd_request** %26, align 8
  br label %27

27:                                               ; preds = %17, %23, %18
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
