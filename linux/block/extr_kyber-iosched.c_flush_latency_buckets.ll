; ModuleID = '/home/carl/AnghaBench/linux/block/extr_kyber-iosched.c_flush_latency_buckets.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_kyber-iosched.c_flush_latency_buckets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kyber_queue_data = type { i32*** }
%struct.kyber_cpu_latency = type { i32*** }

@KYBER_LATENCY_BUCKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kyber_queue_data*, %struct.kyber_cpu_latency*, i32, i32)* @flush_latency_buckets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_latency_buckets(%struct.kyber_queue_data* %0, %struct.kyber_cpu_latency* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kyber_queue_data*, align 8
  %6 = alloca %struct.kyber_cpu_latency*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.kyber_queue_data* %0, %struct.kyber_queue_data** %5, align 8
  store %struct.kyber_cpu_latency* %1, %struct.kyber_cpu_latency** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.kyber_queue_data*, %struct.kyber_queue_data** %5, align 8
  %13 = getelementptr inbounds %struct.kyber_queue_data, %struct.kyber_queue_data* %12, i32 0, i32 0
  %14 = load i32***, i32**** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32**, i32*** %14, i64 %16
  %18 = load i32**, i32*** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %9, align 8
  %23 = load %struct.kyber_cpu_latency*, %struct.kyber_cpu_latency** %6, align 8
  %24 = getelementptr inbounds %struct.kyber_cpu_latency, %struct.kyber_cpu_latency* %23, i32 0, i32 0
  %25 = load i32***, i32**** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32**, i32*** %25, i64 %27
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %52, %4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @KYBER_LATENCY_BUCKETS, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i64 @atomic_xchg(i32* %42, i32 0)
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %11, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = zext i32 %48 to i64
  %50 = add nsw i64 %49, %43
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 4
  br label %52

52:                                               ; preds = %38
  %53 = load i32, i32* %11, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %34

55:                                               ; preds = %34
  ret void
}

declare dso_local i64 @atomic_xchg(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
