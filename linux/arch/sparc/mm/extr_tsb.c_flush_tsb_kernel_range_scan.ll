; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_tsb.c_flush_tsb_kernel_range_scan.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_tsb.c_flush_tsb_kernel_range_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsb = type { i32 }

@KERNEL_TSB_NENTRIES = common dso_local global i64 0, align 8
@swapper_tsb = common dso_local global %struct.tsb* null, align 8
@TSB_TAG_INVALID_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @flush_tsb_kernel_range_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_tsb_kernel_range_scan(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tsb*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %8

8:                                                ; preds = %39, %2
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @KERNEL_TSB_NENTRIES, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %8
  %13 = load %struct.tsb*, %struct.tsb** @swapper_tsb, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.tsb, %struct.tsb* %13, i64 %14
  store %struct.tsb* %15, %struct.tsb** %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = shl i64 %16, 13
  store i64 %17, i64* %7, align 8
  %18 = load %struct.tsb*, %struct.tsb** %6, align 8
  %19 = getelementptr inbounds %struct.tsb, %struct.tsb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 22
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %7, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %3, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %12
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %4, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i64, i64* @TSB_TAG_INVALID_BIT, align 8
  %34 = shl i64 1, %33
  %35 = trunc i64 %34 to i32
  %36 = load %struct.tsb*, %struct.tsb** %6, align 8
  %37 = getelementptr inbounds %struct.tsb, %struct.tsb* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %32, %28, %12
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %5, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %5, align 8
  br label %8

42:                                               ; preds = %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
