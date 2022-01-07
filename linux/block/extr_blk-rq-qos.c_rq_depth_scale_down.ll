; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-rq-qos.c_rq_depth_scale_down.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-rq-qos.c_rq_depth_scale_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq_depth = type { i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rq_depth_scale_down(%struct.rq_depth* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rq_depth*, align 8
  %5 = alloca i32, align 4
  store %struct.rq_depth* %0, %struct.rq_depth** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.rq_depth*, %struct.rq_depth** %4, align 8
  %7 = getelementptr inbounds %struct.rq_depth, %struct.rq_depth* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

11:                                               ; preds = %2
  %12 = load %struct.rq_depth*, %struct.rq_depth** %4, align 8
  %13 = getelementptr inbounds %struct.rq_depth, %struct.rq_depth* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.rq_depth*, %struct.rq_depth** %4, align 8
  %21 = getelementptr inbounds %struct.rq_depth, %struct.rq_depth* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  br label %27

22:                                               ; preds = %16, %11
  %23 = load %struct.rq_depth*, %struct.rq_depth** %4, align 8
  %24 = getelementptr inbounds %struct.rq_depth, %struct.rq_depth* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  br label %27

27:                                               ; preds = %22, %19
  %28 = load %struct.rq_depth*, %struct.rq_depth** %4, align 8
  %29 = getelementptr inbounds %struct.rq_depth, %struct.rq_depth* %28, i32 0, i32 2
  store i32 0, i32* %29, align 8
  %30 = load %struct.rq_depth*, %struct.rq_depth** %4, align 8
  %31 = call i32 @rq_depth_calc_max_depth(%struct.rq_depth* %30)
  store i32 1, i32* %3, align 4
  br label %32

32:                                               ; preds = %27, %10
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @rq_depth_calc_max_depth(%struct.rq_depth*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
