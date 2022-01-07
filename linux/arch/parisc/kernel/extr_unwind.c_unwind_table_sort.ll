; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_unwind.c_unwind_table_sort.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_unwind.c_unwind_table_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_table_entry = type { i32 }

@cmp_unwind_table_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unwind_table_entry*, %struct.unwind_table_entry*)* @unwind_table_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unwind_table_sort(%struct.unwind_table_entry* %0, %struct.unwind_table_entry* %1) #0 {
  %3 = alloca %struct.unwind_table_entry*, align 8
  %4 = alloca %struct.unwind_table_entry*, align 8
  store %struct.unwind_table_entry* %0, %struct.unwind_table_entry** %3, align 8
  store %struct.unwind_table_entry* %1, %struct.unwind_table_entry** %4, align 8
  %5 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %3, align 8
  %6 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %4, align 8
  %7 = load %struct.unwind_table_entry*, %struct.unwind_table_entry** %3, align 8
  %8 = ptrtoint %struct.unwind_table_entry* %6 to i64
  %9 = ptrtoint %struct.unwind_table_entry* %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 4
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @cmp_unwind_table_entry, align 4
  %14 = call i32 @sort(%struct.unwind_table_entry* %5, i32 %12, i32 4, i32 %13, i32* null)
  ret void
}

declare dso_local i32 @sort(%struct.unwind_table_entry*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
