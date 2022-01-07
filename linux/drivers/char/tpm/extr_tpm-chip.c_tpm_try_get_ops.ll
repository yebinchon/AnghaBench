; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-chip.c_tpm_try_get_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-chip.c_tpm_try_get_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm_try_get_ops(%struct.tpm_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %3, align 8
  %5 = load i32, i32* @EIO, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %8 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %7, i32 0, i32 0
  %9 = call i32 @get_device(i32* %8)
  %10 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %11 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %10, i32 0, i32 1
  %12 = call i32 @down_read(i32* %11)
  %13 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %14 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %32

18:                                               ; preds = %1
  %19 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %20 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %19, i32 0, i32 2
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %23 = call i32 @tpm_chip_start(%struct.tpm_chip* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %28

27:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %40

28:                                               ; preds = %26
  %29 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %30 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %29, i32 0, i32 2
  %31 = call i32 @mutex_unlock(i32* %30)
  br label %32

32:                                               ; preds = %28, %17
  %33 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %34 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %33, i32 0, i32 1
  %35 = call i32 @up_read(i32* %34)
  %36 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %37 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %36, i32 0, i32 0
  %38 = call i32 @put_device(i32* %37)
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %32, %27
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tpm_chip_start(%struct.tpm_chip*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
