; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_process_64.c___global_reg_self.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_process_64.c___global_reg_self.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.global_reg_snapshot }
%struct.global_reg_snapshot = type { i32, %struct.thread_info*, i64, i64, i64, i32, i32 }
%struct.thread_info = type { i32 }
%struct.pt_regs = type { i32, i64*, i32, i32 }
%struct.reg_window = type { i64* }

@global_cpu_snapshot = common dso_local global %struct.TYPE_2__* null, align 8
@UREG_I7 = common dso_local global i64 0, align 8
@TSTATE_PRIV = common dso_local global i32 0, align 4
@UREG_FP = common dso_local global i64 0, align 8
@STACK_BIAS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread_info*, %struct.pt_regs*, i32)* @__global_reg_self to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__global_reg_self(%struct.thread_info* %0, %struct.pt_regs* %1, i32 %2) #0 {
  %4 = alloca %struct.thread_info*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.global_reg_snapshot*, align 8
  %8 = alloca %struct.reg_window*, align 8
  store %struct.thread_info* %0, %struct.thread_info** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 (...) @flushw_all()
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @global_cpu_snapshot, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.global_reg_snapshot* %14, %struct.global_reg_snapshot** %7, align 8
  %15 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %16 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.global_reg_snapshot*, %struct.global_reg_snapshot** %7, align 8
  %19 = getelementptr inbounds %struct.global_reg_snapshot, %struct.global_reg_snapshot* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %21 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.global_reg_snapshot*, %struct.global_reg_snapshot** %7, align 8
  %24 = getelementptr inbounds %struct.global_reg_snapshot, %struct.global_reg_snapshot* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %26 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.global_reg_snapshot*, %struct.global_reg_snapshot** %7, align 8
  %29 = getelementptr inbounds %struct.global_reg_snapshot, %struct.global_reg_snapshot* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %31 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* @UREG_I7, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.global_reg_snapshot*, %struct.global_reg_snapshot** %7, align 8
  %37 = getelementptr inbounds %struct.global_reg_snapshot, %struct.global_reg_snapshot* %36, i32 0, i32 4
  store i64 %35, i64* %37, align 8
  %38 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %39 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @TSTATE_PRIV, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %90

44:                                               ; preds = %3
  %45 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %46 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* @UREG_FP, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @STACK_BIAS, align 8
  %52 = add nsw i64 %50, %51
  %53 = inttoptr i64 %52 to %struct.reg_window*
  store %struct.reg_window* %53, %struct.reg_window** %8, align 8
  %54 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %55 = load %struct.reg_window*, %struct.reg_window** %8, align 8
  %56 = ptrtoint %struct.reg_window* %55 to i64
  %57 = call i64 @kstack_valid(%struct.thread_info* %54, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %89

59:                                               ; preds = %44
  %60 = load %struct.reg_window*, %struct.reg_window** %8, align 8
  %61 = getelementptr inbounds %struct.reg_window, %struct.reg_window* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 7
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.global_reg_snapshot*, %struct.global_reg_snapshot** %7, align 8
  %66 = getelementptr inbounds %struct.global_reg_snapshot, %struct.global_reg_snapshot* %65, i32 0, i32 3
  store i64 %64, i64* %66, align 8
  %67 = load %struct.reg_window*, %struct.reg_window** %8, align 8
  %68 = getelementptr inbounds %struct.reg_window, %struct.reg_window* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 6
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @STACK_BIAS, align 8
  %73 = add nsw i64 %71, %72
  %74 = inttoptr i64 %73 to %struct.reg_window*
  store %struct.reg_window* %74, %struct.reg_window** %8, align 8
  %75 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %76 = load %struct.reg_window*, %struct.reg_window** %8, align 8
  %77 = ptrtoint %struct.reg_window* %76 to i64
  %78 = call i64 @kstack_valid(%struct.thread_info* %75, i64 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %59
  %81 = load %struct.reg_window*, %struct.reg_window** %8, align 8
  %82 = getelementptr inbounds %struct.reg_window, %struct.reg_window* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 7
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.global_reg_snapshot*, %struct.global_reg_snapshot** %7, align 8
  %87 = getelementptr inbounds %struct.global_reg_snapshot, %struct.global_reg_snapshot* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %80, %59
  br label %89

89:                                               ; preds = %88, %44
  br label %95

90:                                               ; preds = %3
  %91 = load %struct.global_reg_snapshot*, %struct.global_reg_snapshot** %7, align 8
  %92 = getelementptr inbounds %struct.global_reg_snapshot, %struct.global_reg_snapshot* %91, i32 0, i32 3
  store i64 0, i64* %92, align 8
  %93 = load %struct.global_reg_snapshot*, %struct.global_reg_snapshot** %7, align 8
  %94 = getelementptr inbounds %struct.global_reg_snapshot, %struct.global_reg_snapshot* %93, i32 0, i32 2
  store i64 0, i64* %94, align 8
  br label %95

95:                                               ; preds = %90, %89
  %96 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %97 = load %struct.global_reg_snapshot*, %struct.global_reg_snapshot** %7, align 8
  %98 = getelementptr inbounds %struct.global_reg_snapshot, %struct.global_reg_snapshot* %97, i32 0, i32 1
  store %struct.thread_info* %96, %struct.thread_info** %98, align 8
  ret void
}

declare dso_local i32 @flushw_all(...) #1

declare dso_local i64 @kstack_valid(%struct.thread_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
