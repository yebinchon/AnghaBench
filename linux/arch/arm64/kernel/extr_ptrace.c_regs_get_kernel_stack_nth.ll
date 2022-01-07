; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_ptrace.c_regs_get_kernel_stack_nth.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_ptrace.c_regs_get_kernel_stack_nth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @regs_get_kernel_stack_nth(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %8 = call i64 @kernel_stack_pointer(%struct.pt_regs* %7)
  %9 = inttoptr i64 %8 to i64*
  store i64* %9, i64** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i64*, i64** %6, align 8
  %12 = zext i32 %10 to i64
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  store i64* %13, i64** %6, align 8
  %14 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = ptrtoint i64* %15 to i64
  %17 = call i64 @regs_within_kernel_stack(%struct.pt_regs* %14, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i64*, i64** %6, align 8
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %3, align 8
  br label %23

22:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %23

23:                                               ; preds = %22, %19
  %24 = load i64, i64* %3, align 8
  ret i64 %24
}

declare dso_local i64 @kernel_stack_pointer(%struct.pt_regs*) #1

declare dso_local i64 @regs_within_kernel_stack(%struct.pt_regs*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
