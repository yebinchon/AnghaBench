; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/mm/extr_proc.c_va_writable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/mm/extr_proc.c_va_writable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.pt_regs = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @va_writable(%struct.pt_regs* %0, i64 %1) #0 {
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  store %struct.mm_struct* %10, %struct.mm_struct** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %12 = call i64 @user_mode(%struct.pt_regs* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @va_present(%struct.mm_struct* %15, i64 %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @pte_write(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 1, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %20, %14
  br label %37

26:                                               ; preds = %2
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @va_kernel_present(i64 %27)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @pte_kernel_write(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %31, %26
  br label %37

37:                                               ; preds = %36, %25
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i64 @va_present(%struct.mm_struct*, i64) #1

declare dso_local i64 @pte_write(i64) #1

declare dso_local i64 @va_kernel_present(i64) #1

declare dso_local i64 @pte_kernel_write(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
