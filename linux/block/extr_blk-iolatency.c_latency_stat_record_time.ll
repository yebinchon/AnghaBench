; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_latency_stat_record_time.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_latency_stat_record_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iolatency_grp = type { i32, i64, i32 }
%struct.latency_stat = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iolatency_grp*, i32)* @latency_stat_record_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @latency_stat_record_time(%struct.iolatency_grp* %0, i32 %1) #0 {
  %3 = alloca %struct.iolatency_grp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.latency_stat*, align 8
  store %struct.iolatency_grp* %0, %struct.iolatency_grp** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.iolatency_grp*, %struct.iolatency_grp** %3, align 8
  %7 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.latency_stat* @get_cpu_ptr(i32 %8)
  store %struct.latency_stat* %9, %struct.latency_stat** %5, align 8
  %10 = load %struct.iolatency_grp*, %struct.iolatency_grp** %3, align 8
  %11 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.iolatency_grp*, %struct.iolatency_grp** %3, align 8
  %17 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %15, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.latency_stat*, %struct.latency_stat** %5, align 8
  %22 = getelementptr inbounds %struct.latency_stat, %struct.latency_stat* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %14
  %27 = load %struct.latency_stat*, %struct.latency_stat** %5, align 8
  %28 = getelementptr inbounds %struct.latency_stat, %struct.latency_stat* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %37

32:                                               ; preds = %2
  %33 = load %struct.latency_stat*, %struct.latency_stat** %5, align 8
  %34 = getelementptr inbounds %struct.latency_stat, %struct.latency_stat* %33, i32 0, i32 0
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @blk_rq_stat_add(i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %26
  %38 = load %struct.latency_stat*, %struct.latency_stat** %5, align 8
  %39 = call i32 @put_cpu_ptr(%struct.latency_stat* %38)
  ret void
}

declare dso_local %struct.latency_stat* @get_cpu_ptr(i32) #1

declare dso_local i32 @blk_rq_stat_add(i32*, i32) #1

declare dso_local i32 @put_cpu_ptr(%struct.latency_stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
