; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sni/extr_pcit.c_pcit_hwint1.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sni/extr_pcit.c_pcit_hwint1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SNI_PCIT_INT_REG = common dso_local global i64 0, align 8
@IE_IRQ1 = common dso_local global i32 0, align 4
@SNI_PCIT_INT_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pcit_hwint1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcit_hwint1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @SNI_PCIT_INT_REG, align 8
  %4 = inttoptr i64 %3 to i32*
  %5 = load volatile i32, i32* %4, align 4
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* @IE_IRQ1, align 4
  %7 = call i32 @clear_c0_status(i32 %6)
  %8 = load i32, i32* %1, align 4
  %9 = ashr i32 %8, 16
  %10 = and i32 %9, 127
  %11 = call i32 @ffs(i32 %10)
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp sgt i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %0
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* @SNI_PCIT_INT_START, align 8
  %21 = add nsw i64 %19, %20
  %22 = sub nsw i64 %21, 1
  %23 = call i32 @do_IRQ(i64 %22)
  br label %24

24:                                               ; preds = %17, %0
  %25 = load i32, i32* @IE_IRQ1, align 4
  %26 = call i32 @set_c0_status(i32 %25)
  ret void
}

declare dso_local i32 @clear_c0_status(i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @do_IRQ(i64) #1

declare dso_local i32 @set_c0_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
