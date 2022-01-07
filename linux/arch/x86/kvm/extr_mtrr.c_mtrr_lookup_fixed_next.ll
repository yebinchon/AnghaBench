; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mtrr.c_mtrr_lookup_fixed_next.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mtrr.c_mtrr_lookup_fixed_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtrr_iter = type { i64, i64, i32, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtrr_iter*)* @mtrr_lookup_fixed_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtrr_lookup_fixed_next(%struct.mtrr_iter* %0) #0 {
  %2 = alloca %struct.mtrr_iter*, align 8
  store %struct.mtrr_iter* %0, %struct.mtrr_iter** %2, align 8
  %3 = load %struct.mtrr_iter*, %struct.mtrr_iter** %2, align 8
  %4 = getelementptr inbounds %struct.mtrr_iter, %struct.mtrr_iter* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.mtrr_iter*, %struct.mtrr_iter** %2, align 8
  %7 = getelementptr inbounds %struct.mtrr_iter, %struct.mtrr_iter* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i64 @fixed_mtrr_range_end_addr(i32 %5, i64 %8)
  %10 = load %struct.mtrr_iter*, %struct.mtrr_iter** %2, align 8
  %11 = getelementptr inbounds %struct.mtrr_iter, %struct.mtrr_iter* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %9, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.mtrr_iter*, %struct.mtrr_iter** %2, align 8
  %16 = getelementptr inbounds %struct.mtrr_iter, %struct.mtrr_iter* %15, i32 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = load %struct.mtrr_iter*, %struct.mtrr_iter** %2, align 8
  %18 = getelementptr inbounds %struct.mtrr_iter, %struct.mtrr_iter* %17, i32 0, i32 5
  store i32* null, i32** %18, align 8
  br label %50

19:                                               ; preds = %1
  %20 = load %struct.mtrr_iter*, %struct.mtrr_iter** %2, align 8
  %21 = getelementptr inbounds %struct.mtrr_iter, %struct.mtrr_iter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.mtrr_iter*, %struct.mtrr_iter** %2, align 8
  %25 = getelementptr inbounds %struct.mtrr_iter, %struct.mtrr_iter* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.mtrr_iter*, %struct.mtrr_iter** %2, align 8
  %28 = getelementptr inbounds %struct.mtrr_iter, %struct.mtrr_iter* %27, i32 0, i32 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ARRAY_SIZE(i32 %31)
  %33 = icmp sge i64 %26, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %19
  %35 = load %struct.mtrr_iter*, %struct.mtrr_iter** %2, align 8
  call void @mtrr_lookup_var_start(%struct.mtrr_iter* %35)
  br label %50

36:                                               ; preds = %19
  %37 = load %struct.mtrr_iter*, %struct.mtrr_iter** %2, align 8
  %38 = getelementptr inbounds %struct.mtrr_iter, %struct.mtrr_iter* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.mtrr_iter*, %struct.mtrr_iter** %2, align 8
  %41 = getelementptr inbounds %struct.mtrr_iter, %struct.mtrr_iter* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @fixed_mtrr_seg_end_range_index(i32 %42)
  %44 = icmp sgt i64 %39, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load %struct.mtrr_iter*, %struct.mtrr_iter** %2, align 8
  %47 = getelementptr inbounds %struct.mtrr_iter, %struct.mtrr_iter* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %14, %34, %45, %36
  ret void
}

declare dso_local i64 @fixed_mtrr_range_end_addr(i32, i64) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local void @mtrr_lookup_var_start(%struct.mtrr_iter*) #1

declare dso_local i64 @fixed_mtrr_seg_end_range_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
