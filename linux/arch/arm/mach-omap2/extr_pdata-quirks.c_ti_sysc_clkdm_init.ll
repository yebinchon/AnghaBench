; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_pdata-quirks.c_ti_sysc_clkdm_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_pdata-quirks.c_ti_sysc_clkdm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.clk = type { i32 }
%struct.ti_sysc_cookie = type { i8* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.clk*, %struct.clk*, %struct.ti_sysc_cookie*)* @ti_sysc_clkdm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sysc_clkdm_init(%struct.device* %0, %struct.clk* %1, %struct.clk* %2, %struct.ti_sysc_cookie* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca %struct.clk*, align 8
  %9 = alloca %struct.ti_sysc_cookie*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.clk* %1, %struct.clk** %7, align 8
  store %struct.clk* %2, %struct.clk** %8, align 8
  store %struct.ti_sysc_cookie* %3, %struct.ti_sysc_cookie** %9, align 8
  %10 = load %struct.clk*, %struct.clk** %7, align 8
  %11 = call i32 @IS_ERR(%struct.clk* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = load %struct.clk*, %struct.clk** %7, align 8
  %15 = call i8* @ti_sysc_find_one_clockdomain(%struct.clk* %14)
  %16 = load %struct.ti_sysc_cookie*, %struct.ti_sysc_cookie** %9, align 8
  %17 = getelementptr inbounds %struct.ti_sysc_cookie, %struct.ti_sysc_cookie* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  br label %18

18:                                               ; preds = %13, %4
  %19 = load %struct.ti_sysc_cookie*, %struct.ti_sysc_cookie** %9, align 8
  %20 = getelementptr inbounds %struct.ti_sysc_cookie, %struct.ti_sysc_cookie* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %42

24:                                               ; preds = %18
  %25 = load %struct.clk*, %struct.clk** %8, align 8
  %26 = call i32 @IS_ERR(%struct.clk* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load %struct.clk*, %struct.clk** %8, align 8
  %30 = call i8* @ti_sysc_find_one_clockdomain(%struct.clk* %29)
  %31 = load %struct.ti_sysc_cookie*, %struct.ti_sysc_cookie** %9, align 8
  %32 = getelementptr inbounds %struct.ti_sysc_cookie, %struct.ti_sysc_cookie* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  br label %33

33:                                               ; preds = %28, %24
  %34 = load %struct.ti_sysc_cookie*, %struct.ti_sysc_cookie** %9, align 8
  %35 = getelementptr inbounds %struct.ti_sysc_cookie, %struct.ti_sysc_cookie* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %39, %38, %23
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @IS_ERR(%struct.clk*) #1

declare dso_local i8* @ti_sysc_find_one_clockdomain(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
