; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_receive_first_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_receive_first_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.socket = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.packet_info = type { i32 }
%struct.net_conf = type { i32 }

@EIO = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_connection*, %struct.socket*)* @receive_first_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_first_packet(%struct.drbd_connection* %0, %struct.socket* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drbd_connection*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.packet_info, align 4
  %8 = alloca %struct.net_conf*, align 8
  %9 = alloca i32, align 4
  store %struct.drbd_connection* %0, %struct.drbd_connection** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  %10 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %11 = call i32 @drbd_header_size(%struct.drbd_connection* %10)
  store i32 %11, i32* %6, align 4
  %12 = call i32 (...) @rcu_read_lock()
  %13 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %14 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.net_conf* @rcu_dereference(i32 %15)
  store %struct.net_conf* %16, %struct.net_conf** %8, align 8
  %17 = load %struct.net_conf*, %struct.net_conf** %8, align 8
  %18 = icmp ne %struct.net_conf* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = call i32 (...) @rcu_read_unlock()
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %68

23:                                               ; preds = %2
  %24 = load %struct.net_conf*, %struct.net_conf** %8, align 8
  %25 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 4
  %28 = load i32, i32* @HZ, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sdiv i32 %29, 10
  %31 = load %struct.socket*, %struct.socket** %5, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  %35 = call i32 (...) @rcu_read_unlock()
  %36 = load %struct.socket*, %struct.socket** %5, align 8
  %37 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %38 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @drbd_recv_short(%struct.socket* %36, i32 %40, i32 %41, i32 0)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %23
  %47 = load i32, i32* %9, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %68

54:                                               ; preds = %23
  %55 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %56 = load %struct.drbd_connection*, %struct.drbd_connection** %4, align 8
  %57 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @decode_header(%struct.drbd_connection* %55, i32 %59, %struct.packet_info* %7)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %68

65:                                               ; preds = %54
  %66 = getelementptr inbounds %struct.packet_info, %struct.packet_info* %7, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %65, %63, %52, %19
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @drbd_header_size(%struct.drbd_connection*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_conf* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @drbd_recv_short(%struct.socket*, i32, i32, i32) #1

declare dso_local i32 @decode_header(%struct.drbd_connection*, i32, %struct.packet_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
