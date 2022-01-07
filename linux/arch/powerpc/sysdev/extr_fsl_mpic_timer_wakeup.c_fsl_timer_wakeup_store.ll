; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_mpic_timer_wakeup.c_fsl_timer_wakeup_store.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_mpic_timer_wakeup.c_fsl_timer_wakeup_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@sysfs_lock = common dso_local global i32 0, align 4
@fsl_wakeup = common dso_local global %struct.TYPE_7__* null, align 8
@fsl_mpic_timer_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fsl_timer_wakeup_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fsl_timer_wakeup_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i64 @kstrtoll(i8* %12, i32 0, i32* %10)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i64, i64* @EINVAL, align 8
  %17 = sub i64 0, %16
  store i64 %17, i64* %5, align 8
  br label %84

18:                                               ; preds = %4
  %19 = call i32 @mutex_lock(i32* @sysfs_lock)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fsl_wakeup, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fsl_wakeup, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @disable_irq_wake(i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fsl_wakeup, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = call i32 @mpic_free_timer(%struct.TYPE_6__* %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fsl_wakeup, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %36, align 8
  br label %37

37:                                               ; preds = %24, %18
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = call i32 @mutex_unlock(i32* @sysfs_lock)
  %42 = load i64, i64* %9, align 8
  store i64 %42, i64* %5, align 8
  br label %84

43:                                               ; preds = %37
  %44 = load i32, i32* @fsl_mpic_timer_irq, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fsl_wakeup, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call %struct.TYPE_6__* @mpic_request_timer(i32 %44, %struct.TYPE_7__* %45, i32 %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fsl_wakeup, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store %struct.TYPE_6__* %47, %struct.TYPE_6__** %49, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fsl_wakeup, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = icmp ne %struct.TYPE_6__* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %43
  %55 = call i32 @mutex_unlock(i32* @sysfs_lock)
  %56 = load i64, i64* @EINVAL, align 8
  %57 = sub i64 0, %56
  store i64 %57, i64* %5, align 8
  br label %84

58:                                               ; preds = %43
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fsl_wakeup, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @enable_irq_wake(i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %58
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fsl_wakeup, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = call i32 @mpic_free_timer(%struct.TYPE_6__* %70)
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fsl_wakeup, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %73, align 8
  %74 = call i32 @mutex_unlock(i32* @sysfs_lock)
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  store i64 %76, i64* %5, align 8
  br label %84

77:                                               ; preds = %58
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** @fsl_wakeup, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = call i32 @mpic_start_timer(%struct.TYPE_6__* %80)
  %82 = call i32 @mutex_unlock(i32* @sysfs_lock)
  %83 = load i64, i64* %9, align 8
  store i64 %83, i64* %5, align 8
  br label %84

84:                                               ; preds = %77, %67, %54, %40, %15
  %85 = load i64, i64* %5, align 8
  ret i64 %85
}

declare dso_local i64 @kstrtoll(i8*, i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @disable_irq_wake(i32) #1

declare dso_local i32 @mpic_free_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_6__* @mpic_request_timer(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @mpic_start_timer(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
