; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_syscalls.c_trap_DeepmindCallback.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_syscalls.c_trap_DeepmindCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CG_DEEPMIND_CALLBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trap_DeepmindCallback(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store i32 %0, i32* %14, align 4
  store i64 %1, i64* %15, align 8
  store i64 %2, i64* %16, align 8
  store i64 %3, i64* %17, align 8
  store i64 %4, i64* %18, align 8
  store i64 %5, i64* %19, align 8
  store i64 %6, i64* %20, align 8
  store i64 %7, i64* %21, align 8
  store i64 %8, i64* %22, align 8
  store i64 %9, i64* %23, align 8
  store i64 %10, i64* %24, align 8
  store i64 %11, i64* %25, align 8
  store i64 %12, i64* %26, align 8
  %27 = load i32, i32* @CG_DEEPMIND_CALLBACK, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load i64, i64* %15, align 8
  %30 = load i64, i64* %16, align 8
  %31 = load i64, i64* %17, align 8
  %32 = load i64, i64* %18, align 8
  %33 = load i64, i64* %19, align 8
  %34 = load i64, i64* %20, align 8
  %35 = load i64, i64* %21, align 8
  %36 = load i64, i64* %22, align 8
  %37 = load i64, i64* %23, align 8
  %38 = load i64, i64* %24, align 8
  %39 = load i64, i64* %25, align 8
  %40 = load i64, i64* %26, align 8
  %41 = call i32 @syscall(i32 %27, i32 %28, i64 %29, i64 %30, i64 %31, i64 %32, i64 %33, i64 %34, i64 %35, i64 %36, i64 %37, i64 %38, i64 %39, i64 %40)
  ret i32 %41
}

declare dso_local i32 @syscall(i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
