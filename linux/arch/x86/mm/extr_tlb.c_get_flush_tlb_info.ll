; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_tlb.c_get_flush_tlb_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_tlb.c_get_flush_tlb_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flush_tlb_info = type { i64, i64, i32, i32, i32, %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@flush_tlb_info = common dso_local global i32 0, align 4
@flush_tlb_info_idx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.flush_tlb_info* (%struct.mm_struct*, i64, i64, i32, i32, i32)* @get_flush_tlb_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.flush_tlb_info* @get_flush_tlb_info(%struct.mm_struct* %0, i64 %1, i64 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.flush_tlb_info*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = call %struct.flush_tlb_info* @this_cpu_ptr(i32* @flush_tlb_info)
  store %struct.flush_tlb_info* %14, %struct.flush_tlb_info** %13, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %13, align 8
  %17 = getelementptr inbounds %struct.flush_tlb_info, %struct.flush_tlb_info* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %13, align 8
  %20 = getelementptr inbounds %struct.flush_tlb_info, %struct.flush_tlb_info* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %22 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %13, align 8
  %23 = getelementptr inbounds %struct.flush_tlb_info, %struct.flush_tlb_info* %22, i32 0, i32 5
  store %struct.mm_struct* %21, %struct.mm_struct** %23, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %13, align 8
  %26 = getelementptr inbounds %struct.flush_tlb_info, %struct.flush_tlb_info* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %13, align 8
  %29 = getelementptr inbounds %struct.flush_tlb_info, %struct.flush_tlb_info* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %13, align 8
  %32 = getelementptr inbounds %struct.flush_tlb_info, %struct.flush_tlb_info* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %13, align 8
  ret %struct.flush_tlb_info* %33
}

declare dso_local %struct.flush_tlb_info* @this_cpu_ptr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
