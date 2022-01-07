; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-space.c_tpm2_del_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-space.c_tpm2_del_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }
%struct.tpm_space = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tpm2_del_space(%struct.tpm_chip* %0, %struct.tpm_space* %1) #0 {
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca %struct.tpm_space*, align 8
  store %struct.tpm_chip* %0, %struct.tpm_chip** %3, align 8
  store %struct.tpm_space* %1, %struct.tpm_space** %4, align 8
  %5 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %6 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %9 = call i32 @tpm_chip_start(%struct.tpm_chip* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %13 = load %struct.tpm_space*, %struct.tpm_space** %4, align 8
  %14 = call i32 @tpm2_flush_sessions(%struct.tpm_chip* %12, %struct.tpm_space* %13)
  %15 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %16 = call i32 @tpm_chip_stop(%struct.tpm_chip* %15)
  br label %17

17:                                               ; preds = %11, %2
  %18 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %19 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load %struct.tpm_space*, %struct.tpm_space** %4, align 8
  %22 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @kfree(i32 %23)
  %25 = load %struct.tpm_space*, %struct.tpm_space** %4, align 8
  %26 = getelementptr inbounds %struct.tpm_space, %struct.tpm_space* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @kfree(i32 %27)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tpm_chip_start(%struct.tpm_chip*) #1

declare dso_local i32 @tpm2_flush_sessions(%struct.tpm_chip*, %struct.tpm_space*) #1

declare dso_local i32 @tpm_chip_stop(%struct.tpm_chip*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
