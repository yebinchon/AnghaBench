; ModuleID = '/home/carl/AnghaBench/linux/arch/microblaze/mm/extr_fault.c_bad_page_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/microblaze/mm/extr_fault.c_bad_page_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.exception_table_entry = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"kernel access of bad area\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad_page_fault(%struct.pt_regs* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.exception_table_entry*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %9 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.exception_table_entry* @search_exception_tables(i32 %10)
  store %struct.exception_table_entry* %11, %struct.exception_table_entry** %7, align 8
  %12 = load %struct.exception_table_entry*, %struct.exception_table_entry** %7, align 8
  %13 = icmp ne %struct.exception_table_entry* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.exception_table_entry*, %struct.exception_table_entry** %7, align 8
  %16 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %19 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %24

20:                                               ; preds = %3
  %21 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.pt_regs* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %14
  ret void
}

declare dso_local %struct.exception_table_entry* @search_exception_tables(i32) #1

declare dso_local i32 @die(i8*, %struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
