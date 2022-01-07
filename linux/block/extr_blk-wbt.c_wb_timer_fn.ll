; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_wb_timer_fn.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_wb_timer_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_stat_callback = type { i32, %struct.rq_wb* }
%struct.rq_wb = type { i32, %struct.TYPE_4__, %struct.rq_depth }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rq_depth = type { i64 }

@RWB_UNKNOWN_BUMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blk_stat_callback*)* @wb_timer_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wb_timer_fn(%struct.blk_stat_callback* %0) #0 {
  %2 = alloca %struct.blk_stat_callback*, align 8
  %3 = alloca %struct.rq_wb*, align 8
  %4 = alloca %struct.rq_depth*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.blk_stat_callback* %0, %struct.blk_stat_callback** %2, align 8
  %7 = load %struct.blk_stat_callback*, %struct.blk_stat_callback** %2, align 8
  %8 = getelementptr inbounds %struct.blk_stat_callback, %struct.blk_stat_callback* %7, i32 0, i32 1
  %9 = load %struct.rq_wb*, %struct.rq_wb** %8, align 8
  store %struct.rq_wb* %9, %struct.rq_wb** %3, align 8
  %10 = load %struct.rq_wb*, %struct.rq_wb** %3, align 8
  %11 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %10, i32 0, i32 2
  store %struct.rq_depth* %11, %struct.rq_depth** %4, align 8
  %12 = load %struct.rq_wb*, %struct.rq_wb** %3, align 8
  %13 = call i32 @wbt_inflight(%struct.rq_wb* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.rq_wb*, %struct.rq_wb** %3, align 8
  %15 = load %struct.blk_stat_callback*, %struct.blk_stat_callback** %2, align 8
  %16 = getelementptr inbounds %struct.blk_stat_callback, %struct.blk_stat_callback* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @latency_exceeded(%struct.rq_wb* %14, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.rq_wb*, %struct.rq_wb** %3, align 8
  %20 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.rq_depth*, %struct.rq_depth** %4, align 8
  %27 = getelementptr inbounds %struct.rq_depth, %struct.rq_depth* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @trace_wbt_timer(i32 %24, i32 %25, i64 %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %67 [
    i32 131, label %32
    i32 130, label %35
    i32 128, label %38
    i32 129, label %41
  ]

32:                                               ; preds = %1
  %33 = load %struct.rq_wb*, %struct.rq_wb** %3, align 8
  %34 = call i32 @scale_down(%struct.rq_wb* %33, i32 1)
  br label %68

35:                                               ; preds = %1
  %36 = load %struct.rq_wb*, %struct.rq_wb** %3, align 8
  %37 = call i32 @scale_up(%struct.rq_wb* %36)
  br label %68

38:                                               ; preds = %1
  %39 = load %struct.rq_wb*, %struct.rq_wb** %3, align 8
  %40 = call i32 @scale_up(%struct.rq_wb* %39)
  br label %68

41:                                               ; preds = %1
  %42 = load %struct.rq_wb*, %struct.rq_wb** %3, align 8
  %43 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = load i32, i32* @RWB_UNKNOWN_BUMP, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %68

49:                                               ; preds = %41
  %50 = load %struct.rq_depth*, %struct.rq_depth** %4, align 8
  %51 = getelementptr inbounds %struct.rq_depth, %struct.rq_depth* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.rq_wb*, %struct.rq_wb** %3, align 8
  %56 = call i32 @scale_up(%struct.rq_wb* %55)
  br label %66

57:                                               ; preds = %49
  %58 = load %struct.rq_depth*, %struct.rq_depth** %4, align 8
  %59 = getelementptr inbounds %struct.rq_depth, %struct.rq_depth* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.rq_wb*, %struct.rq_wb** %3, align 8
  %64 = call i32 @scale_down(%struct.rq_wb* %63, i32 0)
  br label %65

65:                                               ; preds = %62, %57
  br label %66

66:                                               ; preds = %65, %54
  br label %68

67:                                               ; preds = %1
  br label %68

68:                                               ; preds = %67, %66, %48, %38, %35, %32
  %69 = load %struct.rq_depth*, %struct.rq_depth** %4, align 8
  %70 = getelementptr inbounds %struct.rq_depth, %struct.rq_depth* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73, %68
  %77 = load %struct.rq_wb*, %struct.rq_wb** %3, align 8
  %78 = call i32 @rwb_arm_timer(%struct.rq_wb* %77)
  br label %79

79:                                               ; preds = %76, %73
  ret void
}

declare dso_local i32 @wbt_inflight(%struct.rq_wb*) #1

declare dso_local i32 @latency_exceeded(%struct.rq_wb*, i32) #1

declare dso_local i32 @trace_wbt_timer(i32, i32, i64, i32) #1

declare dso_local i32 @scale_down(%struct.rq_wb*, i32) #1

declare dso_local i32 @scale_up(%struct.rq_wb*) #1

declare dso_local i32 @rwb_arm_timer(%struct.rq_wb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
