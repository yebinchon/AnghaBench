; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_calc_wb_limits.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-wbt.c_calc_wb_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq_wb = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq_wb*)* @calc_wb_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_wb_limits(%struct.rq_wb* %0) #0 {
  %2 = alloca %struct.rq_wb*, align 8
  store %struct.rq_wb* %0, %struct.rq_wb** %2, align 8
  %3 = load %struct.rq_wb*, %struct.rq_wb** %2, align 8
  %4 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.rq_wb*, %struct.rq_wb** %2, align 8
  %9 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %8, i32 0, i32 2
  store i32 0, i32* %9, align 4
  %10 = load %struct.rq_wb*, %struct.rq_wb** %2, align 8
  %11 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %10, i32 0, i32 1
  store i32 0, i32* %11, align 8
  br label %45

12:                                               ; preds = %1
  %13 = load %struct.rq_wb*, %struct.rq_wb** %2, align 8
  %14 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sle i32 %16, 2
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load %struct.rq_wb*, %struct.rq_wb** %2, align 8
  %20 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.rq_wb*, %struct.rq_wb** %2, align 8
  %24 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.rq_wb*, %struct.rq_wb** %2, align 8
  %26 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %25, i32 0, i32 2
  store i32 1, i32* %26, align 4
  br label %44

27:                                               ; preds = %12
  %28 = load %struct.rq_wb*, %struct.rq_wb** %2, align 8
  %29 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  %33 = sdiv i32 %32, 2
  %34 = load %struct.rq_wb*, %struct.rq_wb** %2, align 8
  %35 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.rq_wb*, %struct.rq_wb** %2, align 8
  %37 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 3
  %41 = sdiv i32 %40, 4
  %42 = load %struct.rq_wb*, %struct.rq_wb** %2, align 8
  %43 = getelementptr inbounds %struct.rq_wb, %struct.rq_wb* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %27, %18
  br label %45

45:                                               ; preds = %44, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
