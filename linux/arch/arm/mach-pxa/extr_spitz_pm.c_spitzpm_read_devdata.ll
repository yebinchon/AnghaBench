; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_spitz_pm.c_spitzpm_read_devdata.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_spitz_pm.c_spitzpm_read_devdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@SPITZ_GPIO_AC_IN = common dso_local global i32 0, align 4
@sharpsl_pm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MAX1111_ACIN_VOLT = common dso_local global i32 0, align 4
@MAX1111_BATT_TEMP = common dso_local global i32 0, align 4
@MAX1111_BATT_VOLT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @spitzpm_read_devdata(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %34 [
    i32 131, label %5
    i32 128, label %12
    i32 130, label %17
    i32 129, label %22
    i32 134, label %27
    i32 133, label %30
    i32 132, label %33
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @SPITZ_GPIO_AC_IN, align 4
  %7 = call i64 @gpio_get_value(i32 %6)
  %8 = icmp ne i64 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %2, align 8
  br label %37

12:                                               ; preds = %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 0), align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @gpio_get_value(i32 %15)
  store i64 %16, i64* %2, align 8
  br label %37

17:                                               ; preds = %1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 0), align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @gpio_get_value(i32 %20)
  store i64 %21, i64* %2, align 8
  br label %37

22:                                               ; preds = %1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sharpsl_pm, i32 0, i32 0), align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @gpio_get_value(i32 %25)
  store i64 %26, i64* %2, align 8
  br label %37

27:                                               ; preds = %1
  %28 = load i32, i32* @MAX1111_ACIN_VOLT, align 4
  %29 = call i64 @sharpsl_pm_pxa_read_max1111(i32 %28)
  store i64 %29, i64* %2, align 8
  br label %37

30:                                               ; preds = %1
  %31 = load i32, i32* @MAX1111_BATT_TEMP, align 4
  %32 = call i64 @sharpsl_pm_pxa_read_max1111(i32 %31)
  store i64 %32, i64* %2, align 8
  br label %37

33:                                               ; preds = %1
  br label %34

34:                                               ; preds = %1, %33
  %35 = load i32, i32* @MAX1111_BATT_VOLT, align 4
  %36 = call i64 @sharpsl_pm_pxa_read_max1111(i32 %35)
  store i64 %36, i64* %2, align 8
  br label %37

37:                                               ; preds = %34, %30, %27, %22, %17, %12, %5
  %38 = load i64, i64* %2, align 8
  ret i64 %38
}

declare dso_local i64 @gpio_get_value(i32) #1

declare dso_local i64 @sharpsl_pm_pxa_read_max1111(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
