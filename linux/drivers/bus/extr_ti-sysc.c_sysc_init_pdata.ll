; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_init_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_init_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc = type { %struct.ti_sysc_module_data*, i32, i32, i32, i32, i32, i64, i32 }
%struct.ti_sysc_module_data = type { i32*, i32, i32, i32, i32, i32, i64 }
%struct.ti_sysc_platform_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SYSC_MAX_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysc*)* @sysc_init_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysc_init_pdata(%struct.sysc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sysc*, align 8
  %4 = alloca %struct.ti_sysc_platform_data*, align 8
  %5 = alloca %struct.ti_sysc_module_data*, align 8
  store %struct.sysc* %0, %struct.sysc** %3, align 8
  %6 = load %struct.sysc*, %struct.sysc** %3, align 8
  %7 = getelementptr inbounds %struct.sysc, %struct.sysc* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.ti_sysc_platform_data* @dev_get_platdata(i32 %8)
  store %struct.ti_sysc_platform_data* %9, %struct.ti_sysc_platform_data** %4, align 8
  %10 = load %struct.ti_sysc_platform_data*, %struct.ti_sysc_platform_data** %4, align 8
  %11 = icmp ne %struct.ti_sysc_platform_data* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

13:                                               ; preds = %1
  %14 = load %struct.sysc*, %struct.sysc** %3, align 8
  %15 = getelementptr inbounds %struct.sysc, %struct.sysc* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.ti_sysc_module_data* @devm_kzalloc(i32 %16, i32 40, i32 %17)
  store %struct.ti_sysc_module_data* %18, %struct.ti_sysc_module_data** %5, align 8
  %19 = load %struct.ti_sysc_module_data*, %struct.ti_sysc_module_data** %5, align 8
  %20 = icmp ne %struct.ti_sysc_module_data* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %66

24:                                               ; preds = %13
  %25 = load %struct.sysc*, %struct.sysc** %3, align 8
  %26 = getelementptr inbounds %struct.sysc, %struct.sysc* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %62

29:                                               ; preds = %24
  %30 = load %struct.sysc*, %struct.sysc** %3, align 8
  %31 = getelementptr inbounds %struct.sysc, %struct.sysc* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ti_sysc_module_data*, %struct.ti_sysc_module_data** %5, align 8
  %34 = getelementptr inbounds %struct.ti_sysc_module_data, %struct.ti_sysc_module_data* %33, i32 0, i32 6
  store i64 %32, i64* %34, align 8
  %35 = load %struct.sysc*, %struct.sysc** %3, align 8
  %36 = getelementptr inbounds %struct.sysc, %struct.sysc* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ti_sysc_module_data*, %struct.ti_sysc_module_data** %5, align 8
  %39 = getelementptr inbounds %struct.ti_sysc_module_data, %struct.ti_sysc_module_data* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load %struct.sysc*, %struct.sysc** %3, align 8
  %41 = getelementptr inbounds %struct.sysc, %struct.sysc* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ti_sysc_module_data*, %struct.ti_sysc_module_data** %5, align 8
  %44 = getelementptr inbounds %struct.ti_sysc_module_data, %struct.ti_sysc_module_data* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.sysc*, %struct.sysc** %3, align 8
  %46 = getelementptr inbounds %struct.sysc, %struct.sysc* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ti_sysc_module_data*, %struct.ti_sysc_module_data** %5, align 8
  %49 = getelementptr inbounds %struct.ti_sysc_module_data, %struct.ti_sysc_module_data* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @SYSC_MAX_REGS, align 4
  %51 = load %struct.ti_sysc_module_data*, %struct.ti_sysc_module_data** %5, align 8
  %52 = getelementptr inbounds %struct.ti_sysc_module_data, %struct.ti_sysc_module_data* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.sysc*, %struct.sysc** %3, align 8
  %54 = getelementptr inbounds %struct.sysc, %struct.sysc* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ti_sysc_module_data*, %struct.ti_sysc_module_data** %5, align 8
  %57 = getelementptr inbounds %struct.ti_sysc_module_data, %struct.ti_sysc_module_data* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.sysc*, %struct.sysc** %3, align 8
  %59 = getelementptr inbounds %struct.sysc, %struct.sysc* %58, i32 0, i32 1
  %60 = load %struct.ti_sysc_module_data*, %struct.ti_sysc_module_data** %5, align 8
  %61 = getelementptr inbounds %struct.ti_sysc_module_data, %struct.ti_sysc_module_data* %60, i32 0, i32 0
  store i32* %59, i32** %61, align 8
  br label %62

62:                                               ; preds = %29, %24
  %63 = load %struct.ti_sysc_module_data*, %struct.ti_sysc_module_data** %5, align 8
  %64 = load %struct.sysc*, %struct.sysc** %3, align 8
  %65 = getelementptr inbounds %struct.sysc, %struct.sysc* %64, i32 0, i32 0
  store %struct.ti_sysc_module_data* %63, %struct.ti_sysc_module_data** %65, align 8
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %62, %21, %12
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.ti_sysc_platform_data* @dev_get_platdata(i32) #1

declare dso_local %struct.ti_sysc_module_data* @devm_kzalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
