; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_actlog.c_drbd_rs_begin_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_actlog.c_drbd_rs_begin_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32, i32, i32, i32 }
%struct.bm_extent = type { i64, i32 }

@EINTR = common dso_local global i32 0, align 4
@BME_LOCKED = common dso_local global i32 0, align 4
@AL_EXT_PER_BM_SECT = common dso_local global i32 0, align 4
@BME_PRIORITY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_rs_begin_io(%struct.drbd_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drbd_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bm_extent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @BM_SECT_TO_EXT(i32 %11)
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %116, %2
  %14 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %15 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.bm_extent* @_bme_get(%struct.drbd_device* %17, i32 %18)
  store %struct.bm_extent* %19, %struct.bm_extent** %7, align 8
  %20 = call i32 (i32, ...) @wait_event_interruptible(i32 %16, %struct.bm_extent* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load i32, i32* @EINTR, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %126

26:                                               ; preds = %13
  %27 = load i32, i32* @BME_LOCKED, align 4
  %28 = load %struct.bm_extent*, %struct.bm_extent** %7, align 8
  %29 = getelementptr inbounds %struct.bm_extent, %struct.bm_extent* %28, i32 0, i32 0
  %30 = call i64 @test_bit(i32 %27, i64* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %126

33:                                               ; preds = %26
  %34 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %35 = call i32 @drbd_rs_c_min_rate_throttle(%struct.drbd_device* %34)
  store i32 %35, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %118, %33
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @AL_EXT_PER_BM_SECT, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %121

40:                                               ; preds = %36
  %41 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %42 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @AL_EXT_PER_BM_SECT, align 4
  %47 = mul i32 %45, %46
  %48 = load i32, i32* %8, align 4
  %49 = add i32 %47, %48
  %50 = call i32 @_is_in_al(%struct.drbd_device* %44, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %40
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* @BME_PRIORITY, align 4
  %57 = load %struct.bm_extent*, %struct.bm_extent** %7, align 8
  %58 = getelementptr inbounds %struct.bm_extent, %struct.bm_extent* %57, i32 0, i32 0
  %59 = call i64 @test_bit(i32 %56, i64* %58)
  %60 = icmp ne i64 %59, 0
  br label %61

61:                                               ; preds = %55, %52
  %62 = phi i1 [ false, %52 ], [ %60, %55 ]
  br label %63

63:                                               ; preds = %61, %40
  %64 = phi i1 [ true, %40 ], [ %62, %61 ]
  %65 = zext i1 %64 to i32
  %66 = call i32 (i32, ...) @wait_event_interruptible(i32 %43, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %117

72:                                               ; preds = %69
  %73 = load i32, i32* @BME_PRIORITY, align 4
  %74 = load %struct.bm_extent*, %struct.bm_extent** %7, align 8
  %75 = getelementptr inbounds %struct.bm_extent, %struct.bm_extent* %74, i32 0, i32 0
  %76 = call i64 @test_bit(i32 %73, i64* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %117

78:                                               ; preds = %72, %63
  %79 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %80 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %79, i32 0, i32 0
  %81 = call i32 @spin_lock_irq(i32* %80)
  %82 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %83 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.bm_extent*, %struct.bm_extent** %7, align 8
  %86 = getelementptr inbounds %struct.bm_extent, %struct.bm_extent* %85, i32 0, i32 1
  %87 = call i64 @lc_put(i32 %84, i32* %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %78
  %90 = load %struct.bm_extent*, %struct.bm_extent** %7, align 8
  %91 = getelementptr inbounds %struct.bm_extent, %struct.bm_extent* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %93 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %93, align 4
  %96 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %97 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %96, i32 0, i32 1
  %98 = call i32 @wake_up(i32* %97)
  br label %99

99:                                               ; preds = %89, %78
  %100 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %101 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %100, i32 0, i32 0
  %102 = call i32 @spin_unlock_irq(i32* %101)
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i32, i32* @EINTR, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %126

108:                                              ; preds = %99
  %109 = load i32, i32* @HZ, align 4
  %110 = sdiv i32 %109, 10
  %111 = call i64 @schedule_timeout_interruptible(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i32, i32* @EINTR, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %126

116:                                              ; preds = %108
  br label %13

117:                                              ; preds = %72, %69
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %36

121:                                              ; preds = %36
  %122 = load i32, i32* @BME_LOCKED, align 4
  %123 = load %struct.bm_extent*, %struct.bm_extent** %7, align 8
  %124 = getelementptr inbounds %struct.bm_extent, %struct.bm_extent* %123, i32 0, i32 0
  %125 = call i32 @set_bit(i32 %122, i64* %124)
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %121, %113, %105, %32, %23
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @BM_SECT_TO_EXT(i32) #1

declare dso_local i32 @wait_event_interruptible(i32, ...) #1

declare dso_local %struct.bm_extent* @_bme_get(%struct.drbd_device*, i32) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @drbd_rs_c_min_rate_throttle(%struct.drbd_device*) #1

declare dso_local i32 @_is_in_al(%struct.drbd_device*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @lc_put(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
