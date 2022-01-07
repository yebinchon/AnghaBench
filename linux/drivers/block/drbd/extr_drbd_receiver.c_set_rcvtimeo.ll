; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_set_rcvtimeo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_set_rcvtimeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.net_conf = type { i64, i64 }

@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_connection*, i32)* @set_rcvtimeo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_rcvtimeo(%struct.drbd_connection* %0, i32 %1) #0 {
  %3 = alloca %struct.drbd_connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.net_conf*, align 8
  store %struct.drbd_connection* %0, %struct.drbd_connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @rcu_read_lock()
  %8 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %9 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.net_conf* @rcu_dereference(i32 %10)
  store %struct.net_conf* %11, %struct.net_conf** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.net_conf*, %struct.net_conf** %6, align 8
  %16 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.net_conf*, %struct.net_conf** %6, align 8
  %20 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i64 [ %17, %14 ], [ %21, %18 ]
  store i64 %23, i64* %5, align 8
  %24 = call i32 (...) @rcu_read_unlock()
  %25 = load i64, i64* @HZ, align 8
  %26 = load i64, i64* %5, align 8
  %27 = mul nsw i64 %26, %25
  store i64 %27, i64* %5, align 8
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i64, i64* %5, align 8
  %32 = sdiv i64 %31, 10
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %30, %22
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.drbd_connection*, %struct.drbd_connection** %3, align 8
  %36 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i64 %34, i64* %41, align 8
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_conf* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
