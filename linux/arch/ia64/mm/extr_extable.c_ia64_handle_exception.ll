; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/mm/extr_extable.c_ia64_handle_exception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/mm/extr_extable.c_ia64_handle_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i64, i32 }
%struct.exception_table_entry = type { i32 }
%struct.TYPE_2__ = type { i64 }

@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia64_handle_exception(%struct.pt_regs* %0, %struct.exception_table_entry* %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.exception_table_entry*, align 8
  %5 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store %struct.exception_table_entry* %1, %struct.exception_table_entry** %4, align 8
  %6 = load %struct.exception_table_entry*, %struct.exception_table_entry** %4, align 8
  %7 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %6, i32 0, i32 0
  %8 = ptrtoint i32* %7 to i64
  %9 = load %struct.exception_table_entry*, %struct.exception_table_entry** %4, align 8
  %10 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %8, %12
  store i64 %13, i64* %5, align 8
  %14 = load i32, i32* @EFAULT, align 4
  %15 = sub nsw i32 0, %14
  %16 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %17 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load i64, i64* %5, align 8
  %19 = and i64 %18, 4
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %23 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %21, %2
  %25 = load i64, i64* %5, align 8
  %26 = and i64 %25, -16
  %27 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %5, align 8
  %30 = and i64 %29, 3
  %31 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %32 = call %struct.TYPE_2__* @ia64_psr(%struct.pt_regs* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  ret void
}

declare dso_local %struct.TYPE_2__* @ia64_psr(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
