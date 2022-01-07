; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm_common.c_omap_prcm_irq_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm_common.c_omap_prcm_irq_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32**, i32** }

@prcm_irq_setup = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [51 x i8] c"PRCM: IRQ handler not initialized; cannot cleanup\0A\00", align 1
@prcm_irq_chips = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_prcm_irq_cleanup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prcm_irq_setup, align 8
  %4 = icmp ne %struct.TYPE_2__* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %76

7:                                                ; preds = %0
  %8 = load i32**, i32*** @prcm_irq_chips, align 8
  %9 = icmp ne i32** %8, null
  br i1 %9, label %10, label %42

10:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %36, %10
  %12 = load i32, i32* %2, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prcm_irq_setup, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %11
  %18 = load i32**, i32*** @prcm_irq_chips, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load i32**, i32*** @prcm_irq_chips, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @irq_remove_generic_chip(i32* %29, i32 -1, i32 0, i32 0)
  br label %31

31:                                               ; preds = %24, %17
  %32 = load i32**, i32*** @prcm_irq_chips, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %2, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %2, align 4
  br label %11

39:                                               ; preds = %11
  %40 = load i32**, i32*** @prcm_irq_chips, align 8
  %41 = call i32 @kfree(i32** %40)
  store i32** null, i32*** @prcm_irq_chips, align 8
  br label %42

42:                                               ; preds = %39, %7
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prcm_irq_setup, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  %45 = load i32**, i32*** %44, align 8
  %46 = call i32 @kfree(i32** %45)
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prcm_irq_setup, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 4
  store i32** null, i32*** %48, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prcm_irq_setup, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i32**, i32*** %50, align 8
  %52 = call i32 @kfree(i32** %51)
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prcm_irq_setup, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  store i32** null, i32*** %54, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prcm_irq_setup, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %1, align 4
  %58 = load i32, i32* %1, align 4
  %59 = call i32 @irq_set_chained_handler(i32 %58, i32* null)
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prcm_irq_setup, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %42
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prcm_irq_setup, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prcm_irq_setup, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 %70, 32
  %72 = call i32 @irq_free_descs(i64 %67, i32 %71)
  br label %73

73:                                               ; preds = %64, %42
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prcm_irq_setup, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %73, %5
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @irq_remove_generic_chip(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32**) #1

declare dso_local i32 @irq_set_chained_handler(i32, i32*) #1

declare dso_local i32 @irq_free_descs(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
