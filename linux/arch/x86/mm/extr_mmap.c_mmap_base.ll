; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_mmap.c_mmap_base.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_mmap.c_mmap_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i64 }

@stack_guard_gap = common dso_local global i64 0, align 8
@SIZE_128M = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, %struct.rlimit*)* @mmap_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmap_base(i64 %0, i64 %1, %struct.rlimit* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rlimit*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.rlimit* %2, %struct.rlimit** %6, align 8
  %11 = load %struct.rlimit*, %struct.rlimit** %6, align 8
  %12 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @stack_maxrandom_size(i64 %14)
  %16 = load i64, i64* @stack_guard_gap, align 8
  %17 = add i64 %15, %16
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = add i64 %18, %19
  %21 = load i64, i64* %7, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %23, %3
  %28 = load i64, i64* @SIZE_128M, align 8
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %5, align 8
  %30 = udiv i64 %29, 6
  %31 = mul i64 %30, 5
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i64, i64* %9, align 8
  store i64 %36, i64* %7, align 8
  br label %44

37:                                               ; preds = %27
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i64, i64* %10, align 8
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %41, %37
  br label %44

44:                                               ; preds = %43, %35
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %7, align 8
  %47 = sub i64 %45, %46
  %48 = load i64, i64* %4, align 8
  %49 = sub i64 %47, %48
  %50 = call i64 @PAGE_ALIGN(i64 %49)
  ret i64 %50
}

declare dso_local i64 @stack_maxrandom_size(i64) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
