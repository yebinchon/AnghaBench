; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_actlog.c_drbd_al_shrink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_actlog.c_drbd_al_shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.lc_element = type { i64 }

@__LC_LOCKED = common dso_local global i32 0, align 4
@LC_FREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drbd_al_shrink(%struct.drbd_device* %0) #0 {
  %2 = alloca %struct.drbd_device*, align 8
  %3 = alloca %struct.lc_element*, align 8
  %4 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %2, align 8
  %5 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %6 = load i32, i32* @__LC_LOCKED, align 4
  %7 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %8 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = call i32 @test_bit(i32 %6, i32* %10)
  %12 = call i32 @D_ASSERT(%struct.drbd_device* %5, i32 %11)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %41, %1
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %16 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %14, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %13
  %22 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %23 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call %struct.lc_element* @lc_element_by_index(%struct.TYPE_2__* %24, i32 %25)
  store %struct.lc_element* %26, %struct.lc_element** %3, align 8
  %27 = load %struct.lc_element*, %struct.lc_element** %3, align 8
  %28 = getelementptr inbounds %struct.lc_element, %struct.lc_element* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LC_FREE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %41

33:                                               ; preds = %21
  %34 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %35 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %38 = load %struct.lc_element*, %struct.lc_element** %3, align 8
  %39 = call i32 @_try_lc_del(%struct.drbd_device* %37, %struct.lc_element* %38)
  %40 = call i32 @wait_event(i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %33, %32
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %13

44:                                               ; preds = %13
  %45 = load %struct.drbd_device*, %struct.drbd_device** %2, align 8
  %46 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %45, i32 0, i32 0
  %47 = call i32 @wake_up(i32* %46)
  ret void
}

declare dso_local i32 @D_ASSERT(%struct.drbd_device*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.lc_element* @lc_element_by_index(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @_try_lc_del(%struct.drbd_device*, %struct.lc_element*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
