; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sys_sparc_64.c_mmap_rnd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sys_sparc_64.c_mmap_rnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@PF_RANDOMIZE = common dso_local global i32 0, align 4
@TIF_32BIT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @mmap_rnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmap_rnd() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @PF_RANDOMIZE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %0
  %10 = call i64 (...) @get_random_long()
  store i64 %10, i64* %2, align 8
  %11 = load i32, i32* @TIF_32BIT, align 4
  %12 = call i64 @test_thread_flag(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @PAGE_SHIFT, align 8
  %17 = sub i64 23, %16
  %18 = shl i64 1, %17
  %19 = urem i64 %15, %18
  store i64 %19, i64* %1, align 8
  br label %26

20:                                               ; preds = %9
  %21 = load i64, i64* %2, align 8
  %22 = load i64, i64* @PAGE_SHIFT, align 8
  %23 = sub i64 30, %22
  %24 = shl i64 1, %23
  %25 = urem i64 %21, %24
  store i64 %25, i64* %1, align 8
  br label %26

26:                                               ; preds = %20, %14
  br label %27

27:                                               ; preds = %26, %0
  %28 = load i64, i64* %1, align 8
  %29 = load i64, i64* @PAGE_SHIFT, align 8
  %30 = shl i64 %28, %29
  ret i64 %30
}

declare dso_local i64 @get_random_long(...) #1

declare dso_local i64 @test_thread_flag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
