; ModuleID = '/home/carl/AnghaBench/linux/block/extr_kyber-iosched.c_kyber_completed_request.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_kyber-iosched.c_kyber_completed_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i64, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.kyber_queue_data* }
%struct.kyber_queue_data = type { i32, i32, i64* }
%struct.kyber_cpu_latency = type { i32 }

@KYBER_OTHER = common dso_local global i32 0, align 4
@KYBER_TOTAL_LATENCY = common dso_local global i32 0, align 4
@KYBER_IO_LATENCY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, i64)* @kyber_completed_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kyber_completed_request(%struct.request* %0, i64 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.kyber_queue_data*, align 8
  %6 = alloca %struct.kyber_cpu_latency*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.request*, %struct.request** %3, align 8
  %10 = getelementptr inbounds %struct.request, %struct.request* %9, i32 0, i32 3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.kyber_queue_data*, %struct.kyber_queue_data** %14, align 8
  store %struct.kyber_queue_data* %15, %struct.kyber_queue_data** %5, align 8
  %16 = load %struct.request*, %struct.request** %3, align 8
  %17 = getelementptr inbounds %struct.request, %struct.request* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @kyber_sched_domain(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @KYBER_OTHER, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %68

24:                                               ; preds = %2
  %25 = load %struct.kyber_queue_data*, %struct.kyber_queue_data** %5, align 8
  %26 = getelementptr inbounds %struct.kyber_queue_data, %struct.kyber_queue_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.kyber_cpu_latency* @get_cpu_ptr(i32 %27)
  store %struct.kyber_cpu_latency* %28, %struct.kyber_cpu_latency** %6, align 8
  %29 = load %struct.kyber_queue_data*, %struct.kyber_queue_data** %5, align 8
  %30 = getelementptr inbounds %struct.kyber_queue_data, %struct.kyber_queue_data* %29, i32 0, i32 2
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %8, align 8
  %36 = load %struct.kyber_cpu_latency*, %struct.kyber_cpu_latency** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @KYBER_TOTAL_LATENCY, align 4
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %4, align 8
  %41 = load %struct.request*, %struct.request** %3, align 8
  %42 = getelementptr inbounds %struct.request, %struct.request* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  %45 = call i32 @add_latency_sample(%struct.kyber_cpu_latency* %36, i32 %37, i32 %38, i64 %39, i64 %44)
  %46 = load %struct.kyber_cpu_latency*, %struct.kyber_cpu_latency** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @KYBER_IO_LATENCY, align 4
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load %struct.request*, %struct.request** %3, align 8
  %52 = getelementptr inbounds %struct.request, %struct.request* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %50, %53
  %55 = call i32 @add_latency_sample(%struct.kyber_cpu_latency* %46, i32 %47, i32 %48, i64 %49, i64 %54)
  %56 = load %struct.kyber_queue_data*, %struct.kyber_queue_data** %5, align 8
  %57 = getelementptr inbounds %struct.kyber_queue_data, %struct.kyber_queue_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @put_cpu_ptr(i32 %58)
  %60 = load %struct.kyber_queue_data*, %struct.kyber_queue_data** %5, align 8
  %61 = getelementptr inbounds %struct.kyber_queue_data, %struct.kyber_queue_data* %60, i32 0, i32 0
  %62 = load i64, i64* @jiffies, align 8
  %63 = load i32, i32* @HZ, align 4
  %64 = sdiv i32 %63, 10
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %62, %65
  %67 = call i32 @timer_reduce(i32* %61, i64 %66)
  br label %68

68:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @kyber_sched_domain(i32) #1

declare dso_local %struct.kyber_cpu_latency* @get_cpu_ptr(i32) #1

declare dso_local i32 @add_latency_sample(%struct.kyber_cpu_latency*, i32, i32, i64, i64) #1

declare dso_local i32 @put_cpu_ptr(i32) #1

declare dso_local i32 @timer_reduce(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
