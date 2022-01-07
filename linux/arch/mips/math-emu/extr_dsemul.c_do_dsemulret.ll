; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_dsemul.c_do_dsemulret.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_dsemul.c_do_dsemulret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pt_regs = type { i32 }

@current = common dso_local global %struct.TYPE_5__* null, align 8
@errors = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"dsemulret to 0x%08lx\0A\00", align 1
@ds_emul = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_dsemulret(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %5 = call i32 @dsemul_thread_cleanup(%struct.TYPE_5__* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @errors, align 4
  %9 = call i32 @MIPS_FPU_EMU_INC_STATS(i32 %8)
  store i32 0, i32* %2, align 4
  br label %23

10:                                               ; preds = %1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %16 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %18 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @ds_emul, align 4
  %22 = call i32 @MIPS_FPU_EMU_INC_STATS(i32 %21)
  store i32 1, i32* %2, align 4
  br label %23

23:                                               ; preds = %10, %7
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @dsemul_thread_cleanup(%struct.TYPE_5__*) #1

declare dso_local i32 @MIPS_FPU_EMU_INC_STATS(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
