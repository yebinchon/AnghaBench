; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_aux_set_alert.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_aux_set_alert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aux_buffer = type { i32 }
%struct.hws_trailer_entry = type { i64, i64 }

@SDB_TE_BUFFER_FULL_MASK = common dso_local global i64 0, align 8
@SDB_TE_ALERT_REQ_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aux_buffer*, i64, i64*)* @aux_set_alert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aux_set_alert(%struct.aux_buffer* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aux_buffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.hws_trailer_entry*, align 8
  store %struct.aux_buffer* %0, %struct.aux_buffer** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load %struct.aux_buffer*, %struct.aux_buffer** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call %struct.hws_trailer_entry* @aux_sdb_trailer(%struct.aux_buffer* %12, i64 %13)
  store %struct.hws_trailer_entry* %14, %struct.hws_trailer_entry** %11, align 8
  br label %15

15:                                               ; preds = %33, %3
  %16 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %11, align 8
  %17 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  %19 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %11, align 8
  %20 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64*, i64** %7, align 8
  store i64 %22, i64* %23, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @SDB_TE_BUFFER_FULL_MASK, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %45

29:                                               ; preds = %15
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @SDB_TE_ALERT_REQ_MASK, align 8
  %32 = or i64 %30, %31
  store i64 %32, i64* %10, align 8
  br label %33

33:                                               ; preds = %29
  %34 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %11, align 8
  %35 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %34, i32 0, i32 0
  %36 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %11, align 8
  %37 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %36, i32 0, i32 1
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @cmpxchg_double(i64* %35, i64* %37, i64 %38, i64 %39, i64 %40, i64 0)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br i1 %43, label %15, label %44

44:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %28
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.hws_trailer_entry* @aux_sdb_trailer(%struct.aux_buffer*, i64) #1

declare dso_local i32 @cmpxchg_double(i64*, i64*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
