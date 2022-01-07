; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/mm/extr_extable.c_fixup_exception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/mm/extr_extable.c_fixup_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.exception_table_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fixup_exception(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.exception_table_entry*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %5 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %6 = call i32 @instruction_pointer(%struct.pt_regs* %5)
  %7 = call %struct.exception_table_entry* @search_exception_tables(i32 %6)
  store %struct.exception_table_entry* %7, %struct.exception_table_entry** %4, align 8
  %8 = load %struct.exception_table_entry*, %struct.exception_table_entry** %4, align 8
  %9 = icmp ne %struct.exception_table_entry* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.exception_table_entry*, %struct.exception_table_entry** %4, align 8
  %12 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %15 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  store i32 1, i32* %2, align 4
  br label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %16, %10
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local %struct.exception_table_entry* @search_exception_tables(i32) #1

declare dso_local i32 @instruction_pointer(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
