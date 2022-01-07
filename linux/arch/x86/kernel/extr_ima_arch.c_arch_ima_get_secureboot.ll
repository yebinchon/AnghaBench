; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_ima_arch.c_arch_ima_get_secureboot.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_ima_arch.c_arch_ima_get_secureboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@arch_ima_get_secureboot.sb_mode = internal global i32 0, align 4
@arch_ima_get_secureboot.initialized = internal global i32 0, align 4
@EFI_BOOT = common dso_local global i32 0, align 4
@boot_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@efi_secureboot_mode_unset = common dso_local global i32 0, align 4
@efi_secureboot_mode_enabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_ima_get_secureboot() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @arch_ima_get_secureboot.initialized, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @EFI_BOOT, align 4
  %6 = call i64 @efi_enabled(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_params, i32 0, i32 0), align 4
  store i32 %9, i32* @arch_ima_get_secureboot.sb_mode, align 4
  %10 = load i32, i32* @arch_ima_get_secureboot.sb_mode, align 4
  %11 = load i32, i32* @efi_secureboot_mode_unset, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 (...) @get_sb_mode()
  store i32 %14, i32* @arch_ima_get_secureboot.sb_mode, align 4
  br label %15

15:                                               ; preds = %13, %8
  store i32 1, i32* @arch_ima_get_secureboot.initialized, align 4
  br label %16

16:                                               ; preds = %15, %4, %0
  %17 = load i32, i32* @arch_ima_get_secureboot.sb_mode, align 4
  %18 = load i32, i32* @efi_secureboot_mode_enabled, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* %1, align 4
  br label %22

21:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %21, %20
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local i64 @efi_enabled(i32) #1

declare dso_local i32 @get_sb_mode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
