; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lantiq/extr_early_printk.c_prom_putchar.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lantiq/extr_early_printk.c_prom_putchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LTQ_ASC_FSTAT = common dso_local global i32 0, align 4
@TXMASK = common dso_local global i32 0, align 4
@TXOFFSET = common dso_local global i32 0, align 4
@LTQ_ASC_TBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prom_putchar(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i64, align 8
  store i8 %0, i8* %2, align 1
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @local_irq_save(i64 %4)
  br label %6

6:                                                ; preds = %7, %1
  br label %7

7:                                                ; preds = %6
  %8 = load i32, i32* @LTQ_ASC_FSTAT, align 4
  %9 = call i32 @ltq_r32(i32 %8)
  %10 = load i32, i32* @TXMASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @TXOFFSET, align 4
  %13 = ashr i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %6, label %15

15:                                               ; preds = %7
  %16 = load i8, i8* %2, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 10
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @LTQ_ASC_TBUF, align 4
  %21 = call i32 @ltq_w8(i8 signext 13, i32 %20)
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i8, i8* %2, align 1
  %24 = load i32, i32* @LTQ_ASC_TBUF, align 4
  %25 = call i32 @ltq_w8(i8 signext %23, i32 %24)
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @local_irq_restore(i64 %26)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @ltq_r32(i32) #1

declare dso_local i32 @ltq_w8(i8 signext, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
