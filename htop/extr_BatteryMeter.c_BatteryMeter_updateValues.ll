; ModuleID = '/home/carl/AnghaBench/htop/extr_BatteryMeter.c_BatteryMeter_updateValues.c'
source_filename = "/home/carl/AnghaBench/htop/extr_BatteryMeter.c_BatteryMeter_updateValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double*, i64 }

@.str = private unnamed_addr constant [4 x i8] c"n/a\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%.1f%%\00", align 1
@TEXT_METERMODE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"%.1f%% (Running on A/C)\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%.1f%% (Running on battery)\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%.1f%%(A/C)\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%.1f%%(bat)\00", align 1
@AC_PRESENT = common dso_local global i64 0, align 8
@AC_ABSENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32)* @BatteryMeter_updateValues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BatteryMeter_updateValues(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = call i32 @Battery_getData(double* %8, i64* %7)
  %13 = load double, double* %8, align 8
  %14 = fcmp oeq double %13, -1.000000e+00
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load double*, double** %17, align 8
  %19 = getelementptr inbounds double, double* %18, i64 0
  store double 0.000000e+00, double* %19, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (i8*, i32, i8*, ...) @xSnprintf(i8* %20, i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %64

23:                                               ; preds = %3
  %24 = load double, double* %8, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load double*, double** %26, align 8
  %28 = getelementptr inbounds double, double* %27, i64 0
  store double %24, double* %28, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TEXT_METERMODE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %36

35:                                               ; preds = %23
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* @AC_PRESENT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = load double, double* %8, align 8
  %45 = call i32 (i8*, i32, i8*, ...) @xSnprintf(i8* %41, i32 %42, i8* %43, double %44)
  br label %63

46:                                               ; preds = %36
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @AC_ABSENT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i8*, i8** %10, align 8
  %54 = load double, double* %8, align 8
  %55 = call i32 (i8*, i32, i8*, ...) @xSnprintf(i8* %51, i32 %52, i8* %53, double %54)
  br label %62

56:                                               ; preds = %46
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = load double, double* %8, align 8
  %61 = call i32 (i8*, i32, i8*, ...) @xSnprintf(i8* %57, i32 %58, i8* %59, double %60)
  br label %62

62:                                               ; preds = %56, %50
  br label %63

63:                                               ; preds = %62, %40
  br label %64

64:                                               ; preds = %63, %15
  ret void
}

declare dso_local i32 @Battery_getData(double*, i64*) #1

declare dso_local i32 @xSnprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
