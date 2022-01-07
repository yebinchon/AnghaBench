; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_debug-monitors.c_enable_debug_monitors.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_debug-monitors.c_enable_debug_monitors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mde_ref_count = common dso_local global i32 0, align 4
@DBG_MDSCR_MDE = common dso_local global i32 0, align 4
@DBG_ACTIVE_EL1 = common dso_local global i32 0, align 4
@kde_ref_count = common dso_local global i32 0, align 4
@DBG_MDSCR_KDE = common dso_local global i32 0, align 4
@debug_enabled = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enable_debug_monitors(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %5 = call i32 (...) @preemptible()
  %6 = call i32 @WARN_ON(i32 %5)
  %7 = load i32, i32* @mde_ref_count, align 4
  %8 = call i32 @this_cpu_inc_return(i32 %7)
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @DBG_MDSCR_MDE, align 4
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @DBG_ACTIVE_EL1, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load i32, i32* @kde_ref_count, align 4
  %18 = call i32 @this_cpu_inc_return(i32 %17)
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* @DBG_MDSCR_KDE, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %20, %16, %12
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i64, i64* @debug_enabled, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = call i32 (...) @mdscr_read()
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @mdscr_write(i32 %35)
  br label %37

37:                                               ; preds = %30, %27, %24
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @preemptible(...) #1

declare dso_local i32 @this_cpu_inc_return(i32) #1

declare dso_local i32 @mdscr_read(...) #1

declare dso_local i32 @mdscr_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
