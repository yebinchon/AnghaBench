; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_conn_lowest_minor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_main.c_conn_lowest_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { i32 }
%struct.drbd_peer_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @conn_lowest_minor(%struct.drbd_connection* %0) #0 {
  %2 = alloca %struct.drbd_connection*, align 8
  %3 = alloca %struct.drbd_peer_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drbd_connection* %0, %struct.drbd_connection** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 -1, i32* %5, align 4
  %6 = call i32 (...) @rcu_read_lock()
  %7 = load %struct.drbd_connection*, %struct.drbd_connection** %2, align 8
  %8 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %7, i32 0, i32 0
  %9 = call %struct.drbd_peer_device* @idr_get_next(i32* %8, i32* %4)
  store %struct.drbd_peer_device* %9, %struct.drbd_peer_device** %3, align 8
  %10 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %3, align 8
  %11 = icmp ne %struct.drbd_peer_device* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %3, align 8
  %14 = getelementptr inbounds %struct.drbd_peer_device, %struct.drbd_peer_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @device_to_minor(i32 %15)
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %12, %1
  %18 = call i32 (...) @rcu_read_unlock()
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.drbd_peer_device* @idr_get_next(i32*, i32*) #1

declare dso_local i32 @device_to_minor(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
