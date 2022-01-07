; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce_power.c_addr_to_pfn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce_power.c_addr_to_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.pt_regs = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@init_mm = common dso_local global %struct.mm_struct zeroinitializer, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @addr_to_pfn(%struct.pt_regs* %0, i64 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %12 = call i64 @user_mode(%struct.pt_regs* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.mm_struct*, %struct.mm_struct** %16, align 8
  store %struct.mm_struct* %17, %struct.mm_struct** %9, align 8
  br label %19

18:                                               ; preds = %2
  store %struct.mm_struct* @init_mm, %struct.mm_struct** %9, align 8
  br label %19

19:                                               ; preds = %18, %14
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @local_irq_save(i64 %20)
  %22 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %23 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %4, align 8
  %26 = call i32* @__find_linux_pte(i32 %24, i64 %25, i32* null, i32* %6)
  store i32* %26, i32** %5, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @pte_special(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29, %19
  %35 = load i64, i64* @ULONG_MAX, align 8
  store i64 %35, i64* %7, align 8
  br label %60

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @PAGE_SHIFT, align 4
  %39 = icmp ule i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @pte_pfn(i32 %42)
  store i64 %43, i64* %7, align 8
  br label %59

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  %46 = zext i32 %45 to i64
  %47 = shl i64 1, %46
  %48 = load i64, i64* @PAGE_SIZE, align 8
  %49 = sub i64 %47, %48
  store i64 %49, i64* %10, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @pte_val(i32 %51)
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* %10, align 8
  %55 = and i64 %53, %54
  %56 = or i64 %52, %55
  %57 = call i32 @__pte(i64 %56)
  %58 = call i64 @pte_pfn(i32 %57)
  store i64 %58, i64* %7, align 8
  br label %59

59:                                               ; preds = %44, %40
  br label %60

60:                                               ; preds = %59, %34
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @local_irq_restore(i64 %61)
  %63 = load i64, i64* %7, align 8
  ret i64 %63
}

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32* @__find_linux_pte(i32, i64, i32*, i32*) #1

declare dso_local i64 @pte_special(i32) #1

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local i32 @__pte(i64) #1

declare dso_local i64 @pte_val(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
