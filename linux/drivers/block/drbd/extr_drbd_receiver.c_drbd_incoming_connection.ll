; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_drbd_incoming_connection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_receiver.c_drbd_incoming_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, %struct.accept_wait_data* }
%struct.accept_wait_data = type { {}*, i32 }

@TCP_ESTABLISHED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @drbd_incoming_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drbd_incoming_connection(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.accept_wait_data*, align 8
  %4 = alloca void (%struct.sock*)*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load %struct.sock*, %struct.sock** %2, align 8
  %6 = getelementptr inbounds %struct.sock, %struct.sock* %5, i32 0, i32 1
  %7 = load %struct.accept_wait_data*, %struct.accept_wait_data** %6, align 8
  store %struct.accept_wait_data* %7, %struct.accept_wait_data** %3, align 8
  %8 = load %struct.accept_wait_data*, %struct.accept_wait_data** %3, align 8
  %9 = getelementptr inbounds %struct.accept_wait_data, %struct.accept_wait_data* %8, i32 0, i32 0
  %10 = bitcast {}** %9 to void (%struct.sock*)**
  %11 = load void (%struct.sock*)*, void (%struct.sock*)** %10, align 8
  store void (%struct.sock*)* %11, void (%struct.sock*)** %4, align 8
  %12 = load %struct.sock*, %struct.sock** %2, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TCP_ESTABLISHED, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.accept_wait_data*, %struct.accept_wait_data** %3, align 8
  %19 = getelementptr inbounds %struct.accept_wait_data, %struct.accept_wait_data* %18, i32 0, i32 1
  %20 = call i32 @complete(i32* %19)
  br label %21

21:                                               ; preds = %17, %1
  %22 = load void (%struct.sock*)*, void (%struct.sock*)** %4, align 8
  %23 = load %struct.sock*, %struct.sock** %2, align 8
  call void %22(%struct.sock* %23)
  ret void
}

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
