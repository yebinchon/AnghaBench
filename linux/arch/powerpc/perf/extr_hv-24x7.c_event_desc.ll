; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_event_desc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_event_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_24x7_event_data = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hv_24x7_event_data*, i32*)* @event_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @event_desc(%struct.hv_24x7_event_data* %0, i32* %1) #0 {
  %3 = alloca %struct.hv_24x7_event_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.hv_24x7_event_data* %0, %struct.hv_24x7_event_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.hv_24x7_event_data*, %struct.hv_24x7_event_data** %3, align 8
  %8 = getelementptr inbounds %struct.hv_24x7_event_data, %struct.hv_24x7_event_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @be16_to_cpu(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.hv_24x7_event_data*, %struct.hv_24x7_event_data** %3, align 8
  %12 = getelementptr inbounds %struct.hv_24x7_event_data, %struct.hv_24x7_event_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = sub nsw i64 %16, 2
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @be16_to_cpu(i32 %20)
  %22 = sub nsw i32 %21, 2
  %23 = load i32*, i32** %4, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct.hv_24x7_event_data*, %struct.hv_24x7_event_data** %3, align 8
  %25 = getelementptr inbounds %struct.hv_24x7_event_data, %struct.hv_24x7_event_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  ret i8* %30
}

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
