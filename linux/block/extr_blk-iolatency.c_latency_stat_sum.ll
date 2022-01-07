; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_latency_stat_sum.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_latency_stat_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iolatency_grp = type { i64 }
%struct.latency_stat = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iolatency_grp*, %struct.latency_stat*, %struct.latency_stat*)* @latency_stat_sum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @latency_stat_sum(%struct.iolatency_grp* %0, %struct.latency_stat* %1, %struct.latency_stat* %2) #0 {
  %4 = alloca %struct.iolatency_grp*, align 8
  %5 = alloca %struct.latency_stat*, align 8
  %6 = alloca %struct.latency_stat*, align 8
  store %struct.iolatency_grp* %0, %struct.iolatency_grp** %4, align 8
  store %struct.latency_stat* %1, %struct.latency_stat** %5, align 8
  store %struct.latency_stat* %2, %struct.latency_stat** %6, align 8
  %7 = load %struct.iolatency_grp*, %struct.iolatency_grp** %4, align 8
  %8 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %3
  %12 = load %struct.latency_stat*, %struct.latency_stat** %6, align 8
  %13 = getelementptr inbounds %struct.latency_stat, %struct.latency_stat* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.latency_stat*, %struct.latency_stat** %5, align 8
  %17 = getelementptr inbounds %struct.latency_stat, %struct.latency_stat* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, %15
  store i64 %20, i64* %18, align 8
  %21 = load %struct.latency_stat*, %struct.latency_stat** %6, align 8
  %22 = getelementptr inbounds %struct.latency_stat, %struct.latency_stat* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.latency_stat*, %struct.latency_stat** %5, align 8
  %26 = getelementptr inbounds %struct.latency_stat, %struct.latency_stat* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, %24
  store i64 %29, i64* %27, align 8
  br label %36

30:                                               ; preds = %3
  %31 = load %struct.latency_stat*, %struct.latency_stat** %5, align 8
  %32 = getelementptr inbounds %struct.latency_stat, %struct.latency_stat* %31, i32 0, i32 0
  %33 = load %struct.latency_stat*, %struct.latency_stat** %6, align 8
  %34 = getelementptr inbounds %struct.latency_stat, %struct.latency_stat* %33, i32 0, i32 0
  %35 = call i32 @blk_rq_stat_sum(i32* %32, i32* %34)
  br label %36

36:                                               ; preds = %30, %11
  ret void
}

declare dso_local i32 @blk_rq_stat_sum(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
