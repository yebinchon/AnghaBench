; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_actlog.c__al_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_actlog.c__al_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lc_element = type { i32 }
%struct.drbd_device = type { i32, i32, i32 }
%struct.bm_extent = type { i32 }

@BME_PRIORITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lc_element* (%struct.drbd_device*, i32, i32)* @_al_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lc_element* @_al_get(%struct.drbd_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lc_element*, align 8
  %5 = alloca %struct.drbd_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lc_element*, align 8
  %9 = alloca %struct.bm_extent*, align 8
  %10 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %12 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.bm_extent* @find_active_resync_extent(%struct.drbd_device* %14, i32 %15)
  store %struct.bm_extent* %16, %struct.bm_extent** %9, align 8
  %17 = load %struct.bm_extent*, %struct.bm_extent** %9, align 8
  %18 = icmp ne %struct.bm_extent* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %3
  %20 = load i32, i32* @BME_PRIORITY, align 4
  %21 = load %struct.bm_extent*, %struct.bm_extent** %9, align 8
  %22 = getelementptr inbounds %struct.bm_extent, %struct.bm_extent* %21, i32 0, i32 0
  %23 = call i32 @test_and_set_bit(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %28 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock_irq(i32* %28)
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %19
  %33 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %34 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %33, i32 0, i32 2
  %35 = call i32 @wake_up(i32* %34)
  br label %36

36:                                               ; preds = %32, %19
  store %struct.lc_element* null, %struct.lc_element** %4, align 8
  br label %57

37:                                               ; preds = %3
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %42 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call %struct.lc_element* @lc_try_get(i32 %43, i32 %44)
  store %struct.lc_element* %45, %struct.lc_element** %8, align 8
  br label %52

46:                                               ; preds = %37
  %47 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %48 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call %struct.lc_element* @lc_get(i32 %49, i32 %50)
  store %struct.lc_element* %51, %struct.lc_element** %8, align 8
  br label %52

52:                                               ; preds = %46, %40
  %53 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %54 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock_irq(i32* %54)
  %56 = load %struct.lc_element*, %struct.lc_element** %8, align 8
  store %struct.lc_element* %56, %struct.lc_element** %4, align 8
  br label %57

57:                                               ; preds = %52, %36
  %58 = load %struct.lc_element*, %struct.lc_element** %4, align 8
  ret %struct.lc_element* %58
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.bm_extent* @find_active_resync_extent(%struct.drbd_device*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local %struct.lc_element* @lc_try_get(i32, i32) #1

declare dso_local %struct.lc_element* @lc_get(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
