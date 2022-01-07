; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sni/extr_a20r.c_a20r_hwint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sni/extr_a20r.c_a20r_hwint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IE_IRQ0 = common dso_local global i32 0, align 4
@SNI_A20R_IRQ_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @a20r_hwint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a20r_hwint() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @IE_IRQ0, align 4
  %5 = call i32 @clear_c0_status(i32 %4)
  %6 = call i32 (...) @a20r_ack_hwint()
  store i32 %6, i32* %2, align 4
  %7 = call i32 (...) @read_c0_cause()
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* %2, align 4
  %10 = and i32 %8, %9
  %11 = ashr i32 %10, 8
  %12 = and i32 %11, 248
  %13 = call i32 @ffs(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp sgt i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %0
  %20 = load i64, i64* @SNI_A20R_IRQ_BASE, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = sub nsw i64 %23, 1
  %25 = call i32 @do_IRQ(i64 %24)
  br label %26

26:                                               ; preds = %19, %0
  %27 = load i32, i32* @IE_IRQ0, align 4
  %28 = call i32 @set_c0_status(i32 %27)
  ret void
}

declare dso_local i32 @clear_c0_status(i32) #1

declare dso_local i32 @a20r_ack_hwint(...) #1

declare dso_local i32 @read_c0_cause(...) #1

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
