; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_clkdm_deny_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_clkdm_deny_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc = type { i32, i32, i64 }
%struct.ti_sysc_platform_data = type { i32 (i32, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysc*)* @sysc_clkdm_deny_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysc_clkdm_deny_idle(%struct.sysc* %0) #0 {
  %2 = alloca %struct.sysc*, align 8
  %3 = alloca %struct.ti_sysc_platform_data*, align 8
  store %struct.sysc* %0, %struct.sysc** %2, align 8
  %4 = load %struct.sysc*, %struct.sysc** %2, align 8
  %5 = getelementptr inbounds %struct.sysc, %struct.sysc* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %31

9:                                                ; preds = %1
  %10 = load %struct.sysc*, %struct.sysc** %2, align 8
  %11 = getelementptr inbounds %struct.sysc, %struct.sysc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.ti_sysc_platform_data* @dev_get_platdata(i32 %12)
  store %struct.ti_sysc_platform_data* %13, %struct.ti_sysc_platform_data** %3, align 8
  %14 = load %struct.ti_sysc_platform_data*, %struct.ti_sysc_platform_data** %3, align 8
  %15 = icmp ne %struct.ti_sysc_platform_data* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %9
  %17 = load %struct.ti_sysc_platform_data*, %struct.ti_sysc_platform_data** %3, align 8
  %18 = getelementptr inbounds %struct.ti_sysc_platform_data, %struct.ti_sysc_platform_data* %17, i32 0, i32 0
  %19 = load i32 (i32, i32*)*, i32 (i32, i32*)** %18, align 8
  %20 = icmp ne i32 (i32, i32*)* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load %struct.ti_sysc_platform_data*, %struct.ti_sysc_platform_data** %3, align 8
  %23 = getelementptr inbounds %struct.ti_sysc_platform_data, %struct.ti_sysc_platform_data* %22, i32 0, i32 0
  %24 = load i32 (i32, i32*)*, i32 (i32, i32*)** %23, align 8
  %25 = load %struct.sysc*, %struct.sysc** %2, align 8
  %26 = getelementptr inbounds %struct.sysc, %struct.sysc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sysc*, %struct.sysc** %2, align 8
  %29 = getelementptr inbounds %struct.sysc, %struct.sysc* %28, i32 0, i32 0
  %30 = call i32 %24(i32 %27, i32* %29)
  br label %31

31:                                               ; preds = %8, %21, %16, %9
  ret void
}

declare dso_local %struct.ti_sysc_platform_data* @dev_get_platdata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
