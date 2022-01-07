; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_cf_diag.c_cf_diag_trailer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_cf_diag.c_cf_diag_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_trailer_entry = type { i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.cpu_cf_events = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cpuid = type { i32 }

@cpu_cf_events = common dso_local global i32 0, align 4
@cf_diag_cpu_speed = common dso_local global i64 0, align 8
@tod_clock_base = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cf_trailer_entry*)* @cf_diag_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf_diag_trailer(%struct.cf_trailer_entry* %0) #0 {
  %2 = alloca %struct.cf_trailer_entry*, align 8
  %3 = alloca %struct.cpu_cf_events*, align 8
  %4 = alloca %struct.cpuid, align 4
  store %struct.cf_trailer_entry* %0, %struct.cf_trailer_entry** %2, align 8
  %5 = call %struct.cpu_cf_events* @this_cpu_ptr(i32* @cpu_cf_events)
  store %struct.cpu_cf_events* %5, %struct.cpu_cf_events** %3, align 8
  %6 = load %struct.cpu_cf_events*, %struct.cpu_cf_events** %3, align 8
  %7 = getelementptr inbounds %struct.cpu_cf_events, %struct.cpu_cf_events* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.cf_trailer_entry*, %struct.cf_trailer_entry** %2, align 8
  %11 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %10, i32 0, i32 7
  store i32 %9, i32* %11, align 8
  %12 = load %struct.cpu_cf_events*, %struct.cpu_cf_events** %3, align 8
  %13 = getelementptr inbounds %struct.cpu_cf_events, %struct.cpu_cf_events* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.cf_trailer_entry*, %struct.cf_trailer_entry** %2, align 8
  %17 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %16, i32 0, i32 6
  store i32 %15, i32* %17, align 4
  %18 = call i32 @get_cpu_id(%struct.cpuid* %4)
  %19 = getelementptr inbounds %struct.cpuid, %struct.cpuid* %4, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cf_trailer_entry*, %struct.cf_trailer_entry** %2, align 8
  %22 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load i64, i64* @cf_diag_cpu_speed, align 8
  %24 = load %struct.cf_trailer_entry*, %struct.cf_trailer_entry** %2, align 8
  %25 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %24, i32 0, i32 4
  store i64 %23, i64* %25, align 8
  %26 = load %struct.cf_trailer_entry*, %struct.cf_trailer_entry** %2, align 8
  %27 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load %struct.cf_trailer_entry*, %struct.cf_trailer_entry** %2, align 8
  %32 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  br label %33

33:                                               ; preds = %30, %1
  %34 = load %struct.cf_trailer_entry*, %struct.cf_trailer_entry** %2, align 8
  %35 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = load %struct.cf_trailer_entry*, %struct.cf_trailer_entry** %2, align 8
  %37 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %36, i32 0, i32 3
  %38 = load i32*, i32** @tod_clock_base, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = call i32 @memcpy(i32* %37, i32* %39, i32 8)
  %41 = load %struct.cf_trailer_entry*, %struct.cf_trailer_entry** %2, align 8
  %42 = getelementptr inbounds %struct.cf_trailer_entry, %struct.cf_trailer_entry* %41, i32 0, i32 2
  %43 = call i32 @store_tod_clock(i32* %42)
  ret void
}

declare dso_local %struct.cpu_cf_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @get_cpu_id(%struct.cpuid*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @store_tod_clock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
