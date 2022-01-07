; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-chip.c_tpm_find_get_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm-chip.c_tpm_find_get_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tpm_chip* @tpm_find_get_ops(%struct.tpm_chip* %0) #0 {
  %2 = alloca %struct.tpm_chip*, align 8
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %3, align 8
  %5 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %6 = icmp ne %struct.tpm_chip* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %9 = call i32 @tpm_try_get_ops(%struct.tpm_chip* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  store %struct.tpm_chip* %12, %struct.tpm_chip** %2, align 8
  br label %30

13:                                               ; preds = %7
  store %struct.tpm_chip* null, %struct.tpm_chip** %2, align 8
  br label %30

14:                                               ; preds = %1
  %15 = call %struct.tpm_chip* (...) @tpm_default_chip()
  store %struct.tpm_chip* %15, %struct.tpm_chip** %3, align 8
  %16 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %17 = icmp ne %struct.tpm_chip* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store %struct.tpm_chip* null, %struct.tpm_chip** %2, align 8
  br label %30

19:                                               ; preds = %14
  %20 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %21 = call i32 @tpm_try_get_ops(%struct.tpm_chip* %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %23 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %22, i32 0, i32 0
  %24 = call i32 @put_device(i32* %23)
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store %struct.tpm_chip* null, %struct.tpm_chip** %2, align 8
  br label %30

28:                                               ; preds = %19
  %29 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  store %struct.tpm_chip* %29, %struct.tpm_chip** %2, align 8
  br label %30

30:                                               ; preds = %28, %27, %18, %13, %11
  %31 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  ret %struct.tpm_chip* %31
}

declare dso_local i32 @tpm_try_get_ops(%struct.tpm_chip*) #1

declare dso_local %struct.tpm_chip* @tpm_default_chip(...) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
