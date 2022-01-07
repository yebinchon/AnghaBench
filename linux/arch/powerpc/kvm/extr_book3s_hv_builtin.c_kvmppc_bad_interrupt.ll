; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_builtin.c_kvmppc_bad_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_builtin.c_kvmppc_bad_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Bad interrupt in KVM entry/exit code\00", align 1
@SIGABRT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Bad KVM trap\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_bad_interrupt(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %3 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %4 = call i32 @TRAP(%struct.pt_regs* %3)
  %5 = icmp eq i32 %4, 256
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = call %struct.TYPE_2__* (...) @get_paca()
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %12 = call i32 @system_reset_exception(%struct.pt_regs* %11)
  %13 = call %struct.TYPE_2__* (...) @get_paca()
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %14, align 4
  br label %29

17:                                               ; preds = %1
  %18 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %19 = call i32 @TRAP(%struct.pt_regs* %18)
  %20 = icmp eq i32 %19, 512
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %23 = call i32 @machine_check_exception(%struct.pt_regs* %22)
  br label %28

24:                                               ; preds = %17
  %25 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %26 = load i32, i32* @SIGABRT, align 4
  %27 = call i32 @die(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.pt_regs* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %21
  br label %29

29:                                               ; preds = %28, %6
  %30 = call i32 @panic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @TRAP(%struct.pt_regs*) #1

declare dso_local %struct.TYPE_2__* @get_paca(...) #1

declare dso_local i32 @system_reset_exception(%struct.pt_regs*) #1

declare dso_local i32 @machine_check_exception(%struct.pt_regs*) #1

declare dso_local i32 @die(i8*, %struct.pt_regs*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
