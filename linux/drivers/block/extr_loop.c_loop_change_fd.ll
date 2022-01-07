; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_loop_change_fd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_loop.c_loop_change_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { i64, i32, i32, i32, %struct.file* }
%struct.file = type { i32 }
%struct.block_device = type { i32 }

@loop_ctl_mutex = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@Lo_bound = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@LO_FLAGS_READ_ONLY = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@__GFP_IO = common dso_local global i32 0, align 4
@__GFP_FS = common dso_local global i32 0, align 4
@LO_FLAGS_PARTSCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop_device*, %struct.block_device*, i32)* @loop_change_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loop_change_fd(%struct.loop_device* %0, %struct.block_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.loop_device*, align 8
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.loop_device* %0, %struct.loop_device** %5, align 8
  store %struct.block_device* %1, %struct.block_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.file* null, %struct.file** %8, align 8
  %12 = call i32 @mutex_lock_killable(i32* @loop_ctl_mutex)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %4, align 4
  br label %128

17:                                               ; preds = %3
  %18 = load i32, i32* @ENXIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %21 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @Lo_bound, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %119

26:                                               ; preds = %17
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  %29 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %30 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @LO_FLAGS_READ_ONLY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  br label %119

36:                                               ; preds = %26
  %37 = load i32, i32* @EBADF, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call %struct.file* @fget(i32 %39)
  store %struct.file* %40, %struct.file** %8, align 8
  %41 = load %struct.file*, %struct.file** %8, align 8
  %42 = icmp ne %struct.file* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  br label %119

44:                                               ; preds = %36
  %45 = load %struct.file*, %struct.file** %8, align 8
  %46 = load %struct.block_device*, %struct.block_device** %6, align 8
  %47 = call i32 @loop_validate_file(%struct.file* %45, %struct.block_device* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %119

51:                                               ; preds = %44
  %52 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %53 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %52, i32 0, i32 4
  %54 = load %struct.file*, %struct.file** %53, align 8
  store %struct.file* %54, %struct.file** %9, align 8
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %10, align 4
  %57 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %58 = load %struct.file*, %struct.file** %8, align 8
  %59 = call i64 @get_loop_size(%struct.loop_device* %57, %struct.file* %58)
  %60 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %61 = load %struct.file*, %struct.file** %9, align 8
  %62 = call i64 @get_loop_size(%struct.loop_device* %60, %struct.file* %61)
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  br label %119

65:                                               ; preds = %51
  %66 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %67 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @blk_mq_freeze_queue(i32 %68)
  %70 = load %struct.file*, %struct.file** %9, align 8
  %71 = getelementptr inbounds %struct.file, %struct.file* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %74 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @mapping_set_gfp_mask(i32 %72, i32 %75)
  %77 = load %struct.file*, %struct.file** %8, align 8
  %78 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %79 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %78, i32 0, i32 4
  store %struct.file* %77, %struct.file** %79, align 8
  %80 = load %struct.file*, %struct.file** %8, align 8
  %81 = getelementptr inbounds %struct.file, %struct.file* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @mapping_gfp_mask(i32 %82)
  %84 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %85 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load %struct.file*, %struct.file** %8, align 8
  %87 = getelementptr inbounds %struct.file, %struct.file* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %90 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @__GFP_IO, align 4
  %93 = load i32, i32* @__GFP_FS, align 4
  %94 = or i32 %92, %93
  %95 = xor i32 %94, -1
  %96 = and i32 %91, %95
  %97 = call i32 @mapping_set_gfp_mask(i32 %88, i32 %96)
  %98 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %99 = call i32 @loop_update_dio(%struct.loop_device* %98)
  %100 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %101 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @blk_mq_unfreeze_queue(i32 %102)
  %104 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %105 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @LO_FLAGS_PARTSCAN, align 4
  %108 = and i32 %106, %107
  store i32 %108, i32* %11, align 4
  %109 = call i32 @mutex_unlock(i32* @loop_ctl_mutex)
  %110 = load %struct.file*, %struct.file** %9, align 8
  %111 = call i32 @fput(%struct.file* %110)
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %65
  %115 = load %struct.loop_device*, %struct.loop_device** %5, align 8
  %116 = load %struct.block_device*, %struct.block_device** %6, align 8
  %117 = call i32 @loop_reread_partitions(%struct.loop_device* %115, %struct.block_device* %116)
  br label %118

118:                                              ; preds = %114, %65
  store i32 0, i32* %4, align 4
  br label %128

119:                                              ; preds = %64, %50, %43, %35, %25
  %120 = call i32 @mutex_unlock(i32* @loop_ctl_mutex)
  %121 = load %struct.file*, %struct.file** %8, align 8
  %122 = icmp ne %struct.file* %121, null
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load %struct.file*, %struct.file** %8, align 8
  %125 = call i32 @fput(%struct.file* %124)
  br label %126

126:                                              ; preds = %123, %119
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %126, %118, %15
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @mutex_lock_killable(i32*) #1

declare dso_local %struct.file* @fget(i32) #1

declare dso_local i32 @loop_validate_file(%struct.file*, %struct.block_device*) #1

declare dso_local i64 @get_loop_size(%struct.loop_device*, %struct.file*) #1

declare dso_local i32 @blk_mq_freeze_queue(i32) #1

declare dso_local i32 @mapping_set_gfp_mask(i32, i32) #1

declare dso_local i32 @mapping_gfp_mask(i32) #1

declare dso_local i32 @loop_update_dio(%struct.loop_device*) #1

declare dso_local i32 @blk_mq_unfreeze_queue(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @loop_reread_partitions(%struct.loop_device*, %struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
