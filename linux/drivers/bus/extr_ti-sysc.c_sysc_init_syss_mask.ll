; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_init_syss_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_init_syss_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc = type { %struct.TYPE_5__, %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"ti,syss-mask\00", align 1
@TI_SYSC_OMAP4 = common dso_local global i64 0, align 8
@TI_SYSC_OMAP4_TIMER = common dso_local global i64 0, align 8
@SYSC_OMAP4_SOFTRESET = common dso_local global i32 0, align 4
@SYSC_QUIRK_RESET_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysc*)* @sysc_init_syss_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysc_init_syss_mask(%struct.sysc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sysc*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sysc* %0, %struct.sysc** %3, align 8
  %7 = load %struct.sysc*, %struct.sysc** %3, align 8
  %8 = getelementptr inbounds %struct.sysc, %struct.sysc* %7, i32 0, i32 2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.device_node*, %struct.device_node** %4, align 8
  %13 = call i32 @of_property_read_u32(%struct.device_node* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %1
  %17 = load %struct.sysc*, %struct.sysc** %3, align 8
  %18 = getelementptr inbounds %struct.sysc, %struct.sysc* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TI_SYSC_OMAP4, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %16
  %25 = load %struct.sysc*, %struct.sysc** %3, align 8
  %26 = getelementptr inbounds %struct.sysc, %struct.sysc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TI_SYSC_OMAP4_TIMER, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %24, %16
  %33 = load %struct.sysc*, %struct.sysc** %3, align 8
  %34 = getelementptr inbounds %struct.sysc, %struct.sysc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SYSC_OMAP4_SOFTRESET, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load i32, i32* @SYSC_QUIRK_RESET_STATUS, align 4
  %42 = load %struct.sysc*, %struct.sysc** %3, align 8
  %43 = getelementptr inbounds %struct.sysc, %struct.sysc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %41
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %40, %32, %24
  store i32 0, i32* %2, align 4
  br label %72

48:                                               ; preds = %1
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %48
  %53 = load %struct.sysc*, %struct.sysc** %3, align 8
  %54 = getelementptr inbounds %struct.sysc, %struct.sysc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SYSC_OMAP4_SOFTRESET, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = load i32, i32* @SYSC_QUIRK_RESET_STATUS, align 4
  %62 = load %struct.sysc*, %struct.sysc** %3, align 8
  %63 = getelementptr inbounds %struct.sysc, %struct.sysc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %61
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %60, %52, %48
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.sysc*, %struct.sysc** %3, align 8
  %70 = getelementptr inbounds %struct.sysc, %struct.sysc* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %67, %47
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
