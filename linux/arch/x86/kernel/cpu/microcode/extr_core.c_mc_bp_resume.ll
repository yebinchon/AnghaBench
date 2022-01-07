; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_core.c_mc_bp_resume.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/microcode/extr_core.c_mc_bp_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucode_cpu_info = type { i64, i64 }
%struct.TYPE_2__ = type { i32 (i32)* }

@ucode_cpu_info = common dso_local global %struct.ucode_cpu_info* null, align 8
@microcode_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mc_bp_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mc_bp_resume() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ucode_cpu_info*, align 8
  %3 = call i32 (...) @smp_processor_id()
  store i32 %3, i32* %1, align 4
  %4 = load %struct.ucode_cpu_info*, %struct.ucode_cpu_info** @ucode_cpu_info, align 8
  %5 = load i32, i32* %1, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.ucode_cpu_info, %struct.ucode_cpu_info* %4, i64 %6
  store %struct.ucode_cpu_info* %7, %struct.ucode_cpu_info** %2, align 8
  %8 = load %struct.ucode_cpu_info*, %struct.ucode_cpu_info** %2, align 8
  %9 = getelementptr inbounds %struct.ucode_cpu_info, %struct.ucode_cpu_info* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %0
  %13 = load %struct.ucode_cpu_info*, %struct.ucode_cpu_info** %2, align 8
  %14 = getelementptr inbounds %struct.ucode_cpu_info, %struct.ucode_cpu_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @microcode_ops, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32)*, i32 (i32)** %19, align 8
  %21 = load i32, i32* %1, align 4
  %22 = call i32 %20(i32 %21)
  br label %31

23:                                               ; preds = %12, %0
  %24 = load %struct.ucode_cpu_info*, %struct.ucode_cpu_info** %2, align 8
  %25 = getelementptr inbounds %struct.ucode_cpu_info, %struct.ucode_cpu_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = call i32 (...) @reload_early_microcode()
  br label %30

30:                                               ; preds = %28, %23
  br label %31

31:                                               ; preds = %30, %17
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @reload_early_microcode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
