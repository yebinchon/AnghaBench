; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_ieee754sp.c_ieee754sp_class.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_ieee754sp.c_ieee754sp_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ieee754sp = type { i32 }

@COMPXSP = common dso_local global i32 0, align 4
@EXPLODEXSP = common dso_local global i32 0, align 4
@xc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee754sp_class(i32 %0) #0 {
  %2 = alloca %union.ieee754sp, align 4
  %3 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %2, i32 0, i32 0
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @COMPXSP, align 4
  %5 = load i32, i32* @EXPLODEXSP, align 4
  %6 = load i32, i32* @xc, align 4
  ret i32 %6
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
