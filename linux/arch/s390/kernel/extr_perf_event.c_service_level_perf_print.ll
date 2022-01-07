; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_event.c_service_level_perf_print.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_event.c_service_level_perf_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.service_level = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.service_level*)* @service_level_perf_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @service_level_perf_print(%struct.seq_file* %0, %struct.service_level* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.service_level*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.service_level* %1, %struct.service_level** %4, align 8
  %5 = call i64 (...) @cpum_cf_avail()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = call i32 @sl_print_counter(%struct.seq_file* %8)
  br label %10

10:                                               ; preds = %7, %2
  %11 = call i64 (...) @cpum_sf_avail()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %15 = call i32 @sl_print_sampling(%struct.seq_file* %14)
  br label %16

16:                                               ; preds = %13, %10
  ret void
}

declare dso_local i64 @cpum_cf_avail(...) #1

declare dso_local i32 @sl_print_counter(%struct.seq_file*) #1

declare dso_local i64 @cpum_sf_avail(...) #1

declare dso_local i32 @sl_print_sampling(%struct.seq_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
