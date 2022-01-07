; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bio.c_generic_end_io_acct.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bio.c_generic_end_io_acct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.hd_struct = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@nsecs = common dso_local global i32* null, align 8
@time_in_queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generic_end_io_acct(%struct.request_queue* %0, i32 %1, %struct.hd_struct* %2, i64 %3) #0 {
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hd_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hd_struct* %2, %struct.hd_struct** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i64, i64* @jiffies, align 8
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = sub i64 %13, %14
  store i64 %15, i64* %10, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @op_stat_group(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = call i32 (...) @part_stat_lock()
  %19 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @update_io_ticks(%struct.hd_struct* %19, i64 %20)
  %22 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %23 = load i32*, i32** @nsecs, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %10, align 8
  %29 = call i64 @jiffies_to_nsecs(i64 %28)
  %30 = call i32 @part_stat_add(%struct.hd_struct* %22, i32 %27, i64 %29)
  %31 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %32 = load i32, i32* @time_in_queue, align 4
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @part_stat_add(%struct.hd_struct* %31, i32 %32, i64 %33)
  %35 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %36 = load %struct.hd_struct*, %struct.hd_struct** %7, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @op_is_write(i32 %37)
  %39 = call i32 @part_dec_in_flight(%struct.request_queue* %35, %struct.hd_struct* %36, i32 %38)
  %40 = call i32 (...) @part_stat_unlock()
  ret void
}

declare dso_local i32 @op_stat_group(i32) #1

declare dso_local i32 @part_stat_lock(...) #1

declare dso_local i32 @update_io_ticks(%struct.hd_struct*, i64) #1

declare dso_local i32 @part_stat_add(%struct.hd_struct*, i32, i64) #1

declare dso_local i64 @jiffies_to_nsecs(i64) #1

declare dso_local i32 @part_dec_in_flight(%struct.request_queue*, %struct.hd_struct*, i32) #1

declare dso_local i32 @op_is_write(i32) #1

declare dso_local i32 @part_stat_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
