; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_traps_64.c_cheetah_get_error_log.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_traps_64.c_cheetah_get_error_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cheetah_err_info = type { i32 }

@cheetah_error_log = common dso_local global %struct.cheetah_err_info* null, align 8
@CHAFSR_TL1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cheetah_err_info* (i64)* @cheetah_get_error_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cheetah_err_info* @cheetah_get_error_log(i64 %0) #0 {
  %2 = alloca %struct.cheetah_err_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.cheetah_err_info*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %6 = call i32 (...) @smp_processor_id()
  store i32 %6, i32* %5, align 4
  %7 = load %struct.cheetah_err_info*, %struct.cheetah_err_info** @cheetah_error_log, align 8
  %8 = icmp ne %struct.cheetah_err_info* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.cheetah_err_info* null, %struct.cheetah_err_info** %2, align 8
  br label %25

10:                                               ; preds = %1
  %11 = load %struct.cheetah_err_info*, %struct.cheetah_err_info** @cheetah_error_log, align 8
  %12 = load i32, i32* %5, align 4
  %13 = mul nsw i32 %12, 2
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.cheetah_err_info, %struct.cheetah_err_info* %11, i64 %14
  store %struct.cheetah_err_info* %15, %struct.cheetah_err_info** %4, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @CHAFSR_TL1, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %10
  %21 = load %struct.cheetah_err_info*, %struct.cheetah_err_info** %4, align 8
  %22 = getelementptr inbounds %struct.cheetah_err_info, %struct.cheetah_err_info* %21, i32 1
  store %struct.cheetah_err_info* %22, %struct.cheetah_err_info** %4, align 8
  br label %23

23:                                               ; preds = %20, %10
  %24 = load %struct.cheetah_err_info*, %struct.cheetah_err_info** %4, align 8
  store %struct.cheetah_err_info* %24, %struct.cheetah_err_info** %2, align 8
  br label %25

25:                                               ; preds = %23, %9
  %26 = load %struct.cheetah_err_info*, %struct.cheetah_err_info** %2, align 8
  ret %struct.cheetah_err_info* %26
}

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
