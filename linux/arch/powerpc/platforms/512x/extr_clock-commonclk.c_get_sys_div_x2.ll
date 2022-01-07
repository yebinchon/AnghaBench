; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/512x/extr_clock-commonclk.c_get_sys_div_x2.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/512x/extr_clock-commonclk.c_get_sys_div_x2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@get_sys_div_x2.sysdiv_code_to_x2 = internal global [35 x i32] [i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 14, i32 12, i32 16, i32 18, i32 22, i32 20, i32 24, i32 26, i32 30, i32 28, i32 32, i32 34, i32 38, i32 36, i32 40, i32 42, i32 46, i32 44, i32 48, i32 50, i32 54, i32 52, i32 56, i32 58, i32 62, i32 60, i32 64, i32 66], align 16
@clkregs = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_sys_div_x2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sys_div_x2() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clkregs, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = call i32 @get_bit_field(i32* %3, i32 26, i32 6)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [35 x i32], [35 x i32]* @get_sys_div_x2.sysdiv_code_to_x2, i64 0, i64 %6
  %8 = load i32, i32* %7, align 4
  ret i32 %8
}

declare dso_local i32 @get_bit_field(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
