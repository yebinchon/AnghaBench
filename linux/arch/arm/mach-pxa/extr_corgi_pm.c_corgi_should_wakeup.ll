; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_corgi_pm.c_corgi_should_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_corgi_pm.c_corgi_should_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (i32)*, i64 (i32)* }

@sharpsl_pm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [86 x i8] c"PEDR = %x, GPIO_AC_IN = %d, GPIO_CHRG_FULL = %d, GPIO_KEY_INT = %d, GPIO_WAKEUP = %d\0A\00", align 1
@PEDR = common dso_local global i32 0, align 4
@CORGI_GPIO_AC_IN = common dso_local global i32 0, align 4
@CORGI_GPIO_CHRG_FULL = common dso_local global i32 0, align 4
@CORGI_GPIO_KEY_INT = common dso_local global i32 0, align 4
@CORGI_GPIO_WAKEUP = common dso_local global i32 0, align 4
@SHARPSL_STATUS_ACIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"ac insert\0A\00", align 1
@SHARPSL_DO_OFFLINE_CHRG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"ac remove\0A\00", align 1
@SHARPSL_LED_OFF = common dso_local global i32 0, align 4
@CHRG_OFF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Charge full interrupt\0A\00", align 1
@PWER_RTC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"is_resume: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @corgi_should_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @corgi_should_wakeup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 0), align 8
  %5 = load i32, i32* @PEDR, align 4
  %6 = load i32, i32* @CORGI_GPIO_AC_IN, align 4
  %7 = call i32 @gpio_get_value(i32 %6)
  %8 = load i32, i32* @CORGI_GPIO_CHRG_FULL, align 4
  %9 = call i32 @gpio_get_value(i32 %8)
  %10 = load i32, i32* @CORGI_GPIO_KEY_INT, align 4
  %11 = call i32 @gpio_get_value(i32 %10)
  %12 = load i32, i32* @CORGI_GPIO_WAKEUP, align 4
  %13 = call i32 @gpio_get_value(i32 %12)
  %14 = call i32 (i32, i8*, ...) @dev_dbg(i32 %4, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %7, i32 %9, i32 %11, i32 %13)
  %15 = load i32, i32* @PEDR, align 4
  %16 = load i32, i32* @CORGI_GPIO_AC_IN, align 4
  %17 = call i32 @GPIO_bit(i32 %16)
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 2), align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64 (i32)*, i64 (i32)** %22, align 8
  %24 = load i32, i32* @SHARPSL_STATUS_ACIN, align 4
  %25 = call i64 %23(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 0), align 8
  %29 = call i32 (i32, i8*, ...) @dev_dbg(i32 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @SHARPSL_DO_OFFLINE_CHRG, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 3), align 8
  %32 = or i32 %31, %30
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 3), align 8
  br label %43

33:                                               ; preds = %20
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 0), align 8
  %35 = call i32 (i32, i8*, ...) @dev_dbg(i32 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @SHARPSL_LED_OFF, align 4
  %37 = call i32 @sharpsl_pm_led(i32 %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 2), align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32 (i32)*, i32 (i32)** %39, align 8
  %41 = call i32 %40(i32 0)
  %42 = load i32, i32* @CHRG_OFF, align 4
  store i32 %42, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 1), align 4
  br label %43

43:                                               ; preds = %33, %27
  br label %44

44:                                               ; preds = %43, %1
  %45 = load i32, i32* @PEDR, align 4
  %46 = load i32, i32* @CORGI_GPIO_CHRG_FULL, align 4
  %47 = call i32 @GPIO_bit(i32 %46)
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 0), align 8
  %52 = call i32 (i32, i8*, ...) @dev_dbg(i32 %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %44
  %54 = load i32, i32* @PEDR, align 4
  %55 = load i32, i32* @CORGI_GPIO_KEY_INT, align 4
  %56 = call i32 @GPIO_bit(i32 %55)
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load i32, i32* @CORGI_GPIO_KEY_INT, align 4
  %61 = call i32 @GPIO_bit(i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %59, %53
  %65 = load i32, i32* @PEDR, align 4
  %66 = load i32, i32* @CORGI_GPIO_WAKEUP, align 4
  %67 = call i32 @GPIO_bit(i32 %66)
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load i32, i32* @CORGI_GPIO_WAKEUP, align 4
  %72 = call i32 @GPIO_bit(i32 %71)
  %73 = load i32, i32* %3, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %70, %64
  %76 = load i32, i32* %2, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load i32, i32* @PEDR, align 4
  %80 = load i32, i32* @PWER_RTC, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i32, i32* @PWER_RTC, align 4
  %85 = load i32, i32* %3, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %78, %75
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 0), align 8
  %89 = load i32, i32* %3, align 4
  %90 = call i32 (i32, i8*, ...) @dev_dbg(i32 %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @GPIO_bit(i32) #1

declare dso_local i32 @sharpsl_pm_led(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
