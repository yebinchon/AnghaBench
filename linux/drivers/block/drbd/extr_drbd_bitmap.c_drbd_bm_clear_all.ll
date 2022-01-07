; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c_drbd_bm_clear_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_bitmap.c_drbd_bm_clear_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { %struct.drbd_bitmap* }
%struct.drbd_bitmap = type { i32, i64, i32, %struct.drbd_bitmap* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drbd_bm_clear_all(%struct.drbd_device* %0) #0 {
  %2 = alloca %struct.drbd_device*, align 8
  %3 = alloca %struct.drbd_bitmap*, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %2, align 8
  %4 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %5 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %4, i32 0, i32 0
  %6 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %5, align 8
  store %struct.drbd_bitmap* %6, %struct.drbd_bitmap** %3, align 8
  %7 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %3, align 8
  %8 = call i32 @expect(%struct.drbd_bitmap* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %32

11:                                               ; preds = %1
  %12 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %3, align 8
  %13 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %12, i32 0, i32 3
  %14 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %13, align 8
  %15 = call i32 @expect(%struct.drbd_bitmap* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %32

18:                                               ; preds = %11
  %19 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %3, align 8
  %20 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_irq(i32* %20)
  %22 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %3, align 8
  %23 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %3, align 8
  %24 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @bm_memset(%struct.drbd_bitmap* %22, i32 0, i32 0, i32 %25)
  %27 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %3, align 8
  %28 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.drbd_bitmap*, %struct.drbd_bitmap** %3, align 8
  %30 = getelementptr inbounds %struct.drbd_bitmap, %struct.drbd_bitmap* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_irq(i32* %30)
  br label %32

32:                                               ; preds = %18, %17, %10
  ret void
}

declare dso_local i32 @expect(%struct.drbd_bitmap*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @bm_memset(%struct.drbd_bitmap*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
