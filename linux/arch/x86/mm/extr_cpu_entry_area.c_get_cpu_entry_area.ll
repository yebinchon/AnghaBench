; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_cpu_entry_area.c_get_cpu_entry_area.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_cpu_entry_area.c_get_cpu_entry_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_entry_area = type { i32 }

@CPU_ENTRY_AREA_PER_CPU = common dso_local global i32 0, align 4
@CPU_ENTRY_AREA_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cpu_entry_area* @get_cpu_entry_area(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @CPU_ENTRY_AREA_PER_CPU, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @CPU_ENTRY_AREA_SIZE, align 4
  %7 = mul nsw i32 %5, %6
  %8 = add nsw i32 %4, %7
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %3, align 8
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = sext i32 %10 to i64
  %12 = urem i64 4, %11
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUILD_BUG_ON(i32 %14)
  %16 = load i64, i64* %3, align 8
  %17 = inttoptr i64 %16 to %struct.cpu_entry_area*
  ret %struct.cpu_entry_area* %17
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
