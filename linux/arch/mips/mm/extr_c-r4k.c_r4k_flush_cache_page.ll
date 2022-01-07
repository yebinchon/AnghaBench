; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_r4k_flush_cache_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_c-r4k.c_r4k_flush_cache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.flush_cache_page_args = type { i64, i64, %struct.vm_area_struct* }

@R4K_HIT = common dso_local global i32 0, align 4
@local_r4k_flush_cache_page = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*, i64, i64)* @r4k_flush_cache_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r4k_flush_cache_page(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.flush_cache_page_args, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %9 = getelementptr inbounds %struct.flush_cache_page_args, %struct.flush_cache_page_args* %7, i32 0, i32 2
  store %struct.vm_area_struct* %8, %struct.vm_area_struct** %9, align 8
  %10 = load i64, i64* %5, align 8
  %11 = getelementptr inbounds %struct.flush_cache_page_args, %struct.flush_cache_page_args* %7, i32 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = load i64, i64* %6, align 8
  %13 = getelementptr inbounds %struct.flush_cache_page_args, %struct.flush_cache_page_args* %7, i32 0, i32 1
  store i64 %12, i64* %13, align 8
  %14 = load i32, i32* @R4K_HIT, align 4
  %15 = load i32, i32* @local_r4k_flush_cache_page, align 4
  %16 = call i32 @r4k_on_each_cpu(i32 %14, i32 %15, %struct.flush_cache_page_args* %7)
  ret void
}

declare dso_local i32 @r4k_on_each_cpu(i32, i32, %struct.flush_cache_page_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
