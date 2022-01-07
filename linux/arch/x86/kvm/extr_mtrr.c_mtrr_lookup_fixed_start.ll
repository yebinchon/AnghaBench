; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mtrr.c_mtrr_lookup_fixed_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mtrr.c_mtrr_lookup_fixed_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtrr_iter = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtrr_iter*)* @mtrr_lookup_fixed_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtrr_lookup_fixed_start(%struct.mtrr_iter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtrr_iter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtrr_iter* %0, %struct.mtrr_iter** %3, align 8
  %6 = load %struct.mtrr_iter*, %struct.mtrr_iter** %3, align 8
  %7 = getelementptr inbounds %struct.mtrr_iter, %struct.mtrr_iter* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @fixed_mtrr_is_enabled(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

12:                                               ; preds = %1
  %13 = load %struct.mtrr_iter*, %struct.mtrr_iter** %3, align 8
  %14 = getelementptr inbounds %struct.mtrr_iter, %struct.mtrr_iter* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @fixed_mtrr_addr_to_seg(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %34

20:                                               ; preds = %12
  %21 = load %struct.mtrr_iter*, %struct.mtrr_iter** %3, align 8
  %22 = getelementptr inbounds %struct.mtrr_iter, %struct.mtrr_iter* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.mtrr_iter*, %struct.mtrr_iter** %3, align 8
  %24 = getelementptr inbounds %struct.mtrr_iter, %struct.mtrr_iter* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @fixed_mtrr_addr_seg_to_range_index(i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.mtrr_iter*, %struct.mtrr_iter** %3, align 8
  %30 = getelementptr inbounds %struct.mtrr_iter, %struct.mtrr_iter* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.mtrr_iter*, %struct.mtrr_iter** %3, align 8
  %33 = getelementptr inbounds %struct.mtrr_iter, %struct.mtrr_iter* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %20, %19, %11
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @fixed_mtrr_is_enabled(i32) #1

declare dso_local i32 @fixed_mtrr_addr_to_seg(i32) #1

declare dso_local i32 @fixed_mtrr_addr_seg_to_range_index(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
