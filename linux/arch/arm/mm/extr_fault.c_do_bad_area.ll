; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_fault.c_do_bad_area.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_fault.c_do_bad_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.pt_regs = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@SIGSEGV = common dso_local global i32 0, align 4
@SEGV_MAPERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_bad_area(i64 %0, i32 %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.mm_struct*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %9, %struct.task_struct** %7, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 0
  %12 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  store %struct.mm_struct* %12, %struct.mm_struct** %8, align 8
  %13 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %14 = call i64 @user_mode(%struct.pt_regs* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i64, i64* %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SIGSEGV, align 4
  %20 = load i32, i32* @SEGV_MAPERR, align 4
  %21 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %22 = call i32 @__do_user_fault(i64 %17, i32 %18, i32 %19, i32 %20, %struct.pt_regs* %21)
  br label %29

23:                                               ; preds = %3
  %24 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %28 = call i32 @__do_kernel_fault(%struct.mm_struct* %24, i64 %25, i32 %26, %struct.pt_regs* %27)
  br label %29

29:                                               ; preds = %23, %16
  ret void
}

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @__do_user_fault(i64, i32, i32, i32, %struct.pt_regs*) #1

declare dso_local i32 @__do_kernel_fault(%struct.mm_struct*, i64, i32, %struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
