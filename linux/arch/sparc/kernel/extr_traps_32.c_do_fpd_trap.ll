; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_traps_32.c_do_fpd_trap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_traps_32.c_do_fpd_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32, i32* }
%struct.pt_regs = type { i32 }

@PSR_PS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Kernel gets FloatingPenguinUnit disabled trap\00", align 1
@PSR_EF = common dso_local global i32 0, align 4
@last_task_used_math = common dso_local global %struct.task_struct* null, align 8
@current = common dso_local global %struct.task_struct* null, align 8
@init_fregs = common dso_local global i32* null, align 8
@init_fsr = common dso_local global i32 0, align 4
@TIF_USEDFPU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_fpd_trap(%struct.pt_regs* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.task_struct*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* @PSR_PS, align 8
  %12 = and i64 %10, %11
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %16 = call i32 @die_if_kernel(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.pt_regs* %15)
  br label %17

17:                                               ; preds = %14, %4
  %18 = call i32 (...) @get_psr()
  %19 = load i32, i32* @PSR_EF, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @put_psr(i32 %20)
  %22 = load i32, i32* @PSR_EF, align 4
  %23 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %24 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.task_struct*, %struct.task_struct** @last_task_used_math, align 8
  %28 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %29 = icmp eq %struct.task_struct* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  br label %72

31:                                               ; preds = %17
  %32 = load %struct.task_struct*, %struct.task_struct** @last_task_used_math, align 8
  %33 = icmp ne %struct.task_struct* %32, null
  br i1 %33, label %34, label %53

34:                                               ; preds = %31
  %35 = load %struct.task_struct*, %struct.task_struct** @last_task_used_math, align 8
  store %struct.task_struct* %35, %struct.task_struct** %9, align 8
  %36 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %42 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %45 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %50 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = call i32 @fpsave(i32* %40, i32* %43, i32* %48, i32* %51)
  br label %53

53:                                               ; preds = %34, %31
  %54 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %54, %struct.task_struct** @last_task_used_math, align 8
  %55 = call i64 (...) @used_math()
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %59 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %64 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @fpload(i32* %62, i32* %65)
  br label %72

67:                                               ; preds = %53
  %68 = load i32*, i32** @init_fregs, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = call i32 @fpload(i32* %69, i32* @init_fsr)
  %71 = call i32 (...) @set_used_math()
  br label %72

72:                                               ; preds = %30, %67, %57
  ret void
}

declare dso_local i32 @die_if_kernel(i8*, %struct.pt_regs*) #1

declare dso_local i32 @put_psr(i32) #1

declare dso_local i32 @get_psr(...) #1

declare dso_local i32 @fpsave(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @used_math(...) #1

declare dso_local i32 @fpload(i32*, i32*) #1

declare dso_local i32 @set_used_math(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
