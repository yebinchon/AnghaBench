; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_rwb_sync_issue_lat.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_rwb_sync_issue_lat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq_wb = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rq_wb*)* @rwb_sync_issue_lat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rwb_sync_issue_lat(%struct.rq_wb* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.rq_wb*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.rq_wb* %0, %struct.rq_wb** %3, align 8
  %6 = load %struct.rq_wb*, %struct.rq_wb** %3, align 8
  %7 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @READ_ONCE(i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.rq_wb*, %struct.rq_wb** %3, align 8
  %14 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %1
  store i64 0, i64* %2, align 8
  br label %24

18:                                               ; preds = %12
  %19 = call i32 (...) @ktime_get()
  %20 = call i64 @ktime_to_ns(i32 %19)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = sub nsw i64 %21, %22
  store i64 %23, i64* %2, align 8
  br label %24

24:                                               ; preds = %18, %17
  %25 = load i64, i64* %2, align 8
  ret i64 %25
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
