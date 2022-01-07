; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_debug-monitors.c_disable_debug_monitors.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_debug-monitors.c_disable_debug_monitors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mde_ref_count = common dso_local global i32 0, align 4
@DBG_MDSCR_MDE = common dso_local global i32 0, align 4
@DBG_ACTIVE_EL1 = common dso_local global i32 0, align 4
@kde_ref_count = common dso_local global i32 0, align 4
@DBG_MDSCR_KDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disable_debug_monitors(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %5 = call i32 (...) @preemptible()
  %6 = call i32 @WARN_ON(i32 %5)
  %7 = load i32, i32* @mde_ref_count, align 4
  %8 = call i64 @this_cpu_dec_return(i32 %7)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @DBG_MDSCR_MDE, align 4
  %12 = xor i32 %11, -1
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @DBG_ACTIVE_EL1, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = load i32, i32* @kde_ref_count, align 4
  %19 = call i64 @this_cpu_dec_return(i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32, i32* @DBG_MDSCR_KDE, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %21, %17, %13
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = call i32 (...) @mdscr_read()
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @mdscr_write(i32 %34)
  br label %36

36:                                               ; preds = %29, %26
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @preemptible(...) #1

declare dso_local i64 @this_cpu_dec_return(i32) #1

declare dso_local i32 @mdscr_read(...) #1

declare dso_local i32 @mdscr_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
