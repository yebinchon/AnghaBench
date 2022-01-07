; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_init_module_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_init_module_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc = type { i8*, i8*, %struct.TYPE_2__, i32, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@SYSC_MODULE_QUIRK_HDQ1W = common dso_local global i32 0, align 4
@sysc_clk_enable_quirk_hdq1w = common dso_local global i32 0, align 4
@SYSC_MODULE_QUIRK_I2C = common dso_local global i32 0, align 4
@sysc_clk_enable_quirk_i2c = common dso_local global i32 0, align 4
@sysc_clk_disable_quirk_i2c = common dso_local global i32 0, align 4
@SYSC_MODULE_QUIRK_SGX = common dso_local global i32 0, align 4
@sysc_module_enable_quirk_sgx = common dso_local global i32 0, align 4
@SYSC_MODULE_QUIRK_WDT = common dso_local global i32 0, align 4
@sysc_reset_done_quirk_wdt = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysc*)* @sysc_init_module_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysc_init_module_quirks(%struct.sysc* %0) #0 {
  %2 = alloca %struct.sysc*, align 8
  store %struct.sysc* %0, %struct.sysc** %2, align 8
  %3 = load %struct.sysc*, %struct.sysc** %2, align 8
  %4 = getelementptr inbounds %struct.sysc, %struct.sysc* %3, i32 0, i32 7
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.sysc*, %struct.sysc** %2, align 8
  %9 = getelementptr inbounds %struct.sysc, %struct.sysc* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7, %1
  br label %67

13:                                               ; preds = %7
  %14 = load %struct.sysc*, %struct.sysc** %2, align 8
  %15 = getelementptr inbounds %struct.sysc, %struct.sysc* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SYSC_MODULE_QUIRK_HDQ1W, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load i32, i32* @sysc_clk_enable_quirk_hdq1w, align 4
  %23 = load %struct.sysc*, %struct.sysc** %2, align 8
  %24 = getelementptr inbounds %struct.sysc, %struct.sysc* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 4
  br label %67

25:                                               ; preds = %13
  %26 = load %struct.sysc*, %struct.sysc** %2, align 8
  %27 = getelementptr inbounds %struct.sysc, %struct.sysc* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SYSC_MODULE_QUIRK_I2C, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %25
  %34 = load i32, i32* @sysc_clk_enable_quirk_i2c, align 4
  %35 = load %struct.sysc*, %struct.sysc** %2, align 8
  %36 = getelementptr inbounds %struct.sysc, %struct.sysc* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @sysc_clk_disable_quirk_i2c, align 4
  %38 = load %struct.sysc*, %struct.sysc** %2, align 8
  %39 = getelementptr inbounds %struct.sysc, %struct.sysc* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  br label %67

40:                                               ; preds = %25
  %41 = load %struct.sysc*, %struct.sysc** %2, align 8
  %42 = getelementptr inbounds %struct.sysc, %struct.sysc* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @SYSC_MODULE_QUIRK_SGX, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i32, i32* @sysc_module_enable_quirk_sgx, align 4
  %50 = load %struct.sysc*, %struct.sysc** %2, align 8
  %51 = getelementptr inbounds %struct.sysc, %struct.sysc* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %40
  %53 = load %struct.sysc*, %struct.sysc** %2, align 8
  %54 = getelementptr inbounds %struct.sysc, %struct.sysc* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SYSC_MODULE_QUIRK_WDT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = load i8*, i8** @sysc_reset_done_quirk_wdt, align 8
  %62 = load %struct.sysc*, %struct.sysc** %2, align 8
  %63 = getelementptr inbounds %struct.sysc, %struct.sysc* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** @sysc_reset_done_quirk_wdt, align 8
  %65 = load %struct.sysc*, %struct.sysc** %2, align 8
  %66 = getelementptr inbounds %struct.sysc, %struct.sysc* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %12, %21, %33, %60, %52
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
