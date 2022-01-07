; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_step.c_convert_ip_to_linear.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_step.c_convert_ip_to_linear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.desc_struct* }
%struct.desc_struct = type { i32 }
%struct.pt_regs = type { i64, i64 }

@SEGMENT_LDT = common dso_local global i64 0, align 8
@SEGMENT_TI_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @convert_ip_to_linear(%struct.task_struct* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  %8 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %9 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %12 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %15 = call i64 @v8086_mode(%struct.pt_regs* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  %19 = and i64 %18, 65535
  %20 = load i64, i64* %7, align 8
  %21 = shl i64 %20, 4
  %22 = add i64 %19, %21
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  store i64 %23, i64* %3, align 8
  br label %26

24:                                               ; preds = %2
  %25 = load i64, i64* %6, align 8
  store i64 %25, i64* %3, align 8
  br label %26

26:                                               ; preds = %24, %17
  %27 = load i64, i64* %3, align 8
  ret i64 %27
}

declare dso_local i64 @v8086_mode(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
