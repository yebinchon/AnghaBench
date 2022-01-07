; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c___drbd_make_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c___drbd_make_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32 }
%struct.bio = type { i32 }
%struct.drbd_request = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__drbd_make_request(%struct.drbd_device* %0, %struct.bio* %1, i64 %2) #0 {
  %4 = alloca %struct.drbd_device*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.drbd_request*, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %9 = load %struct.bio*, %struct.bio** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call %struct.drbd_request* @drbd_request_prepare(%struct.drbd_device* %8, %struct.bio* %9, i64 %10)
  store %struct.drbd_request* %11, %struct.drbd_request** %7, align 8
  %12 = load %struct.drbd_request*, %struct.drbd_request** %7, align 8
  %13 = call i64 @IS_ERR_OR_NULL(%struct.drbd_request* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %20

16:                                               ; preds = %3
  %17 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %18 = load %struct.drbd_request*, %struct.drbd_request** %7, align 8
  %19 = call i32 @drbd_send_and_submit(%struct.drbd_device* %17, %struct.drbd_request* %18)
  br label %20

20:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.drbd_request* @drbd_request_prepare(%struct.drbd_device*, %struct.bio*, i64) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.drbd_request*) #1

declare dso_local i32 @drbd_send_and_submit(%struct.drbd_device*, %struct.drbd_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
