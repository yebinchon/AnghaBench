; ModuleID = '/home/carl/AnghaBench/linux/arch/hexagon/kernel/extr_time.c___udelay.c'
source_filename = "/home/carl/AnghaBench/linux/arch/hexagon/kernel/extr_time.c___udelay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pcycle_freq_mhz = common dso_local global i64 0, align 8
@fudgefactor = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__udelay(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = call i64 (...) @__vmgettime()
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* @pcycle_freq_mhz, align 8
  %7 = load i64, i64* %2, align 8
  %8 = mul i64 %6, %7
  %9 = load i64, i64* @fudgefactor, align 8
  %10 = sub i64 %8, %9
  store i64 %10, i64* %4, align 8
  br label %11

11:                                               ; preds = %17, %1
  %12 = call i64 (...) @__vmgettime()
  %13 = load i64, i64* %3, align 8
  %14 = sub i64 %12, %13
  %15 = load i64, i64* %4, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = call i32 (...) @cpu_relax()
  br label %11

19:                                               ; preds = %11
  ret void
}

declare dso_local i64 @__vmgettime(...) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
