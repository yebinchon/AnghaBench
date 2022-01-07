; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/um/extr_fault.c_arch_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/um/extr_fault.c_arch_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uml_pt_regs = type { i32 }
%struct.exception_table_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_fixup(i64 %0, %struct.uml_pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.uml_pt_regs*, align 8
  %6 = alloca %struct.exception_table_entry*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.uml_pt_regs* %1, %struct.uml_pt_regs** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call %struct.exception_table_entry* @search_exception_tables(i64 %8)
  store %struct.exception_table_entry* %9, %struct.exception_table_entry** %6, align 8
  %10 = load %struct.exception_table_entry*, %struct.exception_table_entry** %6, align 8
  %11 = icmp ne %struct.exception_table_entry* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.exception_table_entry*, %struct.exception_table_entry** %6, align 8
  %14 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  store i32 1, i32* %3, align 4
  br label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %16, %12
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local %struct.exception_table_entry* @search_exception_tables(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
