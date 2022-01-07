; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_close_io.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_close_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq_wb = type { i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rq_wb*)* @close_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @close_io(%struct.rq_wb* %0) #0 {
  %2 = alloca %struct.rq_wb*, align 8
  %3 = alloca i64, align 8
  store %struct.rq_wb* %0, %struct.rq_wb** %2, align 8
  %4 = load i64, i64* @jiffies, align 8
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.rq_wb*, %struct.rq_wb** %2, align 8
  %7 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i32, i32* @HZ, align 4
  %10 = sdiv i32 %9, 10
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %8, %11
  %13 = call i64 @time_before(i64 %5, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %1
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.rq_wb*, %struct.rq_wb** %2, align 8
  %18 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @HZ, align 4
  %21 = sdiv i32 %20, 10
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  %24 = call i64 @time_before(i64 %16, i64 %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %15, %1
  %27 = phi i1 [ true, %1 ], [ %25, %15 ]
  %28 = zext i1 %27 to i32
  ret i32 %28
}

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
