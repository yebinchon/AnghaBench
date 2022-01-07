; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/fw/sni/extr_sniprom.c_prom_get_hwconf.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/fw/sni/extr_sniprom.c_prom_get_hwconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @prom_get_hwconf() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (...) @_prom_get_hwconf()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i8* null, i8** %1, align 8
  br label %11

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @CKSEG1ADDR(i32 %8)
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %1, align 8
  br label %11

11:                                               ; preds = %7, %6
  %12 = load i8*, i8** %1, align 8
  ret i8* %12
}

declare dso_local i32 @_prom_get_hwconf(...) #1

declare dso_local i64 @CKSEG1ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
