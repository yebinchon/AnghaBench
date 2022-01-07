; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.h__req_mod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.h__req_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_request = type { %struct.drbd_device* }
%struct.drbd_device = type { i32 }
%struct.bio_and_error = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_request*, i32)* @_req_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_req_mod(%struct.drbd_request* %0, i32 %1) #0 {
  %3 = alloca %struct.drbd_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drbd_device*, align 8
  %6 = alloca %struct.bio_and_error, align 8
  %7 = alloca i32, align 4
  store %struct.drbd_request* %0, %struct.drbd_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %9 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %8, i32 0, i32 0
  %10 = load %struct.drbd_device*, %struct.drbd_device** %9, align 8
  store %struct.drbd_device* %10, %struct.drbd_device** %5, align 8
  %11 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @__req_mod(%struct.drbd_request* %11, i32 %12, %struct.bio_and_error* %6)
  store i32 %13, i32* %7, align 4
  %14 = getelementptr inbounds %struct.bio_and_error, %struct.bio_and_error* %6, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %19 = call i32 @complete_master_bio(%struct.drbd_device* %18, %struct.bio_and_error* %6)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i32, i32* %7, align 4
  ret i32 %21
}

declare dso_local i32 @__req_mod(%struct.drbd_request*, i32, %struct.bio_and_error*) #1

declare dso_local i32 @complete_master_bio(%struct.drbd_device*, %struct.bio_and_error*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
