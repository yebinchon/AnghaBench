; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_reset_done_quirk_wdt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_reset_done_quirk_wdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc = type { i32, i64 }

@MAX_MODULE_SOFTRESET_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"wdt disable step1 failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"wdt disable step2 failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysc*)* @sysc_reset_done_quirk_wdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysc_reset_done_quirk_wdt(%struct.sysc* %0) #0 {
  %2 = alloca %struct.sysc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sysc* %0, %struct.sysc** %2, align 8
  store i32 52, i32* %3, align 4
  store i32 72, i32* %4, align 4
  %7 = load %struct.sysc*, %struct.sysc** %2, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @sysc_write(%struct.sysc* %7, i32 %8, i32 43690)
  %10 = load %struct.sysc*, %struct.sysc** %2, align 8
  %11 = getelementptr inbounds %struct.sysc, %struct.sysc* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 16
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* @MAX_MODULE_SOFTRESET_WAIT, align 4
  %23 = call i32 @readl_poll_timeout(i64 %15, i32 %16, i32 %21, i32 100, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.sysc*, %struct.sysc** %2, align 8
  %28 = getelementptr inbounds %struct.sysc, %struct.sysc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_warn(i32 %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %26, %1
  %32 = load %struct.sysc*, %struct.sysc** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @sysc_write(%struct.sysc* %32, i32 %33, i32 21845)
  %35 = load %struct.sysc*, %struct.sysc** %2, align 8
  %36 = getelementptr inbounds %struct.sysc, %struct.sysc* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, 16
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* @MAX_MODULE_SOFTRESET_WAIT, align 4
  %48 = call i32 @readl_poll_timeout(i64 %40, i32 %41, i32 %46, i32 100, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %31
  %52 = load %struct.sysc*, %struct.sysc** %2, align 8
  %53 = getelementptr inbounds %struct.sysc, %struct.sysc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dev_warn(i32 %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %51, %31
  ret void
}

declare dso_local i32 @sysc_write(%struct.sysc*, i32, i32) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
