; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_wbt_issue.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_wbt_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq_qos = type { i32 }
%struct.request = type { i64 }
%struct.rq_wb = type { i64, %struct.request* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq_qos*, %struct.request*)* @wbt_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbt_issue(%struct.rq_qos* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.rq_qos*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.rq_wb*, align 8
  store %struct.rq_qos* %0, %struct.rq_qos** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %6 = load %struct.rq_qos*, %struct.rq_qos** %3, align 8
  %7 = call %struct.rq_wb* @RQWB(%struct.rq_qos* %6)
  store %struct.rq_wb* %7, %struct.rq_wb** %5, align 8
  %8 = load %struct.rq_wb*, %struct.rq_wb** %5, align 8
  %9 = call i32 @rwb_enabled(%struct.rq_wb* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %30

12:                                               ; preds = %2
  %13 = load %struct.request*, %struct.request** %4, align 8
  %14 = call i64 @wbt_is_read(%struct.request* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %12
  %17 = load %struct.rq_wb*, %struct.rq_wb** %5, align 8
  %18 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = load %struct.request*, %struct.request** %4, align 8
  %23 = load %struct.rq_wb*, %struct.rq_wb** %5, align 8
  %24 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %23, i32 0, i32 1
  store %struct.request* %22, %struct.request** %24, align 8
  %25 = load %struct.request*, %struct.request** %4, align 8
  %26 = getelementptr inbounds %struct.request, %struct.request* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.rq_wb*, %struct.rq_wb** %5, align 8
  %29 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %11, %21, %16, %12
  ret void
}

declare dso_local %struct.rq_wb* @RQWB(%struct.rq_qos*) #1

declare dso_local i32 @rwb_enabled(%struct.rq_wb*) #1

declare dso_local i64 @wbt_is_read(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
