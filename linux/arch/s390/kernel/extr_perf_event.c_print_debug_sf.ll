; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_event.c_print_debug_sf.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_event.c_print_debug_sf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hws_qsi_info_block = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [64 x i8] c"CPU[%i] CPUM_SF: basic=%i diag=%i min=%lu max=%lu cpu_speed=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"CPU[%i] CPUM_SF: Basic-sampling: a=%i e=%i c=%i bsdes=%i tear=%016lx dear=%016lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [87 x i8] c"CPU[%i] CPUM_SF: Diagnostic-sampling: a=%i e=%i c=%i dsdes=%i tear=%016lx dear=%016lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_debug_sf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_debug_sf() #0 {
  %1 = alloca %struct.hws_qsi_info_block, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (...) @smp_processor_id()
  store i32 %3, i32* %2, align 4
  %4 = call i32 @memset(%struct.hws_qsi_info_block* %1, i32 0, i32 72)
  %5 = call i64 @qsi(%struct.hws_qsi_info_block* %1)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %59

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4
  %10 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %1, i32 0, i32 9
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %1, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %1, i32 0, i32 12
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %1, i32 0, i32 11
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %1, i32 0, i32 10
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i8*, i32, i64, i32, i32, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %9, i64 %11, i32 %14, i32 %16, i32 %18, i32 %20)
  %22 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %1, i32 0, i32 9
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %8
  %26 = load i32, i32* %2, align 4
  %27 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %1, i32 0, i32 9
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %1, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %1, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %1, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %1, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %1, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, i32, i64, i32, i32, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i32 %26, i64 %28, i32 %30, i32 %32, i32 %34, i32 %36, i32 %38)
  br label %40

40:                                               ; preds = %25, %8
  %41 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %1, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load i32, i32* %2, align 4
  %46 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %1, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %1, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %1, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %1, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %1, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %1, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8*, i32, i64, i32, i32, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0), i32 %45, i64 %47, i32 %49, i32 %51, i32 %53, i32 %55, i32 %57)
  br label %59

59:                                               ; preds = %7, %44, %40
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @memset(%struct.hws_qsi_info_block*, i32, i32) #1

declare dso_local i64 @qsi(%struct.hws_qsi_info_block*) #1

declare dso_local i32 @pr_info(i8*, i32, i64, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
