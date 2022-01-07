; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/math-emu/extr_fpu_system.h_seg_get_base.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/math-emu/extr_fpu_system.h_seg_get_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.desc_struct = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.desc_struct*)* @seg_get_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @seg_get_base(%struct.desc_struct* %0) #0 {
  %2 = alloca %struct.desc_struct*, align 8
  %3 = alloca i64, align 8
  store %struct.desc_struct* %0, %struct.desc_struct** %2, align 8
  %4 = load %struct.desc_struct*, %struct.desc_struct** %2, align 8
  %5 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = shl i64 %6, 24
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load %struct.desc_struct*, %struct.desc_struct** %2, align 8
  %10 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = shl i64 %11, 16
  %13 = or i64 %8, %12
  %14 = load %struct.desc_struct*, %struct.desc_struct** %2, align 8
  %15 = getelementptr inbounds %struct.desc_struct, %struct.desc_struct* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = or i64 %13, %16
  ret i64 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
