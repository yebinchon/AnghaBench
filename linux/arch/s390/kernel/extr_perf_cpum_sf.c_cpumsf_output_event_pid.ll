; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_cpumsf_output_event_pid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_cpumsf_output_event_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.perf_sample_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.pt_regs = type { i32 }
%struct.perf_event_header = type { i32 }
%struct.perf_output_handle = type { i32 }

@PIDTYPE_TGID = common dso_local global i32 0, align 4
@PIDTYPE_PID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.perf_sample_data*, %struct.pt_regs*)* @cpumsf_output_event_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpumsf_output_event_pid(%struct.perf_event* %0, %struct.perf_sample_data* %1, %struct.pt_regs* %2) #0 {
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.perf_sample_data*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.perf_event_header, align 4
  %9 = alloca %struct.perf_output_handle, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store %struct.perf_sample_data* %1, %struct.perf_sample_data** %5, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  %10 = load %struct.perf_sample_data*, %struct.perf_sample_data** %5, align 8
  %11 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %7, align 8
  %14 = call i32 (...) @rcu_read_lock()
  %15 = load %struct.perf_sample_data*, %struct.perf_sample_data** %5, align 8
  %16 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %17 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %18 = call i32 @perf_prepare_sample(%struct.perf_event_header* %8, %struct.perf_sample_data* %15, %struct.perf_event* %16, %struct.pt_regs* %17)
  %19 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %20 = getelementptr inbounds %struct.perf_event_header, %struct.perf_event_header* %8, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @perf_output_begin(%struct.perf_output_handle* %9, %struct.perf_event* %19, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %44

25:                                               ; preds = %3
  %26 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* @PIDTYPE_TGID, align 4
  %29 = call i8* @cpumsf_pid_type(%struct.perf_event* %26, i8* %27, i32 %28)
  %30 = load %struct.perf_sample_data*, %struct.perf_sample_data** %5, align 8
  %31 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i8* %29, i8** %32, align 8
  %33 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @PIDTYPE_PID, align 4
  %36 = call i8* @cpumsf_pid_type(%struct.perf_event* %33, i8* %34, i32 %35)
  %37 = load %struct.perf_sample_data*, %struct.perf_sample_data** %5, align 8
  %38 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i8* %36, i8** %39, align 8
  %40 = load %struct.perf_sample_data*, %struct.perf_sample_data** %5, align 8
  %41 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %42 = call i32 @perf_output_sample(%struct.perf_output_handle* %9, %struct.perf_event_header* %8, %struct.perf_sample_data* %40, %struct.perf_event* %41)
  %43 = call i32 @perf_output_end(%struct.perf_output_handle* %9)
  br label %44

44:                                               ; preds = %25, %24
  %45 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @perf_prepare_sample(%struct.perf_event_header*, %struct.perf_sample_data*, %struct.perf_event*, %struct.pt_regs*) #1

declare dso_local i64 @perf_output_begin(%struct.perf_output_handle*, %struct.perf_event*, i32) #1

declare dso_local i8* @cpumsf_pid_type(%struct.perf_event*, i8*, i32) #1

declare dso_local i32 @perf_output_sample(%struct.perf_output_handle*, %struct.perf_event_header*, %struct.perf_sample_data*, %struct.perf_event*) #1

declare dso_local i32 @perf_output_end(%struct.perf_output_handle*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
