; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_wbt_wait.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_wbt_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq_qos = type { i32 }
%struct.bio = type { i32 }
%struct.rq_wb = type { i32, i32 }

@WBT_TRACKED = common dso_local global i32 0, align 4
@WBT_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq_qos*, %struct.bio*)* @wbt_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbt_wait(%struct.rq_qos* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.rq_qos*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.rq_wb*, align 8
  %6 = alloca i32, align 4
  store %struct.rq_qos* %0, %struct.rq_qos** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %7 = load %struct.rq_qos*, %struct.rq_qos** %3, align 8
  %8 = call %struct.rq_wb* @RQWB(%struct.rq_qos* %7)
  store %struct.rq_wb* %8, %struct.rq_wb** %5, align 8
  %9 = load %struct.rq_wb*, %struct.rq_wb** %5, align 8
  %10 = load %struct.bio*, %struct.bio** %4, align 8
  %11 = call i32 @bio_to_wbt_flags(%struct.rq_wb* %9, %struct.bio* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @WBT_TRACKED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @WBT_READ, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.rq_wb*, %struct.rq_wb** %5, align 8
  %23 = load %struct.rq_wb*, %struct.rq_wb** %5, align 8
  %24 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %23, i32 0, i32 1
  %25 = call i32 @wb_timestamp(%struct.rq_wb* %22, i32* %24)
  br label %26

26:                                               ; preds = %21, %16
  br label %42

27:                                               ; preds = %2
  %28 = load %struct.rq_wb*, %struct.rq_wb** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.bio*, %struct.bio** %4, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @__wbt_wait(%struct.rq_wb* %28, i32 %29, i32 %32)
  %34 = load %struct.rq_wb*, %struct.rq_wb** %5, align 8
  %35 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @blk_stat_is_active(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %27
  %40 = load %struct.rq_wb*, %struct.rq_wb** %5, align 8
  %41 = call i32 @rwb_arm_timer(%struct.rq_wb* %40)
  br label %42

42:                                               ; preds = %26, %39, %27
  ret void
}

declare dso_local %struct.rq_wb* @RQWB(%struct.rq_qos*) #1

declare dso_local i32 @bio_to_wbt_flags(%struct.rq_wb*, %struct.bio*) #1

declare dso_local i32 @wb_timestamp(%struct.rq_wb*, i32*) #1

declare dso_local i32 @__wbt_wait(%struct.rq_wb*, i32, i32) #1

declare dso_local i32 @blk_stat_is_active(i32) #1

declare dso_local i32 @rwb_arm_timer(%struct.rq_wb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
