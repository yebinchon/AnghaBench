; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-cmd.c_tpm2_auto_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-cmd.c_tpm2_auto_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32 }

@TPM2_RC_INITIALIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm2_auto_startup(%struct.tpm_chip* %0) #0 {
  %2 = alloca %struct.tpm_chip*, align 8
  %3 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %2, align 8
  %4 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %5 = call i32 @tpm2_get_timeouts(%struct.tpm_chip* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %39

9:                                                ; preds = %1
  %10 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %11 = call i32 @tpm2_do_selftest(%struct.tpm_chip* %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @TPM2_RC_INITIALIZE, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %39

19:                                               ; preds = %14, %9
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @TPM2_RC_INITIALIZE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %25 = call i32 @tpm2_startup(%struct.tpm_chip* %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %39

29:                                               ; preds = %23
  %30 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %31 = call i32 @tpm2_do_selftest(%struct.tpm_chip* %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %39

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %19
  %37 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %38 = call i32 @tpm2_get_cc_attrs_tbl(%struct.tpm_chip* %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %34, %28, %18, %8
  %40 = load i32, i32* %3, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @tpm2_get_timeouts(%struct.tpm_chip*) #1

declare dso_local i32 @tpm2_do_selftest(%struct.tpm_chip*) #1

declare dso_local i32 @tpm2_startup(%struct.tpm_chip*) #1

declare dso_local i32 @tpm2_get_cc_attrs_tbl(%struct.tpm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
