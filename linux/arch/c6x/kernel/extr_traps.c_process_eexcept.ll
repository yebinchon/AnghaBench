; ModuleID = '/home/carl/AnghaBench/linux/arch/c6x/kernel/extr_traps.c_process_eexcept.c'
source_filename = "/home/carl/AnghaBench/linux/arch/c6x/kernel/extr_traps.c_process_eexcept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"EEXCEPT: PC[0x%lx]\0A\00", align 1
@eexcept_table = common dso_local global i32* null, align 8
@EXCEPT_TYPE_EXC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*)* @process_eexcept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_eexcept(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %4 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %5 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %6)
  br label %8

8:                                                ; preds = %11, %1
  %9 = call i32 (...) @soc_get_exception()
  store i32 %9, i32* %3, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load i32*, i32** @eexcept_table, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %17 = call i32 @do_trap(i32* %15, %struct.pt_regs* %16)
  br label %8

18:                                               ; preds = %8
  %19 = load i32, i32* @EXCEPT_TYPE_EXC, align 4
  %20 = call i32 @ack_exception(i32 %19)
  ret void
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @soc_get_exception(...) #1

declare dso_local i32 @do_trap(i32*, %struct.pt_regs*) #1

declare dso_local i32 @ack_exception(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
