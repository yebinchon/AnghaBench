; ModuleID = '/home/carl/AnghaBench/linux/block/extr_partition-generic.c_part_inflight_show.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_partition-generic.c_part_inflight_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.hd_struct = type { i32 }
%struct.request_queue = type { i32 }
%struct.TYPE_2__ = type { %struct.request_queue* }

@.str = private unnamed_addr constant [9 x i8] c"%8u %8u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @part_inflight_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hd_struct*, align 8
  %8 = alloca %struct.request_queue*, align 8
  %9 = alloca [2 x i32], align 4
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
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %19 = call i32 @part_in_flight_rw(%struct.request_queue* %16, %struct.hd_struct* %17, i32* %18)
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24)
  ret i32 %25
}

declare dso_local %struct.hd_struct* @dev_to_part(%struct.device*) #1

declare dso_local %struct.TYPE_2__* @part_to_disk(%struct.hd_struct*) #1

declare dso_local i32 @part_in_flight_rw(%struct.request_queue*, %struct.hd_struct*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
