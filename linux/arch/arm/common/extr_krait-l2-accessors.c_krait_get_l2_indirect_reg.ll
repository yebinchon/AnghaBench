; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/common/extr_krait-l2-accessors.c_krait_get_l2_indirect_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/common/extr_krait-l2-accessors.c_krait_get_l2_indirect_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@krait_l2_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @krait_get_l2_indirect_reg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @raw_spin_lock_irqsave(i32* @krait_l2_lock, i64 %5)
  %7 = load i32, i32* %2, align 4
  call void asm sideeffect "mcr p15, 3, $0, c15, c0, 6 @ l2cpselr", "r,~{dirflag},~{fpsr},~{flags}"(i32 %7) #2, !srcloc !2
  %8 = call i32 (...) @isb()
  %9 = call i32 asm sideeffect "mrc p15, 3, $0, c15, c0, 7 @ l2cpdr", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  store i32 %9, i32* %3, align 4
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @raw_spin_unlock_irqrestore(i32* @krait_l2_lock, i64 %10)
  %12 = load i32, i32* %3, align 4
  ret i32 %12
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @isb(...) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 443}
!3 = !{i32 523}
