; ModuleID = '/home/carl/AnghaBench/linux/block/partitions/extr_cmdline.c_has_overlaps.c'
source_filename = "/home/carl/AnghaBench/linux/block/partitions/extr_cmdline.c_has_overlaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64)* @has_overlaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_overlaps(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = add nsw i64 %12, %13
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = add nsw i64 %15, %16
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %54

26:                                               ; preds = %21, %4
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = icmp sle i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %54

35:                                               ; preds = %30, %26
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 1, i32* %5, align 4
  br label %54

44:                                               ; preds = %39, %35
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp sle i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 1, i32* %5, align 4
  br label %54

53:                                               ; preds = %48, %44
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %52, %43, %34, %25
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
