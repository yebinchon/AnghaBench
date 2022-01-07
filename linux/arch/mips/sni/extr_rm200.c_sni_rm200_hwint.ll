; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sni/extr_rm200.c_sni_rm200_hwint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sni/extr_rm200.c_sni_rm200_hwint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@C_IRQ5 = common dso_local global i32 0, align 4
@MIPS_CPU_IRQ_BASE = common dso_local global i64 0, align 8
@C_IRQ0 = common dso_local global i32 0, align 4
@IE_IRQ0 = common dso_local global i32 0, align 4
@SNI_RM200_INT_ENA_REG = common dso_local global i64 0, align 8
@SNI_RM200_INT_STAT_REG = common dso_local global i64 0, align 8
@SNI_RM200_INT_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sni_rm200_hwint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sni_rm200_hwint() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @read_c0_cause()
  %6 = call i32 (...) @read_c0_status()
  %7 = and i32 %5, %6
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @C_IRQ5, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %0
  %13 = load i64, i64* @MIPS_CPU_IRQ_BASE, align 8
  %14 = add nsw i64 %13, 7
  %15 = call i32 @do_IRQ(i64 %14)
  br label %53

16:                                               ; preds = %0
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @C_IRQ0, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %16
  %22 = load i32, i32* @IE_IRQ0, align 4
  %23 = call i32 @clear_c0_status(i32 %22)
  %24 = load i64, i64* @SNI_RM200_INT_ENA_REG, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = load volatile i32, i32* %25, align 4
  %27 = xor i32 %26, 31
  store i32 %27, i32* %2, align 4
  %28 = load i64, i64* @SNI_RM200_INT_STAT_REG, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = load volatile i32, i32* %29, align 4
  %31 = xor i32 %30, 20
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %2, align 4
  %34 = and i32 %32, %33
  %35 = and i32 %34, 31
  %36 = call i32 @ffs(i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp sgt i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i64 @likely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %21
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* @SNI_RM200_INT_START, align 8
  %46 = add nsw i64 %44, %45
  %47 = sub nsw i64 %46, 1
  %48 = call i32 @do_IRQ(i64 %47)
  br label %49

49:                                               ; preds = %42, %21
  %50 = load i32, i32* @IE_IRQ0, align 4
  %51 = call i32 @set_c0_status(i32 %50)
  br label %52

52:                                               ; preds = %49, %16
  br label %53

53:                                               ; preds = %52, %12
  ret void
}

declare dso_local i32 @read_c0_cause(...) #1

declare dso_local i32 @read_c0_status(...) #1

declare dso_local i32 @do_IRQ(i64) #1

declare dso_local i32 @clear_c0_status(i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @set_c0_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
