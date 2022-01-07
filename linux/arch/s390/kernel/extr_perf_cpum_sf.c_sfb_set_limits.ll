; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_sfb_set_limits.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_sfb_set_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hws_qsi_info_block = type { i32, i32 }

@CPUM_SF_MIN_SDB = common dso_local global i64 0, align 8
@CPUM_SF_MAX_SDB = common dso_local global i64 0, align 8
@CPUM_SF_SDB_DIAG_FACTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @sfb_set_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfb_set_limits(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hws_qsi_info_block, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  store i64 %6, i64* @CPUM_SF_MIN_SDB, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* @CPUM_SF_MAX_SDB, align 8
  %8 = call i32 @memset(%struct.hws_qsi_info_block* %5, i32 0, i32 8)
  %9 = call i32 @qsi(%struct.hws_qsi_info_block* %5)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %5, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.hws_qsi_info_block, %struct.hws_qsi_info_block* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @DIV_ROUND_UP(i32 %13, i32 %15)
  store i32 %16, i32* @CPUM_SF_SDB_DIAG_FACTOR, align 4
  br label %17

17:                                               ; preds = %11, %2
  ret void
}

declare dso_local i32 @memset(%struct.hws_qsi_info_block*, i32, i32) #1

declare dso_local i32 @qsi(%struct.hws_qsi_info_block*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
