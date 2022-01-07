; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_oct_ilm.c_init_latency_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/extr_oct_ilm.c_init_latency_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.latency_info = type { i32, i32, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.latency_info*, i32)* @init_latency_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_latency_info(%struct.latency_info* %0, i32 %1) #0 {
  %3 = alloca %struct.latency_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.latency_info* %0, %struct.latency_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = call i32 (...) @octeon_get_io_clock_rate()
  %10 = load i32, i32* %5, align 4
  %11 = mul nsw i32 %9, %10
  %12 = sdiv i32 %11, 1000
  %13 = load %struct.latency_info*, %struct.latency_info** %3, align 8
  %14 = getelementptr inbounds %struct.latency_info, %struct.latency_info* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = call i32 (...) @octeon_get_clock_rate()
  %16 = load i32, i32* %5, align 4
  %17 = mul nsw i32 %15, %16
  %18 = sdiv i32 %17, 1000
  %19 = load %struct.latency_info*, %struct.latency_info** %3, align 8
  %20 = getelementptr inbounds %struct.latency_info, %struct.latency_info* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %8, %2
  %22 = load %struct.latency_info*, %struct.latency_info** %3, align 8
  %23 = getelementptr inbounds %struct.latency_info, %struct.latency_info* %22, i32 0, i32 7
  store i64 0, i64* %23, align 8
  %24 = load %struct.latency_info*, %struct.latency_info** %3, align 8
  %25 = getelementptr inbounds %struct.latency_info, %struct.latency_info* %24, i32 0, i32 6
  store i64 0, i64* %25, align 8
  %26 = load %struct.latency_info*, %struct.latency_info** %3, align 8
  %27 = getelementptr inbounds %struct.latency_info, %struct.latency_info* %26, i32 0, i32 5
  store i64 0, i64* %27, align 8
  %28 = load %struct.latency_info*, %struct.latency_info** %3, align 8
  %29 = getelementptr inbounds %struct.latency_info, %struct.latency_info* %28, i32 0, i32 4
  store i64 -1, i64* %29, align 8
  %30 = load %struct.latency_info*, %struct.latency_info** %3, align 8
  %31 = getelementptr inbounds %struct.latency_info, %struct.latency_info* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.latency_info*, %struct.latency_info** %3, align 8
  %33 = getelementptr inbounds %struct.latency_info, %struct.latency_info* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  ret void
}

declare dso_local i32 @octeon_get_io_clock_rate(...) #1

declare dso_local i32 @octeon_get_clock_rate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
