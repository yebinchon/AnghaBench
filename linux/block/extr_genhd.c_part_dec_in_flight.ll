; ModuleID = '/home/carl/AnghaBench/linux/block/extr_genhd.c_part_dec_in_flight.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_genhd.c_part_dec_in_flight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.hd_struct = type { i64 }
%struct.TYPE_2__ = type { %struct.hd_struct }

@in_flight = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @part_dec_in_flight(%struct.request_queue* %0, %struct.hd_struct* %1, i32 %2) #0 {
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.hd_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.hd_struct* %1, %struct.hd_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %8 = call i64 @queue_is_mq(%struct.request_queue* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %33

11:                                               ; preds = %3
  %12 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %13 = load i32*, i32** @in_flight, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @part_stat_local_dec(%struct.hd_struct* %12, i32 %17)
  %19 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %20 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %11
  %24 = load %struct.hd_struct*, %struct.hd_struct** %5, align 8
  %25 = call %struct.TYPE_2__* @part_to_disk(%struct.hd_struct* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** @in_flight, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @part_stat_local_dec(%struct.hd_struct* %26, i32 %31)
  br label %33

33:                                               ; preds = %10, %23, %11
  ret void
}

declare dso_local i64 @queue_is_mq(%struct.request_queue*) #1

declare dso_local i32 @part_stat_local_dec(%struct.hd_struct*, i32) #1

declare dso_local %struct.TYPE_2__* @part_to_disk(%struct.hd_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
