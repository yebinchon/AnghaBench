; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gdsc.c_gdsc_toggle_logic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gdsc.c_gdsc_toggle_logic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdsc = type { i32, %struct.TYPE_2__, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GDSC_ON = common dso_local global i32 0, align 4
@SW_COLLAPSE_MASK = common dso_local global i32 0, align 4
@VOTABLE = common dso_local global i32 0, align 4
@GDSC_OFF = common dso_local global i32 0, align 4
@TIMEOUT_US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s status stuck at 'o%s'\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ff\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdsc*, i32)* @gdsc_toggle_logic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdsc_toggle_logic(%struct.gdsc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gdsc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gdsc* %0, %struct.gdsc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @GDSC_ON, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @SW_COLLAPSE_MASK, align 4
  br label %14

14:                                               ; preds = %12, %11
  %15 = phi i32 [ 0, %11 ], [ %13, %12 ]
  store i32 %15, i32* %7, align 4
  %16 = load %struct.gdsc*, %struct.gdsc** %4, align 8
  %17 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.gdsc*, %struct.gdsc** %4, align 8
  %20 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SW_COLLAPSE_MASK, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @regmap_update_bits(i32 %18, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %65

29:                                               ; preds = %14
  %30 = load %struct.gdsc*, %struct.gdsc** %4, align 8
  %31 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @VOTABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @GDSC_OFF, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @TIMEOUT_US, align 4
  %42 = call i32 @udelay(i32 %41)
  store i32 0, i32* %3, align 4
  br label %65

43:                                               ; preds = %36, %29
  %44 = load %struct.gdsc*, %struct.gdsc** %4, align 8
  %45 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 @udelay(i32 1)
  br label %50

50:                                               ; preds = %48, %43
  %51 = load %struct.gdsc*, %struct.gdsc** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @gdsc_poll_status(%struct.gdsc* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.gdsc*, %struct.gdsc** %4, align 8
  %56 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %63 = call i32 @WARN(i32 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %58, i8* %62)
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %50, %40, %27
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gdsc_poll_status(%struct.gdsc*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
