; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_latency_sum_ok.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-iolatency.c_latency_sum_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iolatency_grp = type { i64, i64 }
%struct.latency_stat = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iolatency_grp*, %struct.latency_stat*)* @latency_sum_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @latency_sum_ok(%struct.iolatency_grp* %0, %struct.latency_stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iolatency_grp*, align 8
  %5 = alloca %struct.latency_stat*, align 8
  %6 = alloca i64, align 8
  store %struct.iolatency_grp* %0, %struct.iolatency_grp** %4, align 8
  store %struct.latency_stat* %1, %struct.latency_stat** %5, align 8
  %7 = load %struct.iolatency_grp*, %struct.iolatency_grp** %4, align 8
  %8 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.latency_stat*, %struct.latency_stat** %5, align 8
  %13 = getelementptr inbounds %struct.latency_stat, %struct.latency_stat* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @div64_u64(i32 %15, i32 10)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @max(i64 %17, i64 1)
  store i64 %18, i64* %6, align 8
  %19 = load %struct.latency_stat*, %struct.latency_stat** %5, align 8
  %20 = getelementptr inbounds %struct.latency_stat, %struct.latency_stat* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp slt i64 %22, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %36

26:                                               ; preds = %2
  %27 = load %struct.latency_stat*, %struct.latency_stat** %5, align 8
  %28 = getelementptr inbounds %struct.latency_stat, %struct.latency_stat* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.iolatency_grp*, %struct.iolatency_grp** %4, align 8
  %32 = getelementptr inbounds %struct.iolatency_grp, %struct.iolatency_grp* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sle i64 %30, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %26, %11
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @div64_u64(i32, i32) #1

declare dso_local i64 @max(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
