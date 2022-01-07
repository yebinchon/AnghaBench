; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_aux_output_end.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_aux_output_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_output_handle = type { i32 }
%struct.aux_buffer = type { i64, i64 }
%struct.hws_trailer_entry = type { i32 }

@SDB_TE_BUFFER_FULL_MASK = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@SDB_TE_ALERT_REQ_MASK = common dso_local global i32 0, align 4
@sfdbg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"aux_output_end: collect %lx SDBs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_output_handle*)* @aux_output_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aux_output_end(%struct.perf_output_handle* %0) #0 {
  %2 = alloca %struct.perf_output_handle*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.aux_buffer*, align 8
  %7 = alloca %struct.hws_trailer_entry*, align 8
  store %struct.perf_output_handle* %0, %struct.perf_output_handle** %2, align 8
  %8 = load %struct.perf_output_handle*, %struct.perf_output_handle** %2, align 8
  %9 = call %struct.aux_buffer* @perf_get_aux(%struct.perf_output_handle* %8)
  store %struct.aux_buffer* %9, %struct.aux_buffer** %6, align 8
  %10 = load %struct.aux_buffer*, %struct.aux_buffer** %6, align 8
  %11 = icmp ne %struct.aux_buffer* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %60

13:                                               ; preds = %1
  %14 = load %struct.aux_buffer*, %struct.aux_buffer** %6, align 8
  %15 = call i64 @AUX_SDB_NUM_ALERT(%struct.aux_buffer* %14)
  store i64 %15, i64* %4, align 8
  store i64 0, i64* %3, align 8
  %16 = load %struct.aux_buffer*, %struct.aux_buffer** %6, align 8
  %17 = getelementptr inbounds %struct.aux_buffer, %struct.aux_buffer* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %5, align 8
  br label %19

19:                                               ; preds = %35, %13
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load %struct.aux_buffer*, %struct.aux_buffer** %6, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call %struct.hws_trailer_entry* @aux_sdb_trailer(%struct.aux_buffer* %24, i64 %25)
  store %struct.hws_trailer_entry* %26, %struct.hws_trailer_entry** %7, align 8
  %27 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %7, align 8
  %28 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SDB_TE_BUFFER_FULL_MASK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %40

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %3, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %3, align 8
  %38 = load i64, i64* %5, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %5, align 8
  br label %19

40:                                               ; preds = %33, %19
  %41 = load %struct.perf_output_handle*, %struct.perf_output_handle** %2, align 8
  %42 = load i64, i64* %3, align 8
  %43 = load i64, i64* @PAGE_SHIFT, align 8
  %44 = shl i64 %42, %43
  %45 = call i32 @perf_aux_output_end(%struct.perf_output_handle* %41, i64 %44)
  %46 = load %struct.aux_buffer*, %struct.aux_buffer** %6, align 8
  %47 = load %struct.aux_buffer*, %struct.aux_buffer** %6, align 8
  %48 = getelementptr inbounds %struct.aux_buffer, %struct.aux_buffer* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call %struct.hws_trailer_entry* @aux_sdb_trailer(%struct.aux_buffer* %46, i64 %49)
  store %struct.hws_trailer_entry* %50, %struct.hws_trailer_entry** %7, align 8
  %51 = load i32, i32* @SDB_TE_ALERT_REQ_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %7, align 8
  %54 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* @sfdbg, align 4
  %58 = load i64, i64* %3, align 8
  %59 = call i32 @debug_sprintf_event(i32 %57, i32 6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %58)
  br label %60

60:                                               ; preds = %40, %12
  ret void
}

declare dso_local %struct.aux_buffer* @perf_get_aux(%struct.perf_output_handle*) #1

declare dso_local i64 @AUX_SDB_NUM_ALERT(%struct.aux_buffer*) #1

declare dso_local %struct.hws_trailer_entry* @aux_sdb_trailer(%struct.aux_buffer*, i64) #1

declare dso_local i32 @perf_aux_output_end(%struct.perf_output_handle*, i64) #1

declare dso_local i32 @debug_sprintf_event(i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
