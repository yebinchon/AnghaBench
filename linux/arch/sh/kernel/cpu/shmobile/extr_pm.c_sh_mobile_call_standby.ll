; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/shmobile/extr_pm.c_sh_mobile_call_standby.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/shmobile/extr_pm.c_sh_mobile_call_standby.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_sleep_data = type { i32 }

@RAM_BASE = common dso_local global i64 0, align 8
@sh_mobile_pre_sleep_notifier_list = common dso_local global i32 0, align 4
@SUSP_SH_MMU = common dso_local global i64 0, align 8
@sh_mobile_post_sleep_notifier_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sh_mobile_call_standby(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sh_sleep_data*, align 8
  %5 = alloca void (i64, i64)*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* @RAM_BASE, align 8
  %7 = inttoptr i64 %6 to i8*
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.sh_sleep_data*
  store %struct.sh_sleep_data* %9, %struct.sh_sleep_data** %4, align 8
  %10 = load %struct.sh_sleep_data*, %struct.sh_sleep_data** %4, align 8
  %11 = getelementptr inbounds %struct.sh_sleep_data, %struct.sh_sleep_data* %10, i64 1
  %12 = bitcast %struct.sh_sleep_data* %11 to i8*
  %13 = bitcast i8* %12 to void (i64, i64)*
  store void (i64, i64)* %13, void (i64, i64)** %5, align 8
  %14 = load i64, i64* %2, align 8
  %15 = call i32 @atomic_notifier_call_chain(i32* @sh_mobile_pre_sleep_notifier_list, i64 %14, i32* null)
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* @SUSP_SH_MMU, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 (...) @flush_cache_all()
  br label %22

22:                                               ; preds = %20, %1
  %23 = load void (i64, i64)*, void (i64, i64)** %5, align 8
  %24 = load i64, i64* %2, align 8
  %25 = load i64, i64* @RAM_BASE, align 8
  call void %23(i64 %24, i64 %25)
  %26 = load i64, i64* %2, align 8
  %27 = call i32 @atomic_notifier_call_chain(i32* @sh_mobile_post_sleep_notifier_list, i64 %26, i32* null)
  ret void
}

declare dso_local i32 @atomic_notifier_call_chain(i32*, i64, i32*) #1

declare dso_local i32 @flush_cache_all(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
