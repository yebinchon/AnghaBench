; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_hw_breakpoint.c_core_has_os_save_restore.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_hw_breakpoint.c_core_has_os_save_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c1 = common dso_local global i32 0, align 4
@ARM_OSLSR_OSLM0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @core_has_os_save_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_has_os_save_restore() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @get_debug_arch()
  switch i32 %3, label %16 [
    i32 129, label %4
    i32 128, label %5
  ]

4:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %17

5:                                                ; preds = %0
  %6 = load i32, i32* @c1, align 4
  %7 = load i32, i32* @c1, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @ARM_DBG_READ(i32 %6, i32 %7, i32 4, i32 %8)
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @ARM_OSLSR_OSLM0, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  store i32 1, i32* %1, align 4
  br label %17

15:                                               ; preds = %5
  br label %16

16:                                               ; preds = %0, %15
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %16, %14, %4
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i32 @get_debug_arch(...) #1

declare dso_local i32 @ARM_DBG_READ(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
