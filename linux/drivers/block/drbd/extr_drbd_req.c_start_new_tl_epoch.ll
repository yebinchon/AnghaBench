; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_start_new_tl_epoch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_start_new_tl_epoch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_connection = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_new_tl_epoch(%struct.drbd_connection* %0) #0 {
  %2 = alloca %struct.drbd_connection*, align 8
  store %struct.drbd_connection* %0, %struct.drbd_connection** %2, align 8
  %3 = load %struct.drbd_connection*, %struct.drbd_connection** %2, align 8
  %4 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %16

8:                                                ; preds = %1
  %9 = load %struct.drbd_connection*, %struct.drbd_connection** %2, align 8
  %10 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.drbd_connection*, %struct.drbd_connection** %2, align 8
  %12 = getelementptr inbounds %struct.drbd_connection, %struct.drbd_connection* %11, i32 0, i32 1
  %13 = call i32 @atomic_inc(i32* %12)
  %14 = load %struct.drbd_connection*, %struct.drbd_connection** %2, align 8
  %15 = call i32 @wake_all_senders(%struct.drbd_connection* %14)
  br label %16

16:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wake_all_senders(%struct.drbd_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
