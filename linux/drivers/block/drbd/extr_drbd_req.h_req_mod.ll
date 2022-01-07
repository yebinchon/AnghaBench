; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.h_req_mod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.h_req_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_request = type { %struct.drbd_device* }
%struct.drbd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bio_and_error = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_request*, i32)* @req_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @req_mod(%struct.drbd_request* %0, i32 %1) #0 {
  %3 = alloca %struct.drbd_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.drbd_device*, align 8
  %7 = alloca %struct.bio_and_error, align 8
  %8 = alloca i32, align 4
  store %struct.drbd_request* %0, %struct.drbd_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %10 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %9, i32 0, i32 0
  %11 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  store %struct.drbd_device* %11, %struct.drbd_device** %6, align 8
  %12 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %13 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.drbd_request*, %struct.drbd_request** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @__req_mod(%struct.drbd_request* %18, i32 %19, %struct.bio_and_error* %7)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %22 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  %27 = getelementptr inbounds %struct.bio_and_error, %struct.bio_and_error* %7, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %32 = call i32 @complete_master_bio(%struct.drbd_device* %31, %struct.bio_and_error* %7)
  br label %33

33:                                               ; preds = %30, %2
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__req_mod(%struct.drbd_request*, i32, %struct.bio_and_error*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @complete_master_bio(%struct.drbd_device*, %struct.bio_and_error*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
