; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_rwb_arm_timer.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_rwb_arm_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq_wb = type { i32, i32, i32, %struct.rq_depth }
%struct.rq_depth = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq_wb*)* @rwb_arm_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rwb_arm_timer(%struct.rq_wb* %0) #0 {
  %2 = alloca %struct.rq_wb*, align 8
  %3 = alloca %struct.rq_depth*, align 8
  store %struct.rq_wb* %0, %struct.rq_wb** %2, align 8
  %4 = load %struct.rq_wb*, %struct.rq_wb** %2, align 8
  %5 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %4, i32 0, i32 3
  store %struct.rq_depth* %5, %struct.rq_depth** %3, align 8
  %6 = load %struct.rq_depth*, %struct.rq_depth** %3, align 8
  %7 = getelementptr inbounds %struct.rq_depth, %struct.rq_depth* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load %struct.rq_wb*, %struct.rq_wb** %2, align 8
  %12 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 4
  %15 = load %struct.rq_depth*, %struct.rq_depth** %3, align 8
  %16 = getelementptr inbounds %struct.rq_depth, %struct.rq_depth* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  %19 = shl i32 %18, 8
  %20 = call i32 @int_sqrt(i32 %19)
  %21 = call i32 @div_u64(i32 %14, i32 %20)
  %22 = load %struct.rq_wb*, %struct.rq_wb** %2, align 8
  %23 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %30

24:                                               ; preds = %1
  %25 = load %struct.rq_wb*, %struct.rq_wb** %2, align 8
  %26 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rq_wb*, %struct.rq_wb** %2, align 8
  %29 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %24, %10
  %31 = load %struct.rq_wb*, %struct.rq_wb** %2, align 8
  %32 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rq_wb*, %struct.rq_wb** %2, align 8
  %35 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @blk_stat_activate_nsecs(i32 %33, i32 %36)
  ret void
}

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @int_sqrt(i32) #1

declare dso_local i32 @blk_stat_activate_nsecs(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
