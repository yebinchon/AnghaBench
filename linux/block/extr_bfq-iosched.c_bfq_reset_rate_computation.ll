; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_reset_rate_computation.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bfq-iosched.c_bfq_reset_rate_computation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfq_data = type { i32, i32, i64, i32, i32, i32 }
%struct.request = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"reset_rate_computation at end, sample %u/%u tot_sects %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfq_data*, %struct.request*)* @bfq_reset_rate_computation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfq_reset_rate_computation(%struct.bfq_data* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.bfq_data*, align 8
  %4 = alloca %struct.request*, align 8
  store %struct.bfq_data* %0, %struct.bfq_data** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %5 = load %struct.request*, %struct.request** %4, align 8
  %6 = icmp ne %struct.request* %5, null
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = call i32 (...) @ktime_get_ns()
  %9 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %10 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %9, i32 0, i32 4
  store i32 %8, i32* %10, align 4
  %11 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %12 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %11, i32 0, i32 5
  store i32 %8, i32* %12, align 8
  %13 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %14 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %16 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.request*, %struct.request** %4, align 8
  %18 = call i32 @blk_rq_sectors(%struct.request* %17)
  %19 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %20 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %22 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %21, i32 0, i32 1
  store i32 %18, i32* %22, align 4
  br label %26

23:                                               ; preds = %2
  %24 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %25 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  br label %26

26:                                               ; preds = %23, %7
  %27 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %28 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %29 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %32 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.bfq_data*, %struct.bfq_data** %3, align 8
  %35 = getelementptr inbounds %struct.bfq_data, %struct.bfq_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bfq_log(%struct.bfq_data* %27, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %33, i32 %36)
  ret void
}

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @bfq_log(%struct.bfq_data*, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
