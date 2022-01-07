; ModuleID = '/home/carl/AnghaBench/ish/tests/manual/extr_qemu-test.h_exec_inc.c'
source_filename = "/home/carl/AnghaBench/ish/tests/manual/extr_qemu-test.h_exec_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CC_C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exec_op(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i64 @i2l(i64 %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @i2l(i64 %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @exec_opq(i64 %9, i64 %10, i32 0)
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @exec_opl(i64 %12, i64 %13, i32 0)
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @exec_opw(i64 %15, i64 %16, i32 0)
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @exec_opb(i64 %18, i64 %19, i32 0)
  ret void
}

declare dso_local i64 @i2l(i64) #1

declare dso_local i32 @exec_opq(i64, i64, i32) #1

declare dso_local i32 @exec_opl(i64, i64, i32) #1

declare dso_local i32 @exec_opw(i64, i64, i32) #1

declare dso_local i32 @exec_opb(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
