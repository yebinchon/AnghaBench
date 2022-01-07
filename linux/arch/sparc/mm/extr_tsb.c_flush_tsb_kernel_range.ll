; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_tsb.c_flush_tsb_kernel_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_tsb.c_flush_tsb_kernel_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsb = type { i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@KERNEL_TSB_NENTRIES = common dso_local global i32 0, align 4
@swapper_tsb = common dso_local global %struct.tsb* null, align 8
@TSB_TAG_INVALID_BIT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_tsb_kernel_range(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tsb*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = sub i64 %8, %9
  %11 = load i32, i32* @PAGE_SHIFT, align 4
  %12 = zext i32 %11 to i64
  %13 = lshr i64 %10, %12
  %14 = load i32, i32* @KERNEL_TSB_NENTRIES, align 4
  %15 = mul nsw i32 2, %14
  %16 = sext i32 %15 to i64
  %17 = icmp uge i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* %4, align 8
  call void @flush_tsb_kernel_range_scan(i64 %19, i64 %20)
  br label %51

21:                                               ; preds = %2
  %22 = load i64, i64* %3, align 8
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %47, %21
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %23
  %28 = load i64, i64* %5, align 8
  %29 = load i32, i32* @PAGE_SHIFT, align 4
  %30 = load i32, i32* @KERNEL_TSB_NENTRIES, align 4
  %31 = call i64 @tsb_hash(i64 %28, i32 %29, i32 %30)
  store i64 %31, i64* %6, align 8
  %32 = load %struct.tsb*, %struct.tsb** @swapper_tsb, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct.tsb, %struct.tsb* %32, i64 %33
  store %struct.tsb* %34, %struct.tsb** %7, align 8
  %35 = load %struct.tsb*, %struct.tsb** %7, align 8
  %36 = getelementptr inbounds %struct.tsb, %struct.tsb* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @tag_compare(i64 %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %27
  %42 = load i64, i64* @TSB_TAG_INVALID_BIT, align 8
  %43 = shl i64 1, %42
  %44 = load %struct.tsb*, %struct.tsb** %7, align 8
  %45 = getelementptr inbounds %struct.tsb, %struct.tsb* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %41, %27
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* @PAGE_SIZE, align 8
  %49 = load i64, i64* %5, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %5, align 8
  br label %23

51:                                               ; preds = %18, %23
  ret void
}

declare dso_local void @flush_tsb_kernel_range_scan(i64, i64) #1

declare dso_local i64 @tsb_hash(i64, i32, i32) #1

declare dso_local i64 @tag_compare(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
