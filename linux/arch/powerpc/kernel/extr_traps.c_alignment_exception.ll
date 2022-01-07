; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_traps.c_alignment_exception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_traps.c_alignment_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pt_regs = type { i32, i32 }

@TM_CAUSE_ALIGNMENT = common dso_local global i32 0, align 4
@TM_CAUSE_PERSISTENT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@PR_UNALIGN_SIGBUS = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@SEGV_ACCERR = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@BUS_ADRALN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alignment_exception(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %7 = call i32 (...) @exception_enter()
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %9 = call i32 @arch_irq_disabled_regs(%struct.pt_regs* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 (...) @local_irq_enable()
  br label %13

13:                                               ; preds = %11, %1
  %14 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %15 = load i32, i32* @TM_CAUSE_ALIGNMENT, align 4
  %16 = load i32, i32* @TM_CAUSE_PERSISTENT, align 4
  %17 = or i32 %15, %16
  %18 = call i64 @tm_abort_check(%struct.pt_regs* %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %73

21:                                               ; preds = %13
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PR_UNALIGN_SIGBUS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %31 = call i32 @fix_alignment(%struct.pt_regs* %30)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %29, %21
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %37 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 4
  store i32 %39, i32* %37, align 4
  %40 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %41 = call i32 @emulate_single_step(%struct.pt_regs* %40)
  br label %73

42:                                               ; preds = %32
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @EFAULT, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @SIGSEGV, align 4
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @SEGV_ACCERR, align 4
  store i32 %49, i32* %5, align 4
  br label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @SIGBUS, align 4
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* @BUS_ADRALN, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %55 = call i64 @user_mode(%struct.pt_regs* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %62 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @_exception(i32 %58, %struct.pt_regs* %59, i32 %60, i32 %63)
  br label %72

65:                                               ; preds = %53
  %66 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %67 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %68 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @bad_page_fault(%struct.pt_regs* %66, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %65, %57
  br label %73

73:                                               ; preds = %72, %35, %20
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @exception_exit(i32 %74)
  ret void
}

declare dso_local i32 @exception_enter(...) #1

declare dso_local i32 @arch_irq_disabled_regs(%struct.pt_regs*) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i64 @tm_abort_check(%struct.pt_regs*, i32) #1

declare dso_local i32 @fix_alignment(%struct.pt_regs*) #1

declare dso_local i32 @emulate_single_step(%struct.pt_regs*) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @_exception(i32, %struct.pt_regs*, i32, i32) #1

declare dso_local i32 @bad_page_fault(%struct.pt_regs*, i32, i32) #1

declare dso_local i32 @exception_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
