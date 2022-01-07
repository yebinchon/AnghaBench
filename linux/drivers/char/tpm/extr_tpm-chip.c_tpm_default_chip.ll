; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-chip.c_tpm_default_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-chip.c_tpm_default_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }

@idr_lock = common dso_local global i32 0, align 4
@dev_nums_idr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tpm_chip* @tpm_default_chip() #0 {
  %1 = alloca %struct.tpm_chip*, align 8
  %2 = alloca %struct.tpm_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tpm_chip* null, %struct.tpm_chip** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = call i32 @mutex_lock(i32* @idr_lock)
  br label %6

6:                                                ; preds = %17, %0
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %4, align 4
  %8 = call %struct.tpm_chip* @idr_get_next(i32* @dev_nums_idr, i32* %3)
  store %struct.tpm_chip* %8, %struct.tpm_chip** %1, align 8
  %9 = load %struct.tpm_chip*, %struct.tpm_chip** %1, align 8
  %10 = icmp ne %struct.tpm_chip* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.tpm_chip*, %struct.tpm_chip** %1, align 8
  %13 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %12, i32 0, i32 0
  %14 = call i32 @get_device(i32* %13)
  %15 = load %struct.tpm_chip*, %struct.tpm_chip** %1, align 8
  store %struct.tpm_chip* %15, %struct.tpm_chip** %2, align 8
  br label %21

16:                                               ; preds = %6
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %6, label %21

21:                                               ; preds = %17, %11
  %22 = call i32 @mutex_unlock(i32* @idr_lock)
  %23 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  ret %struct.tpm_chip* %23
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.tpm_chip* @idr_get_next(i32*, i32*) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
