; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/mm/extr_tlb.c_flush_tlb_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/mm/extr_tlb.c_flush_tlb_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_tlb_range(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = sub i64 %7, %8
  %10 = icmp uge i64 %9, 1099511627776
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @REGION_NUMBER(i64 %12)
  %14 = load i64, i64* %6, align 8
  %15 = sub i64 %14, 1
  %16 = call i64 @REGION_NUMBER(i64 %15)
  %17 = icmp ne i64 %13, %16
  br label %18

18:                                               ; preds = %11, %3
  %19 = phi i1 [ true, %3 ], [ %17, %11 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 (...) @flush_tlb_all()
  br label %36

25:                                               ; preds = %18
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @__flush_tlb_range(%struct.vm_area_struct* %26, i64 %27, i64 %28)
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @ia64_thash(i64 %31)
  %33 = load i64, i64* %6, align 8
  %34 = call i64 @ia64_thash(i64 %33)
  %35 = call i32 @__flush_tlb_range(%struct.vm_area_struct* %30, i64 %32, i64 %34)
  br label %36

36:                                               ; preds = %25, %23
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @REGION_NUMBER(i64) #1

declare dso_local i32 @flush_tlb_all(...) #1

declare dso_local i32 @__flush_tlb_range(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i64 @ia64_thash(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
