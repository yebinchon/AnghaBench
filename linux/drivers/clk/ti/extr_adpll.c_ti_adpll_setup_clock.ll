; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_adpll.c_ti_adpll_setup_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_adpll.c_ti_adpll_setup_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_adpll_data = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.clk** }
%struct.TYPE_3__ = type { void (%struct.clk*)*, %struct.clk_lookup*, %struct.clk* }
%struct.clk_lookup = type { i32 }
%struct.clk = type { i32 }

@ADPLL_MAX_CON_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"clock %s con_id lookup may fail\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"pll%03lx%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"no con_id for clock %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_adpll_data*, %struct.clk*, i32, i32, i8*, void (%struct.clk*)*)* @ti_adpll_setup_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_adpll_setup_clock(%struct.ti_adpll_data* %0, %struct.clk* %1, i32 %2, i32 %3, i8* %4, void (%struct.clk*)* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ti_adpll_data*, align 8
  %9 = alloca %struct.clk*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca void (%struct.clk*)*, align 8
  %14 = alloca %struct.clk_lookup*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.ti_adpll_data* %0, %struct.ti_adpll_data** %8, align 8
  store %struct.clk* %1, %struct.clk** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store void (%struct.clk*)* %5, void (%struct.clk*)** %13, align 8
  store i8* null, i8** %15, align 8
  %19 = load i32, i32* @ADPLL_MAX_CON_ID, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %16, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %17, align 8
  %23 = load %struct.clk*, %struct.clk** %9, align 8
  %24 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %25 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  store %struct.clk* %23, %struct.clk** %30, align 8
  %31 = load void (%struct.clk*)*, void (%struct.clk*)** %13, align 8
  %32 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %33 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %32, i32 0, i32 3
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store void (%struct.clk*)* %31, void (%struct.clk*)** %38, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = call i8* @strrchr(i8* %39, i8 signext 46)
  store i8* %40, i8** %15, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %82

43:                                               ; preds = %6
  %44 = load i8*, i8** %15, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %82

47:                                               ; preds = %43
  %48 = load i8*, i8** %15, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = load i32, i32* @ADPLL_MAX_CON_ID, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %54 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = call i32 @dev_warn(i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %52, %47
  %59 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %60 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, 4095
  %63 = load i8*, i8** %15, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = call i32 @snprintf(i8* %22, i32 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %62, i8* %64)
  %66 = load %struct.clk*, %struct.clk** %9, align 8
  %67 = call %struct.clk_lookup* @clkdev_create(%struct.clk* %66, i8* %22, i32* null)
  store %struct.clk_lookup* %67, %struct.clk_lookup** %14, align 8
  %68 = load %struct.clk_lookup*, %struct.clk_lookup** %14, align 8
  %69 = icmp ne %struct.clk_lookup* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %58
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %106

73:                                               ; preds = %58
  %74 = load %struct.clk_lookup*, %struct.clk_lookup** %14, align 8
  %75 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %76 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %75, i32 0, i32 3
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  store %struct.clk_lookup* %74, %struct.clk_lookup** %81, align 8
  br label %88

82:                                               ; preds = %43, %6
  %83 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %84 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = call i32 @dev_warn(i32 %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %82, %73
  %89 = load i32, i32* %11, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 0, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %106

92:                                               ; preds = %88
  %93 = load %struct.clk*, %struct.clk** %9, align 8
  %94 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %95 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load %struct.clk**, %struct.clk*** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.clk*, %struct.clk** %97, i64 %99
  store %struct.clk* %93, %struct.clk** %100, align 8
  %101 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %102 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %106

106:                                              ; preds = %92, %91, %70
  %107 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %107)
  %108 = load i32, i32* %7, align 4
  ret i32 %108
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @dev_warn(i32, i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*) #2

declare dso_local %struct.clk_lookup* @clkdev_create(%struct.clk*, i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
