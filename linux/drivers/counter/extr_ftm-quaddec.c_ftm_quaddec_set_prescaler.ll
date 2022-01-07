; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_ftm-quaddec.c_ftm_quaddec_set_prescaler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_ftm-quaddec.c_ftm_quaddec_set_prescaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_device = type { %struct.ftm_quaddec* }
%struct.ftm_quaddec = type { i32 }
%struct.counter_count = type { i32 }

@FTM_SC = common dso_local global i32 0, align 4
@FTM_SC_PS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_device*, %struct.counter_count*, i64)* @ftm_quaddec_set_prescaler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftm_quaddec_set_prescaler(%struct.counter_device* %0, %struct.counter_count* %1, i64 %2) #0 {
  %4 = alloca %struct.counter_device*, align 8
  %5 = alloca %struct.counter_count*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ftm_quaddec*, align 8
  store %struct.counter_device* %0, %struct.counter_device** %4, align 8
  store %struct.counter_count* %1, %struct.counter_count** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.counter_device*, %struct.counter_device** %4, align 8
  %9 = getelementptr inbounds %struct.counter_device, %struct.counter_device* %8, i32 0, i32 0
  %10 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %9, align 8
  store %struct.ftm_quaddec* %10, %struct.ftm_quaddec** %7, align 8
  %11 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %7, align 8
  %12 = getelementptr inbounds %struct.ftm_quaddec, %struct.ftm_quaddec* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %7, align 8
  %15 = call i32 @ftm_clear_write_protection(%struct.ftm_quaddec* %14)
  %16 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %7, align 8
  %17 = load i32, i32* @FTM_SC, align 4
  %18 = load i32, i32* @FTM_SC_PS_MASK, align 4
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @FTM_FIELD_UPDATE(%struct.ftm_quaddec* %16, i32 %17, i32 %18, i64 %19)
  %21 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %7, align 8
  %22 = call i32 @ftm_set_write_protection(%struct.ftm_quaddec* %21)
  %23 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %7, align 8
  %24 = call i32 @ftm_reset_counter(%struct.ftm_quaddec* %23)
  %25 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %7, align 8
  %26 = getelementptr inbounds %struct.ftm_quaddec, %struct.ftm_quaddec* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ftm_clear_write_protection(%struct.ftm_quaddec*) #1

declare dso_local i32 @FTM_FIELD_UPDATE(%struct.ftm_quaddec*, i32, i32, i64) #1

declare dso_local i32 @ftm_set_write_protection(%struct.ftm_quaddec*) #1

declare dso_local i32 @ftm_reset_counter(%struct.ftm_quaddec*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
