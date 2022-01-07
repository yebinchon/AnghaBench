; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-chip.c_tpm_add_char_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-chip.c_tpm_add_char_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"unable to cdev_device_add() %s, major %d, minor %d, err=%d\0A\00", align 1
@TPM_CHIP_FLAG_TPM2 = common dso_local global i32 0, align 4
@idr_lock = common dso_local global i32 0, align 4
@dev_nums_idr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*)* @tpm_add_char_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_add_char_device(%struct.tpm_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %3, align 8
  %5 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %6 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %5, i32 0, i32 5
  %7 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %8 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %7, i32 0, i32 4
  %9 = call i32 @cdev_device_add(i32* %6, %struct.TYPE_4__* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %14 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %13, i32 0, i32 4
  %15 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %16 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %15, i32 0, i32 4
  %17 = call i32 @dev_name(%struct.TYPE_4__* %16)
  %18 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %19 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @MAJOR(i32 %21)
  %23 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %24 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @MINOR(i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @dev_err(%struct.TYPE_4__* %14, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %22, i32 %27, i32 %28)
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %75

31:                                               ; preds = %1
  %32 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %33 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @TPM_CHIP_FLAG_TPM2, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %66

38:                                               ; preds = %31
  %39 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %40 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %39, i32 0, i32 3
  %41 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %42 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %41, i32 0, i32 2
  %43 = call i32 @cdev_device_add(i32* %40, %struct.TYPE_4__* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %38
  %47 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %48 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %47, i32 0, i32 2
  %49 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %50 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %49, i32 0, i32 2
  %51 = call i32 @dev_name(%struct.TYPE_4__* %50)
  %52 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %53 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @MAJOR(i32 %55)
  %57 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %58 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @MINOR(i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @dev_err(%struct.TYPE_4__* %48, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %56, i32 %61, i32 %62)
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %75

65:                                               ; preds = %38
  br label %66

66:                                               ; preds = %65, %31
  %67 = call i32 @mutex_lock(i32* @idr_lock)
  %68 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %69 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %70 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @idr_replace(i32* @dev_nums_idr, %struct.tpm_chip* %68, i32 %71)
  %73 = call i32 @mutex_unlock(i32* @idr_lock)
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %66, %46, %12
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @cdev_device_add(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_4__*) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_replace(i32*, %struct.tpm_chip*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
