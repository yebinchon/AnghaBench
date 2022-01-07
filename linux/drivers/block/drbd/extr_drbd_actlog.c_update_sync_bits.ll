; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_actlog.c_update_sync_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_actlog.c_update_sync_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i64, i32, i32 }

@BM_BLOCKS_PER_BM_EXT_MASK = common dso_local global i64 0, align 8
@RECORD_RS_FAILED = common dso_local global i32 0, align 4
@SET_IN_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_device*, i64, i64, i32)* @update_sync_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_sync_bits(%struct.drbd_device* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.drbd_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %74, %4
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ule i64 %17, %18
  br i1 %19, label %20, label %77

20:                                               ; preds = %16
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @BM_BLOCKS_PER_BM_EXT_MASK, align 8
  %24 = or i64 %22, %23
  %25 = call i64 @min(i64 %21, i64 %24)
  store i64 %25, i64* %12, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @RECORD_RS_FAILED, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call i64 @drbd_bm_count_bits(%struct.drbd_device* %30, i64 %31, i64 %32)
  store i64 %33, i64* %13, align 8
  br label %49

34:                                               ; preds = %20
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @SET_IN_SYNC, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i64 @drbd_bm_clear_bits(%struct.drbd_device* %39, i64 %40, i64 %41)
  store i64 %42, i64* %13, align 8
  br label %48

43:                                               ; preds = %34
  %44 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %12, align 8
  %47 = call i64 @drbd_bm_set_bits(%struct.drbd_device* %44, i64 %45, i64 %46)
  store i64 %47, i64* %13, align 8
  br label %48

48:                                               ; preds = %43, %38
  br label %49

49:                                               ; preds = %48, %29
  %50 = load i64, i64* %13, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %49
  %53 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %54 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %53, i32 0, i32 2
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @spin_lock_irqsave(i32* %54, i64 %55)
  %57 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @BM_BIT_TO_EXT(i64 %58)
  %60 = load i64, i64* %13, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i64 @update_rs_extent(%struct.drbd_device* %57, i32 %59, i64 %60, i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = zext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %11, align 4
  %67 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %68 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %67, i32 0, i32 2
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* %10, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %10, align 8
  br label %74

74:                                               ; preds = %52, %49
  %75 = load i64, i64* %12, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %6, align 8
  br label %16

77:                                               ; preds = %16
  %78 = load i64, i64* %10, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %121

80:                                               ; preds = %77
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @SET_IN_SYNC, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %106

84:                                               ; preds = %80
  %85 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %86 = call i64 @drbd_bm_total_weight(%struct.drbd_device* %85)
  store i64 %86, i64* %14, align 8
  %87 = load i64, i64* %14, align 8
  %88 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %89 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ule i64 %87, %90
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %15, align 4
  %93 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %94 = load i64, i64* %14, align 8
  %95 = call i32 @drbd_advance_rs_marks(%struct.drbd_device* %93, i64 %94)
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %84
  %99 = load i32, i32* %15, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98, %84
  %102 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %103 = load i32, i32* %15, align 4
  %104 = call i32 @maybe_schedule_on_disk_bitmap_update(%struct.drbd_device* %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %98
  br label %117

106:                                              ; preds = %80
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @RECORD_RS_FAILED, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = load i64, i64* %10, align 8
  %112 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %113 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add i64 %114, %111
  store i64 %115, i64* %113, align 8
  br label %116

116:                                              ; preds = %110, %106
  br label %117

117:                                              ; preds = %116, %105
  %118 = load %struct.drbd_device*, %struct.drbd_device** %5, align 8
  %119 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %118, i32 0, i32 1
  %120 = call i32 @wake_up(i32* %119)
  br label %121

121:                                              ; preds = %117, %77
  %122 = load i64, i64* %10, align 8
  %123 = trunc i64 %122 to i32
  ret i32 %123
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @drbd_bm_count_bits(%struct.drbd_device*, i64, i64) #1

declare dso_local i64 @drbd_bm_clear_bits(%struct.drbd_device*, i64, i64) #1

declare dso_local i64 @drbd_bm_set_bits(%struct.drbd_device*, i64, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @update_rs_extent(%struct.drbd_device*, i32, i64, i32) #1

declare dso_local i32 @BM_BIT_TO_EXT(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @drbd_bm_total_weight(%struct.drbd_device*) #1

declare dso_local i32 @drbd_advance_rs_marks(%struct.drbd_device*, i64) #1

declare dso_local i32 @maybe_schedule_on_disk_bitmap_update(%struct.drbd_device*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
