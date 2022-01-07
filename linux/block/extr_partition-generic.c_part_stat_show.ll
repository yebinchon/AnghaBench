; ModuleID = '/home/carl/AnghaBench/linux/block/extr_partition-generic.c_part_stat_show.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_partition-generic.c_part_stat_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.hd_struct = type { i32 }
%struct.request_queue = type { i32 }
%struct.TYPE_2__ = type { %struct.request_queue* }

@.str = private unnamed_addr constant [73 x i8] c"%8lu %8lu %8llu %8u %8lu %8lu %8llu %8u %8u %8u %8u %8lu %8lu %8llu %8u\0A\00", align 1
@ios = common dso_local global i32* null, align 8
@STAT_READ = common dso_local global i64 0, align 8
@merges = common dso_local global i32* null, align 8
@sectors = common dso_local global i32* null, align 8
@STAT_WRITE = common dso_local global i64 0, align 8
@io_ticks = common dso_local global i32 0, align 4
@time_in_queue = common dso_local global i32 0, align 4
@STAT_DISCARD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @part_stat_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hd_struct*, align 8
  %8 = alloca %struct.request_queue*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.hd_struct* @dev_to_part(%struct.device* %10)
  store %struct.hd_struct* %11, %struct.hd_struct** %7, align 8
  %12 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %13 = call %struct.TYPE_2__* @part_to_disk(%struct.hd_struct* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.request_queue*, %struct.request_queue** %14, align 8
  store %struct.request_queue* %15, %struct.request_queue** %8, align 8
  %16 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %17 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %18 = call i32 @part_in_flight(%struct.request_queue* %16, %struct.hd_struct* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %21 = load i32*, i32** @ios, align 8
  %22 = load i64, i64* @STAT_READ, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @part_stat_read(%struct.hd_struct* %20, i32 %24)
  %26 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %27 = load i32*, i32** @merges, align 8
  %28 = load i64, i64* @STAT_READ, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @part_stat_read(%struct.hd_struct* %26, i32 %30)
  %32 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %33 = load i32*, i32** @sectors, align 8
  %34 = load i64, i64* @STAT_READ, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @part_stat_read(%struct.hd_struct* %32, i32 %36)
  %38 = sext i32 %37 to i64
  %39 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %40 = load i64, i64* @STAT_READ, align 8
  %41 = call i64 @part_stat_read_msecs(%struct.hd_struct* %39, i64 %40)
  %42 = trunc i64 %41 to i32
  %43 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %44 = load i32*, i32** @ios, align 8
  %45 = load i64, i64* @STAT_WRITE, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @part_stat_read(%struct.hd_struct* %43, i32 %47)
  %49 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %50 = load i32*, i32** @merges, align 8
  %51 = load i64, i64* @STAT_WRITE, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @part_stat_read(%struct.hd_struct* %49, i32 %53)
  %55 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %56 = load i32*, i32** @sectors, align 8
  %57 = load i64, i64* @STAT_WRITE, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @part_stat_read(%struct.hd_struct* %55, i32 %59)
  %61 = sext i32 %60 to i64
  %62 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %63 = load i64, i64* @STAT_WRITE, align 8
  %64 = call i64 @part_stat_read_msecs(%struct.hd_struct* %62, i64 %63)
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %68 = load i32, i32* @io_ticks, align 4
  %69 = call i32 @part_stat_read(%struct.hd_struct* %67, i32 %68)
  %70 = call i32 @jiffies_to_msecs(i32 %69)
  %71 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %72 = load i32, i32* @time_in_queue, align 4
  %73 = call i32 @part_stat_read(%struct.hd_struct* %71, i32 %72)
  %74 = call i32 @jiffies_to_msecs(i32 %73)
  %75 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %76 = load i32*, i32** @ios, align 8
  %77 = load i64, i64* @STAT_DISCARD, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @part_stat_read(%struct.hd_struct* %75, i32 %79)
  %81 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %82 = load i32*, i32** @merges, align 8
  %83 = load i64, i64* @STAT_DISCARD, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @part_stat_read(%struct.hd_struct* %81, i32 %85)
  %87 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %88 = load i32*, i32** @sectors, align 8
  %89 = load i64, i64* @STAT_DISCARD, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @part_stat_read(%struct.hd_struct* %87, i32 %91)
  %93 = sext i32 %92 to i64
  %94 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %95 = load i64, i64* @STAT_DISCARD, align 8
  %96 = call i64 @part_stat_read_msecs(%struct.hd_struct* %94, i64 %95)
  %97 = trunc i64 %96 to i32
  %98 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %31, i64 %38, i32 %42, i32 %48, i32 %54, i64 %61, i32 %65, i32 %66, i32 %70, i32 %74, i32 %80, i32 %86, i64 %93, i32 %97)
  ret i32 %98
}

declare dso_local %struct.hd_struct* @dev_to_part(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @part_to_disk(%struct.hd_struct*) #1

declare dso_local i32 @part_in_flight(%struct.request_queue*, %struct.hd_struct*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @part_stat_read(%struct.hd_struct*, i32) #1

declare dso_local i64 @part_stat_read_msecs(%struct.hd_struct*, i64) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
