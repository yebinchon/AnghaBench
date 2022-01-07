; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_vdso.c_vdso_base.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_vdso.c_vdso_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@STACK_TOP = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8
@PF_RANDOMIZE = common dso_local global i32 0, align 4
@VDSO_RANDOMIZE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @vdso_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vdso_base() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @STACK_TOP, align 8
  %3 = load i64, i64* @PAGE_SIZE, align 8
  %4 = add i64 %2, %3
  store i64 %4, i64* %1, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PF_RANDOMIZE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %0
  %12 = call i32 (...) @get_random_int()
  %13 = load i32, i32* @VDSO_RANDOMIZE_SIZE, align 4
  %14 = sub nsw i32 %13, 1
  %15 = and i32 %12, %14
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %1, align 8
  %18 = add i64 %17, %16
  store i64 %18, i64* %1, align 8
  %19 = load i64, i64* %1, align 8
  %20 = call i64 @PAGE_ALIGN(i64 %19)
  store i64 %20, i64* %1, align 8
  br label %21

21:                                               ; preds = %11, %0
  %22 = load i64, i64* %1, align 8
  ret i64 %22
}

declare dso_local i32 @get_random_int(...) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
