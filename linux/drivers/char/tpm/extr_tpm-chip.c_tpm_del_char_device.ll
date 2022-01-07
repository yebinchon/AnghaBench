; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-chip.c_tpm_del_char_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-chip.c_tpm_del_char_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32, i32, i32*, i32, i32, i32 }

@idr_lock = common dso_local global i32 0, align 4
@dev_nums_idr = common dso_local global i32 0, align 4
@TPM_CHIP_FLAG_TPM2 = common dso_local global i32 0, align 4
@TPM2_SU_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tpm_chip*)* @tpm_del_char_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpm_del_char_device(%struct.tpm_chip* %0) #0 {
  %2 = alloca %struct.tpm_chip*, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %2, align 8
  %3 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %4 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %3, i32 0, i32 5
  %5 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %6 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %5, i32 0, i32 4
  %7 = call i32 @cdev_device_del(i32* %4, i32* %6)
  %8 = call i32 @mutex_lock(i32* @idr_lock)
  %9 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %10 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @idr_replace(i32* @dev_nums_idr, i32* null, i32 %11)
  %13 = call i32 @mutex_unlock(i32* @idr_lock)
  %14 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %15 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %14, i32 0, i32 1
  %16 = call i32 @down_write(i32* %15)
  %17 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %18 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @TPM_CHIP_FLAG_TPM2, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %1
  %24 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %25 = call i32 @tpm_chip_start(%struct.tpm_chip* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %29 = load i32, i32* @TPM2_SU_CLEAR, align 4
  %30 = call i32 @tpm2_shutdown(%struct.tpm_chip* %28, i32 %29)
  %31 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %32 = call i32 @tpm_chip_stop(%struct.tpm_chip* %31)
  br label %33

33:                                               ; preds = %27, %23
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %36 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %38 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %37, i32 0, i32 1
  %39 = call i32 @up_write(i32* %38)
  ret void
}

declare dso_local i32 @cdev_device_del(i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_replace(i32*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @tpm_chip_start(%struct.tpm_chip*) #1

declare dso_local i32 @tpm2_shutdown(%struct.tpm_chip*, i32) #1

declare dso_local i32 @tpm_chip_stop(%struct.tpm_chip*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
