; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_connection_established.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_connection_established.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { i32 }
%struct.socket = type { i32 }
%struct.net_conf = type { i32, i64 }

@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_connection*, %struct.socket**, %struct.socket**)* @connection_established to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connection_established(%struct.drbd_connection* %0, %struct.socket** %1, %struct.socket** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drbd_connection*, align 8
  %6 = alloca %struct.socket**, align 8
  %7 = alloca %struct.socket**, align 8
  %8 = alloca %struct.net_conf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drbd_connection* %0, %struct.drbd_connection** %5, align 8
  store %struct.socket** %1, %struct.socket*** %6, align 8
  store %struct.socket** %2, %struct.socket*** %7, align 8
  %11 = load %struct.socket**, %struct.socket*** %6, align 8
  %12 = load %struct.socket*, %struct.socket** %11, align 8
  %13 = icmp ne %struct.socket* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.socket**, %struct.socket*** %7, align 8
  %16 = load %struct.socket*, %struct.socket** %15, align 8
  %17 = icmp ne %struct.socket* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %57

19:                                               ; preds = %14
  %20 = call i32 (...) @rcu_read_lock()
  %21 = load %struct.drbd_connection*, %struct.drbd_connection** %5, align 8
  %22 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.net_conf* @rcu_dereference(i32 %23)
  store %struct.net_conf* %24, %struct.net_conf** %8, align 8
  %25 = load %struct.net_conf*, %struct.net_conf** %8, align 8
  %26 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %35

30:                                               ; preds = %19
  %31 = load %struct.net_conf*, %struct.net_conf** %8, align 8
  %32 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  br label %35

35:                                               ; preds = %30, %29
  %36 = phi i64 [ %27, %29 ], [ %34, %30 ]
  %37 = load i32, i32* @HZ, align 4
  %38 = sext i32 %37 to i64
  %39 = mul nsw i64 %36, %38
  %40 = sdiv i64 %39, 10
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %9, align 4
  %42 = call i32 (...) @rcu_read_unlock()
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @schedule_timeout_interruptible(i32 %43)
  %45 = load %struct.socket**, %struct.socket*** %6, align 8
  %46 = call i32 @drbd_socket_okay(%struct.socket** %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.socket**, %struct.socket*** %7, align 8
  %48 = call i32 @drbd_socket_okay(%struct.socket** %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %35
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %50, %35
  %54 = phi i1 [ false, %35 ], [ %52, %50 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %53, %18
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_conf* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @drbd_socket_okay(%struct.socket**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
