; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_dumpstack.c_show_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_dumpstack.c_show_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@KERN_DEFAULT = common dso_local global i32 0, align 4
@SHOW_REGS_USER = common dso_local global i32 0, align 4
@SHOW_REGS_ALL = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_regs(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %3 = load i32, i32* @KERN_DEFAULT, align 4
  %4 = call i32 @show_regs_print_info(i32 %3)
  %5 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %6 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %7 = call i64 @user_mode(%struct.pt_regs* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @SHOW_REGS_USER, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @SHOW_REGS_ALL, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = call i32 @__show_regs(%struct.pt_regs* %5, i32 %14)
  %16 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %17 = call i64 @user_mode(%struct.pt_regs* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* @current, align 4
  %21 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %22 = load i32, i32* @KERN_DEFAULT, align 4
  %23 = call i32 @show_trace_log_lvl(i32 %20, %struct.pt_regs* %21, i32* null, i32 %22)
  br label %24

24:                                               ; preds = %19, %13
  ret void
}

declare dso_local i32 @show_regs_print_info(i32) #1

declare dso_local i32 @__show_regs(%struct.pt_regs*, i32) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @show_trace_log_lvl(i32, %struct.pt_regs*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
