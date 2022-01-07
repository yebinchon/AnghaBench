; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_event_long_desc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_event_long_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_24x7_event_data = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hv_24x7_event_data*, i32*)* @event_long_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @event_long_desc(%struct.hv_24x7_event_data* %0, i32* %1) #0 {
  %3 = alloca %struct.hv_24x7_event_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.hv_24x7_event_data* %0, %struct.hv_24x7_event_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.hv_24x7_event_data*, %struct.hv_24x7_event_data** %3, align 8
  %10 = getelementptr inbounds %struct.hv_24x7_event_data, %struct.hv_24x7_event_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @be16_to_cpu(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.hv_24x7_event_data*, %struct.hv_24x7_event_data** %3, align 8
  %14 = getelementptr inbounds %struct.hv_24x7_event_data, %struct.hv_24x7_event_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = sub nsw i64 %18, 2
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @be16_to_cpu(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.hv_24x7_event_data*, %struct.hv_24x7_event_data** %3, align 8
  %25 = getelementptr inbounds %struct.hv_24x7_event_data, %struct.hv_24x7_event_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = sub nsw i64 %32, 2
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %8, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @be16_to_cpu(i32 %36)
  %38 = sub nsw i32 %37, 2
  %39 = load i32*, i32** %4, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.hv_24x7_event_data*, %struct.hv_24x7_event_data** %3, align 8
  %41 = getelementptr inbounds %struct.hv_24x7_event_data, %struct.hv_24x7_event_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  ret i8* %49
}

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
