; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_process.c___set_breakpoint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_process.c___set_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch_hw_breakpoint = type { i32 }

@current_brk = common dso_local global i32 0, align 4
@CPU_FTR_ARCH_207S = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__set_breakpoint(%struct.arch_hw_breakpoint* %0) #0 {
  %2 = alloca %struct.arch_hw_breakpoint*, align 8
  store %struct.arch_hw_breakpoint* %0, %struct.arch_hw_breakpoint** %2, align 8
  %3 = call i32 @this_cpu_ptr(i32* @current_brk)
  %4 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %2, align 8
  %5 = call i32 @memcpy(i32 %3, %struct.arch_hw_breakpoint* %4, i32 4)
  %6 = call i64 (...) @dawr_enabled()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %2, align 8
  %10 = call i32 @set_dawr(%struct.arch_hw_breakpoint* %9)
  br label %21

11:                                               ; preds = %1
  %12 = load i32, i32* @CPU_FTR_ARCH_207S, align 4
  %13 = call i32 @cpu_has_feature(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load %struct.arch_hw_breakpoint*, %struct.arch_hw_breakpoint** %2, align 8
  %17 = call i32 @set_dabr(%struct.arch_hw_breakpoint* %16)
  br label %20

18:                                               ; preds = %11
  %19 = call i32 @WARN_ON_ONCE(i32 1)
  br label %20

20:                                               ; preds = %18, %15
  br label %21

21:                                               ; preds = %20, %8
  ret void
}

declare dso_local i32 @memcpy(i32, %struct.arch_hw_breakpoint*, i32) #1

declare dso_local i32 @this_cpu_ptr(i32*) #1

declare dso_local i64 @dawr_enabled(...) #1

declare dso_local i32 @set_dawr(%struct.arch_hw_breakpoint*) #1

declare dso_local i32 @cpu_has_feature(i32) #1

declare dso_local i32 @set_dabr(%struct.arch_hw_breakpoint*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
