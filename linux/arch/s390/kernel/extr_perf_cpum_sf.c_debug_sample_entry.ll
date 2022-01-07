; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_debug_sample_entry.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_debug_sample_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hws_basic_entry = type { i32 }
%struct.hws_trailer_entry = type { i32 }

@sfdbg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"hw_collect_samples: Found unknown sampling data entry: te->f=%i basic.def=%04x (%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hws_basic_entry*, %struct.hws_trailer_entry*)* @debug_sample_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_sample_entry(%struct.hws_basic_entry* %0, %struct.hws_trailer_entry* %1) #0 {
  %3 = alloca %struct.hws_basic_entry*, align 8
  %4 = alloca %struct.hws_trailer_entry*, align 8
  store %struct.hws_basic_entry* %0, %struct.hws_basic_entry** %3, align 8
  store %struct.hws_trailer_entry* %1, %struct.hws_trailer_entry** %4, align 8
  %5 = load i32, i32* @sfdbg, align 4
  %6 = load %struct.hws_trailer_entry*, %struct.hws_trailer_entry** %4, align 8
  %7 = getelementptr inbounds %struct.hws_trailer_entry, %struct.hws_trailer_entry* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %3, align 8
  %10 = getelementptr inbounds %struct.hws_basic_entry, %struct.hws_basic_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.hws_basic_entry*, %struct.hws_basic_entry** %3, align 8
  %13 = call i32 @debug_sprintf_event(i32 %5, i32 4, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11, %struct.hws_basic_entry* %12)
  ret void
}

declare dso_local i32 @debug_sprintf_event(i32, i32, i8*, i32, i32, %struct.hws_basic_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
