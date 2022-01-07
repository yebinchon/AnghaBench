; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_aux_sdb_trailer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_aux_sdb_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hws_trailer_entry = type { i32 }
%struct.aux_buffer = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hws_trailer_entry* (%struct.aux_buffer*, i64)* @aux_sdb_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hws_trailer_entry* @aux_sdb_trailer(%struct.aux_buffer* %0, i64 %1) #0 {
  %3 = alloca %struct.aux_buffer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.aux_buffer* %0, %struct.aux_buffer** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.aux_buffer*, %struct.aux_buffer** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @AUX_SDB_INDEX(%struct.aux_buffer* %6, i64 %7)
  store i64 %8, i64* %4, align 8
  %9 = load %struct.aux_buffer*, %struct.aux_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.aux_buffer, %struct.aux_buffer* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @trailer_entry_ptr(i64 %15)
  %17 = inttoptr i64 %16 to %struct.hws_trailer_entry*
  ret %struct.hws_trailer_entry* %17
}

declare dso_local i64 @AUX_SDB_INDEX(%struct.aux_buffer*, i64) #1

declare dso_local i64 @trailer_entry_ptr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
