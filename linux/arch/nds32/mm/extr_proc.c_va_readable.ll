; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/mm/extr_proc.c_va_readable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/mm/extr_proc.c_va_readable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.pt_regs = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @va_readable(%struct.pt_regs* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  store %struct.mm_struct* %11, %struct.mm_struct** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %13 = call i64 @user_mode(%struct.pt_regs* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @va_present(%struct.mm_struct* %16, i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @pte_read(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, i32* %8, align 4
  br label %26

26:                                               ; preds = %25, %21, %15
  br label %34

27:                                               ; preds = %2
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @va_kernel_present(i64 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %27
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @va_present(%struct.mm_struct*, i64) #1

declare dso_local i64 @pte_read(i32) #1

declare dso_local i32 @va_kernel_present(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
