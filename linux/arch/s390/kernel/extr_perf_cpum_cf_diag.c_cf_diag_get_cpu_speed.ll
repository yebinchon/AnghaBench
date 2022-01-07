; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_cf_diag.c_cf_diag_get_cpu_speed.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_cf_diag.c_cf_diag_get_cpu_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hws_qsi_info_block = type { i64 }

@cf_diag_cpu_speed = common dso_local global i64 0, align 8
@ECAG_CPU_ATTRIBUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cf_diag_get_cpu_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf_diag_get_cpu_speed() #0 {
  %1 = alloca %struct.hws_qsi_info_block, align 8
  %2 = alloca i64, align 8
  %3 = call i64 (...) @cpum_sf_avail()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %0
  %6 = call i32 @memset(%struct.hws_qsi_info_block* %1, i32 0, i32 8)
  %7 = call i32 @qsi(%struct.hws_qsi_info_block* %1)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %1, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* @cf_diag_cpu_speed, align 8
  br label %25

12:                                               ; preds = %5
  br label %13

13:                                               ; preds = %12, %0
  %14 = call i64 @test_facility(i32 34)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load i32, i32* @ECAG_CPU_ATTRIBUTE, align 4
  %18 = call i64 @__ecag(i32 %17, i32 0)
  store i64 %18, i64* %2, align 8
  %19 = load i64, i64* %2, align 8
  %20 = icmp ne i64 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i64, i64* %2, align 8
  %23 = and i64 %22, 4294967295
  store i64 %23, i64* @cf_diag_cpu_speed, align 8
  br label %24

24:                                               ; preds = %21, %16
  br label %25

25:                                               ; preds = %9, %24, %13
  ret void
}

declare dso_local i64 @cpum_sf_avail(...) #1

declare dso_local i32 @memset(%struct.hws_qsi_info_block*, i32, i32) #1

declare dso_local i32 @qsi(%struct.hws_qsi_info_block*) #1

declare dso_local i64 @test_facility(i32) #1

declare dso_local i64 @__ecag(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
