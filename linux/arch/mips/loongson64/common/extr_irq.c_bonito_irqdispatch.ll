; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/loongson64/common/extr_irq.c_bonito_irqdispatch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/loongson64/common/extr_irq.c_bonito_irqdispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOONGSON_INTISR = common dso_local global i32 0, align 4
@LOONGSON_INTEN = common dso_local global i32 0, align 4
@LOONGSON_IRQ_BASE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bonito_irqdispatch() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @LOONGSON_INTISR, align 4
  store i32 %3, i32* %1, align 4
  br label %4

4:                                                ; preds = %8, %0
  %5 = load i32, i32* %1, align 4
  %6 = and i32 %5, 1024
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = call i32 @udelay(i32 1)
  %10 = load i32, i32* @LOONGSON_INTISR, align 4
  store i32 %10, i32* %1, align 4
  br label %4

11:                                               ; preds = %4
  %12 = load i32, i32* @LOONGSON_INTISR, align 4
  %13 = load i32, i32* @LOONGSON_INTEN, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @__ffs(i32 %18)
  store i32 %19, i32* %2, align 4
  %20 = load i64, i64* @LOONGSON_IRQ_BASE, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = call i32 @do_IRQ(i64 %23)
  br label %25

25:                                               ; preds = %17, %11
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @do_IRQ(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
