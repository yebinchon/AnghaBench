; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_legacy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_legacy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc = type { i32, i32, i32 }
%struct.ti_sysc_platform_data = type { i32 (i32, i32, i32*)* }

@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysc*)* @sysc_legacy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysc_legacy_init(%struct.sysc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sysc*, align 8
  %4 = alloca %struct.ti_sysc_platform_data*, align 8
  %5 = alloca i32, align 4
  store %struct.sysc* %0, %struct.sysc** %3, align 8
  %6 = load %struct.sysc*, %struct.sysc** %3, align 8
  %7 = getelementptr inbounds %struct.sysc, %struct.sysc* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.ti_sysc_platform_data* @dev_get_platdata(i32 %8)
  store %struct.ti_sysc_platform_data* %9, %struct.ti_sysc_platform_data** %4, align 8
  %10 = load %struct.ti_sysc_platform_data*, %struct.ti_sysc_platform_data** %4, align 8
  %11 = icmp ne %struct.ti_sysc_platform_data* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.ti_sysc_platform_data*, %struct.ti_sysc_platform_data** %4, align 8
  %14 = getelementptr inbounds %struct.ti_sysc_platform_data, %struct.ti_sysc_platform_data* %13, i32 0, i32 0
  %15 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %14, align 8
  %16 = icmp ne i32 (i32, i32, i32*)* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %38

18:                                               ; preds = %12
  %19 = load %struct.ti_sysc_platform_data*, %struct.ti_sysc_platform_data** %4, align 8
  %20 = getelementptr inbounds %struct.ti_sysc_platform_data, %struct.ti_sysc_platform_data* %19, i32 0, i32 0
  %21 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %20, align 8
  %22 = load %struct.sysc*, %struct.sysc** %3, align 8
  %23 = getelementptr inbounds %struct.sysc, %struct.sysc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sysc*, %struct.sysc** %3, align 8
  %26 = getelementptr inbounds %struct.sysc, %struct.sysc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sysc*, %struct.sysc** %3, align 8
  %29 = getelementptr inbounds %struct.sysc, %struct.sysc* %28, i32 0, i32 0
  %30 = call i32 %21(i32 %24, i32 %27, i32* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @EEXIST, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %18
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %17
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.ti_sysc_platform_data* @dev_get_platdata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
