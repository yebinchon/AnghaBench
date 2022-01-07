; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_perf_regs.c_perf_get_regs_user.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_perf_regs.c_perf_get_regs_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_regs = type { i64, i32 }
%struct.pt_regs = type { i32 }

@current = common dso_local global i32 0, align 4
@PERF_SAMPLE_REGS_ABI_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_get_regs_user(%struct.perf_regs* %0, %struct.pt_regs* %1, %struct.pt_regs* %2) #0 {
  %4 = alloca %struct.perf_regs*, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  store %struct.perf_regs* %0, %struct.perf_regs** %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  %7 = load i32, i32* @current, align 4
  %8 = call i64 @task_pt_regs(i32 %7)
  %9 = load %struct.perf_regs*, %struct.perf_regs** %4, align 8
  %10 = getelementptr inbounds %struct.perf_regs, %struct.perf_regs* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.perf_regs*, %struct.perf_regs** %4, align 8
  %12 = getelementptr inbounds %struct.perf_regs, %struct.perf_regs* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @current, align 4
  %17 = call i32 @perf_reg_abi(i32 %16)
  br label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @PERF_SAMPLE_REGS_ABI_NONE, align 4
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i32 [ %17, %15 ], [ %19, %18 ]
  %22 = load %struct.perf_regs*, %struct.perf_regs** %4, align 8
  %23 = getelementptr inbounds %struct.perf_regs, %struct.perf_regs* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  ret void
}

declare dso_local i64 @task_pt_regs(i32) #1

declare dso_local i32 @perf_reg_abi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
