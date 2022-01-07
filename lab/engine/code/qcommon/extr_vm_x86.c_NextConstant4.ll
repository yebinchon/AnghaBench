; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_x86.c_NextConstant4.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_vm_x86.c_NextConstant4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@code = common dso_local global i64* null, align 8
@pc = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @NextConstant4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NextConstant4() #0 {
  %1 = load i64*, i64** @code, align 8
  %2 = load i64, i64* @pc, align 8
  %3 = getelementptr inbounds i64, i64* %1, i64 %2
  %4 = load i64, i64* %3, align 8
  %5 = trunc i64 %4 to i32
  %6 = load i64*, i64** @code, align 8
  %7 = load i64, i64* @pc, align 8
  %8 = add i64 %7, 1
  %9 = getelementptr inbounds i64, i64* %6, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = shl i32 %11, 8
  %13 = or i32 %5, %12
  %14 = load i64*, i64** @code, align 8
  %15 = load i64, i64* @pc, align 8
  %16 = add i64 %15, 2
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = shl i32 %19, 16
  %21 = or i32 %13, %20
  %22 = load i64*, i64** @code, align 8
  %23 = load i64, i64* @pc, align 8
  %24 = add i64 %23, 3
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = shl i32 %27, 24
  %29 = or i32 %21, %28
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
