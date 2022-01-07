; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_bios_uv.c_uv_bios_call_irqsave.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_bios_uv.c_uv_bios_call_irqsave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__efi_uv_runtime_lock = common dso_local global i32 0, align 4
@BIOS_STATUS_ABORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_bios_call_irqsave(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = call i64 @down_interruptible(i32* @__efi_uv_runtime_lock)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = load i32, i32* @BIOS_STATUS_ABORT, align 4
  store i32 %19, i32* %7, align 4
  br label %34

20:                                               ; preds = %6
  %21 = load i64, i64* %14, align 8
  %22 = call i32 @local_irq_save(i64 %21)
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @__uv_bios_call(i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %15, align 4
  %30 = load i64, i64* %14, align 8
  %31 = call i32 @local_irq_restore(i64 %30)
  %32 = call i32 @up(i32* @__efi_uv_runtime_lock)
  %33 = load i32, i32* %15, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %20, %18
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @__uv_bios_call(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
