; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_ftm-quaddec.c_ftm_clear_write_protection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_ftm-quaddec.c_ftm_clear_write_protection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftm_quaddec = type { i32 }

@FTM_FMS = common dso_local global i32 0, align 4
@FTM_FMS_WPEN = common dso_local global i32 0, align 4
@FTM_MODE = common dso_local global i32 0, align 4
@FTM_MODE_WPDIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ftm_quaddec*)* @ftm_clear_write_protection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftm_clear_write_protection(%struct.ftm_quaddec* %0) #0 {
  %2 = alloca %struct.ftm_quaddec*, align 8
  %3 = alloca i32, align 4
  store %struct.ftm_quaddec* %0, %struct.ftm_quaddec** %2, align 8
  %4 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %2, align 8
  %5 = load i32, i32* @FTM_FMS, align 4
  %6 = call i32 @ftm_read(%struct.ftm_quaddec* %4, i32 %5, i32* %3)
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @FTM_FMS_WPEN, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.ftm_quaddec*, %struct.ftm_quaddec** %2, align 8
  %13 = load i32, i32* @FTM_MODE, align 4
  %14 = load i32, i32* @FTM_MODE_WPDIS, align 4
  %15 = call i32 @FTM_FIELD_UPDATE(%struct.ftm_quaddec* %12, i32 %13, i32 %14, i32 1)
  br label %16

16:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @ftm_read(%struct.ftm_quaddec*, i32, i32*) #1

declare dso_local i32 @FTM_FIELD_UPDATE(%struct.ftm_quaddec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
