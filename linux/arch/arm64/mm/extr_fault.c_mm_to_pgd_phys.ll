; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/mm/extr_fault.c_mm_to_pgd_phys.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/mm/extr_fault.c_mm_to_pgd_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@init_mm = common dso_local global %struct.mm_struct zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mm_struct*)* @mm_to_pgd_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mm_to_pgd_phys(%struct.mm_struct* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mm_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  %4 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %5 = icmp eq %struct.mm_struct* %4, @init_mm
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %8 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @__pa_symbol(i32 %9)
  store i64 %10, i64* %2, align 8
  br label %16

11:                                               ; preds = %1
  %12 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %13 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @virt_to_phys(i32 %14)
  store i64 %15, i64* %2, align 8
  br label %16

16:                                               ; preds = %11, %6
  %17 = load i64, i64* %2, align 8
  ret i64 %17
}

declare dso_local i64 @__pa_symbol(i32) #1

declare dso_local i64 @virt_to_phys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
