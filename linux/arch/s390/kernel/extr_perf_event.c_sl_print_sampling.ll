; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_event.c_sl_print_sampling.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_event.c_sl_print_sampling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.hws_qsi_info_block = type { i32, i64, i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [67 x i8] c"CPU-MF: Sampling facility: min_rate=%lu max_rate=%lu cpu_speed=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"CPU-MF: Sampling facility: mode=basic sample_size=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"CPU-MF: Sampling facility: mode=diagnostic sample_size=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*)* @sl_print_sampling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sl_print_sampling(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca %struct.hws_qsi_info_block, align 8
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %4 = call i32 @memset(%struct.hws_qsi_info_block* %3, i32 0, i32 48)
  %5 = call i64 @qsi(%struct.hws_qsi_info_block* %3)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %43

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %3, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %3, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  br label %43

17:                                               ; preds = %12, %8
  %18 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %19 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %3, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %3, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %3, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %22, i32 %24)
  %26 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %3, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %17
  %30 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %31 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %3, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %29, %17
  %35 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %3, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %40 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %3, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %7, %16, %38, %34
  ret void
}

declare dso_local i32 @memset(%struct.hws_qsi_info_block*, i32, i32) #1

declare dso_local i64 @qsi(%struct.hws_qsi_info_block*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
