; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sni/extr_pcit.c_sni_pcit_hwint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sni/extr_pcit.c_sni_pcit_hwint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C_IRQ1 = common dso_local global i32 0, align 4
@C_IRQ2 = common dso_local global i32 0, align 4
@MIPS_CPU_IRQ_BASE = common dso_local global i64 0, align 8
@C_IRQ3 = common dso_local global i32 0, align 4
@C_IRQ5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sni_pcit_hwint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sni_pcit_hwint() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @read_c0_cause()
  %3 = call i32 (...) @read_c0_status()
  %4 = and i32 %2, %3
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @C_IRQ1, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 (...) @pcit_hwint1()
  br label %41

11:                                               ; preds = %0
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @C_IRQ2, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i64, i64* @MIPS_CPU_IRQ_BASE, align 8
  %18 = add nsw i64 %17, 4
  %19 = call i32 @do_IRQ(i64 %18)
  br label %40

20:                                               ; preds = %11
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @C_IRQ3, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i64, i64* @MIPS_CPU_IRQ_BASE, align 8
  %27 = add nsw i64 %26, 5
  %28 = call i32 @do_IRQ(i64 %27)
  br label %39

29:                                               ; preds = %20
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @C_IRQ5, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i64, i64* @MIPS_CPU_IRQ_BASE, align 8
  %36 = add nsw i64 %35, 7
  %37 = call i32 @do_IRQ(i64 %36)
  br label %38

38:                                               ; preds = %34, %29
  br label %39

39:                                               ; preds = %38, %25
  br label %40

40:                                               ; preds = %39, %16
  br label %41

41:                                               ; preds = %40, %9
  ret void
}

declare dso_local i32 @read_c0_cause(...) #1

declare dso_local i32 @read_c0_status(...) #1

declare dso_local i32 @pcit_hwint1(...) #1

declare dso_local i32 @do_IRQ(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
