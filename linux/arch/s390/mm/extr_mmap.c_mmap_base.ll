; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_mmap.c_mmap_base.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_mmap.c_mmap_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i64 }

@stack_guard_gap = common dso_local global i64 0, align 8
@STACK_TOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.rlimit*)* @mmap_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmap_base(i64 %0, %struct.rlimit* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.rlimit*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.rlimit* %1, %struct.rlimit** %4, align 8
  %9 = load %struct.rlimit*, %struct.rlimit** %4, align 8
  %10 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = call i64 (...) @stack_maxrandom_size()
  %13 = load i64, i64* @stack_guard_gap, align 8
  %14 = add i64 %12, %13
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = add i64 %15, %16
  %18 = load i64, i64* %5, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* %5, align 8
  br label %24

24:                                               ; preds = %20, %2
  store i64 33554432, i64* %7, align 8
  %25 = load i32, i32* @STACK_TOP, align 4
  %26 = sdiv i32 %25, 6
  %27 = mul nsw i32 %26, 5
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i64, i64* %7, align 8
  store i64 %33, i64* %5, align 8
  br label %41

34:                                               ; preds = %24
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* %8, align 8
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %38, %34
  br label %41

41:                                               ; preds = %40, %32
  %42 = load i32, i32* @STACK_TOP, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %5, align 8
  %45 = sub i64 %43, %44
  %46 = load i64, i64* %3, align 8
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = call i64 @PAGE_ALIGN(i32 %48)
  ret i64 %49
}

declare dso_local i64 @stack_maxrandom_size(...) #1

declare dso_local i64 @PAGE_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
