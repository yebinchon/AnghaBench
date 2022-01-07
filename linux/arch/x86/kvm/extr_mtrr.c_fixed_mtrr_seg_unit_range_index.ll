; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mtrr.c_fixed_mtrr_seg_unit_range_index.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mtrr.c_fixed_mtrr_seg_unit_range_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixed_mtrr_segment = type { i64, i64, i32 }

@fixed_seg_table = common dso_local global %struct.fixed_mtrr_segment* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @fixed_mtrr_seg_unit_range_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fixed_mtrr_seg_unit_range_index(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fixed_mtrr_segment*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fixed_mtrr_segment*, %struct.fixed_mtrr_segment** @fixed_seg_table, align 8
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.fixed_mtrr_segment, %struct.fixed_mtrr_segment* %6, i64 %8
  store %struct.fixed_mtrr_segment* %9, %struct.fixed_mtrr_segment** %5, align 8
  %10 = load %struct.fixed_mtrr_segment*, %struct.fixed_mtrr_segment** %5, align 8
  %11 = getelementptr inbounds %struct.fixed_mtrr_segment, %struct.fixed_mtrr_segment* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @fixed_mtrr_seg_unit_size(i32 %14)
  %16 = mul nsw i32 %13, %15
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %12, %17
  %19 = load %struct.fixed_mtrr_segment*, %struct.fixed_mtrr_segment** %5, align 8
  %20 = getelementptr inbounds %struct.fixed_mtrr_segment, %struct.fixed_mtrr_segment* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.fixed_mtrr_segment*, %struct.fixed_mtrr_segment** %5, align 8
  %26 = getelementptr inbounds %struct.fixed_mtrr_segment, %struct.fixed_mtrr_segment* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = mul nsw i32 8, %28
  %30 = add nsw i32 %27, %29
  ret i32 %30
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @fixed_mtrr_seg_unit_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
