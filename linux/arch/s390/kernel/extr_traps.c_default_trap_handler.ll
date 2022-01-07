; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_traps.c_default_trap_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_traps.c_default_trap_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@SIGSEGV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unknown program exception\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @default_trap_handler(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %3 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %4 = call i64 @user_mode(%struct.pt_regs* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %8 = load i32, i32* @SIGSEGV, align 4
  %9 = call i32 @report_user_fault(%struct.pt_regs* %7, i32 %8, i32 0)
  %10 = load i32, i32* @SIGSEGV, align 4
  %11 = call i32 @do_exit(i32 %10)
  br label %15

12:                                               ; preds = %1
  %13 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %14 = call i32 @die(%struct.pt_regs* %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %6
  ret void
}

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @report_user_fault(%struct.pt_regs*, i32, i32) #1

declare dso_local i32 @do_exit(i32) #1

declare dso_local i32 @die(%struct.pt_regs*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
