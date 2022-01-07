; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_smp.c___cpu_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_smp.c___cpu_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CIF_NOHZ_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cpu_disable() #0 {
  %1 = alloca [16 x i64], align 16
  %2 = call i32 (...) @smp_handle_ext_call()
  %3 = call i32 (...) @smp_processor_id()
  %4 = call i32 @set_cpu_online(i32 %3, i32 0)
  %5 = call i32 (...) @pfault_fini()
  %6 = getelementptr inbounds [16 x i64], [16 x i64]* %1, i64 0, i64 0
  %7 = call i32 @__ctl_store(i64* %6, i32 0, i32 15)
  %8 = getelementptr inbounds [16 x i64], [16 x i64]* %1, i64 0, i64 0
  %9 = load i64, i64* %8, align 16
  %10 = and i64 %9, -61041
  store i64 %10, i64* %8, align 16
  %11 = getelementptr inbounds [16 x i64], [16 x i64]* %1, i64 0, i64 6
  %12 = load i64, i64* %11, align 16
  %13 = and i64 %12, -4278190081
  store i64 %13, i64* %11, align 16
  %14 = getelementptr inbounds [16 x i64], [16 x i64]* %1, i64 0, i64 14
  %15 = load i64, i64* %14, align 16
  %16 = and i64 %15, -520093697
  store i64 %16, i64* %14, align 16
  %17 = getelementptr inbounds [16 x i64], [16 x i64]* %1, i64 0, i64 0
  %18 = call i32 @__ctl_load(i64* %17, i32 0, i32 15)
  %19 = load i32, i32* @CIF_NOHZ_DELAY, align 4
  %20 = call i32 @clear_cpu_flag(i32 %19)
  ret i32 0
}

declare dso_local i32 @smp_handle_ext_call(...) #1

declare dso_local i32 @set_cpu_online(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @pfault_fini(...) #1

declare dso_local i32 @__ctl_store(i64*, i32, i32) #1

declare dso_local i32 @__ctl_load(i64*, i32, i32) #1

declare dso_local i32 @clear_cpu_flag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
