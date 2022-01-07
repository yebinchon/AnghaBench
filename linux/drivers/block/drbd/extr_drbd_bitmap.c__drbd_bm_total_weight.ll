; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c__drbd_bm_total_weight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c__drbd_bm_total_weight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { %struct.drbd_bitmap* }
%struct.drbd_bitmap = type { i64, i32, %struct.drbd_bitmap* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_drbd_bm_total_weight(%struct.drbd_device* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.drbd_device*, align 8
  %4 = alloca %struct.drbd_bitmap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %3, align 8
  %7 = load %struct.drbd_device*, %struct.drbd_device** %3, align 8
  %8 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %7, i32 0, i32 0
  %9 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %8, align 8
  store %struct.drbd_bitmap* %9, %struct.drbd_bitmap** %4, align 8
  %10 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %4, align 8
  %11 = call i32 @expect(%struct.drbd_bitmap* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %34

14:                                               ; preds = %1
  %15 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %4, align 8
  %16 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %15, i32 0, i32 2
  %17 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %16, align 8
  %18 = call i32 @expect(%struct.drbd_bitmap* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store i64 0, i64* %2, align 8
  br label %34

21:                                               ; preds = %14
  %22 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %4, align 8
  %23 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %22, i32 0, i32 1
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %4, align 8
  %27 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %5, align 8
  %29 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %4, align 8
  %30 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %29, i32 0, i32 1
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load i64, i64* %5, align 8
  store i64 %33, i64* %2, align 8
  br label %34

34:                                               ; preds = %21, %20, %13
  %35 = load i64, i64* %2, align 8
  ret i64 %35
}

declare dso_local i32 @expect(%struct.drbd_bitmap*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
