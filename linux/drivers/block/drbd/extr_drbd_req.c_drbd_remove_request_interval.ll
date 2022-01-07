; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_drbd_remove_request_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_drbd_remove_request_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_root = type { i32 }
%struct.drbd_request = type { %struct.drbd_interval, %struct.drbd_device* }
%struct.drbd_interval = type { i64 }
%struct.drbd_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rb_root*, %struct.drbd_request*)* @drbd_remove_request_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drbd_remove_request_interval(%struct.rb_root* %0, %struct.drbd_request* %1) #0 {
  %3 = alloca %struct.rb_root*, align 8
  %4 = alloca %struct.drbd_request*, align 8
  %5 = alloca %struct.drbd_device*, align 8
  %6 = alloca %struct.drbd_interval*, align 8
  store %struct.rb_root* %0, %struct.rb_root** %3, align 8
  store %struct.drbd_request* %1, %struct.drbd_request** %4, align 8
  %7 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %8 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %7, i32 0, i32 1
  %9 = load %struct.drbd_device*, %struct.drbd_device** %8, align 8
  store %struct.drbd_device* %9, %struct.drbd_device** %5, align 8
  %10 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %11 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %10, i32 0, i32 0
  store %struct.drbd_interval* %11, %struct.drbd_interval** %6, align 8
  %12 = load %struct.rb_root*, %struct.rb_root** %3, align 8
  %13 = load %struct.drbd_interval*, %struct.drbd_interval** %6, align 8
  %14 = call i32 @drbd_remove_interval(%struct.rb_root* %12, %struct.drbd_interval* %13)
  %15 = load %struct.drbd_interval*, %struct.drbd_interval** %6, align 8
  %16 = getelementptr inbounds %struct.drbd_interval, %struct.drbd_interval* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %21 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %20, i32 0, i32 0
  %22 = call i32 @wake_up(i32* %21)
  br label %23

23:                                               ; preds = %19, %2
  ret void
}

declare dso_local i32 @drbd_remove_interval(%struct.rb_root*, %struct.drbd_interval*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
