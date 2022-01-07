; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_dpm_subsys_suspend_noirq_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_dpm_subsys_suspend_noirq_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"noirq power domain \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"noirq type \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"noirq class \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"noirq bus \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.device*, i32, i8**)* @dpm_subsys_suspend_noirq_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dpm_subsys_suspend_noirq_cb(%struct.device* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 3
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %6, align 4
  %20 = call i32* @pm_noirq_op(i32* %18, i32 %19)
  store i32* %20, i32** %8, align 8
  br label %85

21:                                               ; preds = %3
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = icmp ne %struct.TYPE_6__* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32* @pm_noirq_op(i32* %38, i32 %39)
  store i32* %40, i32** %8, align 8
  br label %84

41:                                               ; preds = %26, %21
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = getelementptr inbounds %struct.device, %struct.device* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = icmp ne %struct.TYPE_7__* %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = getelementptr inbounds %struct.device, %struct.device* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = getelementptr inbounds %struct.device, %struct.device* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32* @pm_noirq_op(i32* %58, i32 %59)
  store i32* %60, i32** %8, align 8
  br label %83

61:                                               ; preds = %46, %41
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = getelementptr inbounds %struct.device, %struct.device* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = icmp ne %struct.TYPE_8__* %64, null
  br i1 %65, label %66, label %81

66:                                               ; preds = %61
  %67 = load %struct.device*, %struct.device** %5, align 8
  %68 = getelementptr inbounds %struct.device, %struct.device* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %66
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  %74 = load %struct.device*, %struct.device** %5, align 8
  %75 = getelementptr inbounds %struct.device, %struct.device* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32* @pm_noirq_op(i32* %78, i32 %79)
  store i32* %80, i32** %8, align 8
  br label %82

81:                                               ; preds = %66, %61
  store i32* null, i32** %4, align 8
  br label %93

82:                                               ; preds = %73
  br label %83

83:                                               ; preds = %82, %53
  br label %84

84:                                               ; preds = %83, %33
  br label %85

85:                                               ; preds = %84, %14
  %86 = load i8**, i8*** %7, align 8
  %87 = icmp ne i8** %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i8*, i8** %9, align 8
  %90 = load i8**, i8*** %7, align 8
  store i8* %89, i8** %90, align 8
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32*, i32** %8, align 8
  store i32* %92, i32** %4, align 8
  br label %93

93:                                               ; preds = %91, %81
  %94 = load i32*, i32** %4, align 8
  ret i32* %94
}

declare dso_local i32* @pm_noirq_op(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
