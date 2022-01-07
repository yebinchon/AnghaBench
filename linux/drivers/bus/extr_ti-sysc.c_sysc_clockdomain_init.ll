; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_clockdomain_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_clockdomain_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc = type { i32, i32, i32, %struct.clk** }
%struct.clk = type { i32 }
%struct.ti_sysc_platform_data = type { i32 (i32, %struct.clk.0*, %struct.clk.0*, i32*)* }
%struct.clk.0 = type opaque

@SYSC_ICK = common dso_local global i64 0, align 8
@SYSC_FCK = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysc*)* @sysc_clockdomain_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysc_clockdomain_init(%struct.sysc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sysc*, align 8
  %4 = alloca %struct.ti_sysc_platform_data*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca i32, align 4
  store %struct.sysc* %0, %struct.sysc** %3, align 8
  %8 = load %struct.sysc*, %struct.sysc** %3, align 8
  %9 = getelementptr inbounds %struct.sysc, %struct.sysc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.ti_sysc_platform_data* @dev_get_platdata(i32 %10)
  store %struct.ti_sysc_platform_data* %11, %struct.ti_sysc_platform_data** %4, align 8
  store %struct.clk* null, %struct.clk** %5, align 8
  store %struct.clk* null, %struct.clk** %6, align 8
  %12 = load %struct.ti_sysc_platform_data*, %struct.ti_sysc_platform_data** %4, align 8
  %13 = icmp ne %struct.ti_sysc_platform_data* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.ti_sysc_platform_data*, %struct.ti_sysc_platform_data** %4, align 8
  %16 = getelementptr inbounds %struct.ti_sysc_platform_data, %struct.ti_sysc_platform_data* %15, i32 0, i32 0
  %17 = load i32 (i32, %struct.clk.0*, %struct.clk.0*, i32*)*, i32 (i32, %struct.clk.0*, %struct.clk.0*, i32*)** %16, align 8
  %18 = icmp ne i32 (i32, %struct.clk.0*, %struct.clk.0*, i32*)* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %1
  store i32 0, i32* %2, align 4
  br label %63

20:                                               ; preds = %14
  %21 = load %struct.sysc*, %struct.sysc** %3, align 8
  %22 = getelementptr inbounds %struct.sysc, %struct.sysc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %39 [
    i32 2, label %24
    i32 1, label %31
    i32 0, label %38
  ]

24:                                               ; preds = %20
  %25 = load %struct.sysc*, %struct.sysc** %3, align 8
  %26 = getelementptr inbounds %struct.sysc, %struct.sysc* %25, i32 0, i32 3
  %27 = load %struct.clk**, %struct.clk*** %26, align 8
  %28 = load i64, i64* @SYSC_ICK, align 8
  %29 = getelementptr inbounds %struct.clk*, %struct.clk** %27, i64 %28
  %30 = load %struct.clk*, %struct.clk** %29, align 8
  store %struct.clk* %30, %struct.clk** %6, align 8
  br label %31

31:                                               ; preds = %20, %24
  %32 = load %struct.sysc*, %struct.sysc** %3, align 8
  %33 = getelementptr inbounds %struct.sysc, %struct.sysc* %32, i32 0, i32 3
  %34 = load %struct.clk**, %struct.clk*** %33, align 8
  %35 = load i64, i64* @SYSC_FCK, align 8
  %36 = getelementptr inbounds %struct.clk*, %struct.clk** %34, i64 %35
  %37 = load %struct.clk*, %struct.clk** %36, align 8
  store %struct.clk* %37, %struct.clk** %5, align 8
  br label %39

38:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %63

39:                                               ; preds = %20, %31
  %40 = load %struct.ti_sysc_platform_data*, %struct.ti_sysc_platform_data** %4, align 8
  %41 = getelementptr inbounds %struct.ti_sysc_platform_data, %struct.ti_sysc_platform_data* %40, i32 0, i32 0
  %42 = load i32 (i32, %struct.clk.0*, %struct.clk.0*, i32*)*, i32 (i32, %struct.clk.0*, %struct.clk.0*, i32*)** %41, align 8
  %43 = load %struct.sysc*, %struct.sysc** %3, align 8
  %44 = getelementptr inbounds %struct.sysc, %struct.sysc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.clk*, %struct.clk** %5, align 8
  %47 = bitcast %struct.clk* %46 to %struct.clk.0*
  %48 = load %struct.clk*, %struct.clk** %6, align 8
  %49 = bitcast %struct.clk* %48 to %struct.clk.0*
  %50 = load %struct.sysc*, %struct.sysc** %3, align 8
  %51 = getelementptr inbounds %struct.sysc, %struct.sysc* %50, i32 0, i32 1
  %52 = call i32 %42(i32 %45, %struct.clk.0* %47, %struct.clk.0* %49, i32* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %39
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %39
  store i32 0, i32* %2, align 4
  br label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %60, %38, %19
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.ti_sysc_platform_data* @dev_get_platdata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
