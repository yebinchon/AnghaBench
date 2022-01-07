; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_paravirt_patch.c_native_patch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_paravirt_patch.c_native_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@cpu = common dso_local global i32 0, align 4
@iret = common dso_local global i32 0, align 4
@irq = common dso_local global i32 0, align 4
@irq_disable = common dso_local global i32 0, align 4
@irq_enable = common dso_local global i32 0, align 4
@lock = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@mmu = common dso_local global i32 0, align 4
@queued_spin_unlock = common dso_local global i32 0, align 4
@read_cr2 = common dso_local global i32 0, align 4
@read_cr3 = common dso_local global i32 0, align 4
@restore_fl = common dso_local global i32 0, align 4
@save_fl = common dso_local global i32 0, align 4
@swapgs = common dso_local global i32 0, align 4
@usergs_sysret64 = common dso_local global i32 0, align 4
@vcpu_is_preempted = common dso_local global i32 0, align 4
@wbinvd = common dso_local global i32 0, align 4
@write_cr3 = common dso_local global i32 0, align 4
@xxl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @native_patch(i32 %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %10 [
  ]

10:                                               ; preds = %4
  br label %11

11:                                               ; preds = %10
  %12 = load i32, i32* %5, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @paravirt_patch_default(i32 %12, i8* %13, i64 %14, i32 %15)
  ret i32 %16
}

declare dso_local i32 @paravirt_patch_default(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
