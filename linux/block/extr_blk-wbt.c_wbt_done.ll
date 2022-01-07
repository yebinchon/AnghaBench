; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_wbt_done.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_wbt_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq_qos = type { i32 }
%struct.request = type { i32 }
%struct.rq_wb = type { %struct.request*, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq_qos*, %struct.request*)* @wbt_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbt_done(%struct.rq_qos* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.rq_qos*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.rq_wb*, align 8
  store %struct.rq_qos* %0, %struct.rq_qos** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %6 = load %struct.rq_qos*, %struct.rq_qos** %3, align 8
  %7 = call %struct.rq_wb* @RQWB(%struct.rq_qos* %6)
  store %struct.rq_wb* %7, %struct.rq_wb** %5, align 8
  %8 = load %struct.request*, %struct.request** %4, align 8
  %9 = call i32 @wbt_is_tracked(%struct.request* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %2
  %12 = load %struct.rq_wb*, %struct.rq_wb** %5, align 8
  %13 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %12, i32 0, i32 0
  %14 = load %struct.request*, %struct.request** %13, align 8
  %15 = load %struct.request*, %struct.request** %4, align 8
  %16 = icmp eq %struct.request* %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load %struct.rq_wb*, %struct.rq_wb** %5, align 8
  %19 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.rq_wb*, %struct.rq_wb** %5, align 8
  %21 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %20, i32 0, i32 0
  store %struct.request* null, %struct.request** %21, align 8
  br label %22

22:                                               ; preds = %17, %11
  %23 = load %struct.request*, %struct.request** %4, align 8
  %24 = call i64 @wbt_is_read(%struct.request* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.rq_wb*, %struct.rq_wb** %5, align 8
  %28 = load %struct.rq_wb*, %struct.rq_wb** %5, align 8
  %29 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %28, i32 0, i32 1
  %30 = call i32 @wb_timestamp(%struct.rq_wb* %27, i32* %29)
  br label %31

31:                                               ; preds = %26, %22
  br label %44

32:                                               ; preds = %2
  %33 = load %struct.request*, %struct.request** %4, align 8
  %34 = load %struct.rq_wb*, %struct.rq_wb** %5, align 8
  %35 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %34, i32 0, i32 0
  %36 = load %struct.request*, %struct.request** %35, align 8
  %37 = icmp eq %struct.request* %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @WARN_ON_ONCE(i32 %38)
  %40 = load %struct.rq_qos*, %struct.rq_qos** %3, align 8
  %41 = load %struct.request*, %struct.request** %4, align 8
  %42 = call i32 @wbt_flags(%struct.request* %41)
  %43 = call i32 @__wbt_done(%struct.rq_qos* %40, i32 %42)
  br label %44

44:                                               ; preds = %32, %31
  %45 = load %struct.request*, %struct.request** %4, align 8
  %46 = call i32 @wbt_clear_state(%struct.request* %45)
  ret void
}

declare dso_local %struct.rq_wb* @RQWB(%struct.rq_qos*) #1

declare dso_local i32 @wbt_is_tracked(%struct.request*) #1

declare dso_local i64 @wbt_is_read(%struct.request*) #1

declare dso_local i32 @wb_timestamp(%struct.rq_wb*, i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @__wbt_done(%struct.rq_qos*, i32) #1

declare dso_local i32 @wbt_flags(%struct.request*) #1

declare dso_local i32 @wbt_clear_state(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
