; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gdsc.c_gdsc_check_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gdsc.c_gdsc_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdsc = type { i32, i32, i32, i32 }

@POLL_CFG_GDSCR = common dso_local global i32 0, align 4
@CFG_GDSCR_OFFSET = common dso_local global i32 0, align 4
@GDSC_POWER_UP_COMPLETE = common dso_local global i32 0, align 4
@GDSC_POWER_DOWN_COMPLETE = common dso_local global i32 0, align 4
@PWR_ON_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdsc*, i32)* @gdsc_check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdsc_check_status(%struct.gdsc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gdsc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gdsc* %0, %struct.gdsc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.gdsc*, %struct.gdsc** %4, align 8
  %10 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @POLL_CFG_GDSCR, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.gdsc*, %struct.gdsc** %4, align 8
  %17 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CFG_GDSCR_OFFSET, align 4
  %20 = add i32 %18, %19
  store i32 %20, i32* %6, align 4
  br label %35

21:                                               ; preds = %2
  %22 = load %struct.gdsc*, %struct.gdsc** %4, align 8
  %23 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.gdsc*, %struct.gdsc** %4, align 8
  %28 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  br label %34

30:                                               ; preds = %21
  %31 = load %struct.gdsc*, %struct.gdsc** %4, align 8
  %32 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %30, %26
  br label %35

35:                                               ; preds = %34, %15
  %36 = load %struct.gdsc*, %struct.gdsc** %4, align 8
  %37 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @regmap_read(i32 %38, i32 %39, i32* %7)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %91

45:                                               ; preds = %35
  %46 = load %struct.gdsc*, %struct.gdsc** %4, align 8
  %47 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @POLL_CFG_GDSCR, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %45
  %53 = load i32, i32* %5, align 4
  switch i32 %53, label %70 [
    i32 128, label %54
    i32 129, label %62
  ]

54:                                               ; preds = %52
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @GDSC_POWER_UP_COMPLETE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %3, align 4
  br label %91

62:                                               ; preds = %52
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @GDSC_POWER_DOWN_COMPLETE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %3, align 4
  br label %91

70:                                               ; preds = %52
  br label %71

71:                                               ; preds = %70, %45
  %72 = load i32, i32* %5, align 4
  switch i32 %72, label %88 [
    i32 128, label %73
    i32 129, label %81
  ]

73:                                               ; preds = %71
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @PWR_ON_MASK, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %3, align 4
  br label %91

81:                                               ; preds = %71
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @PWR_ON_MASK, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %3, align 4
  br label %91

88:                                               ; preds = %71
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %88, %81, %73, %62, %54, %43
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
