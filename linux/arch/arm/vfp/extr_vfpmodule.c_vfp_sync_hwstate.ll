; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpmodule.c_vfp_sync_hwstate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpmodule.c_vfp_sync_hwstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { i32 }

@FPEXC = common dso_local global i32 0, align 4
@FPEXC_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfp_sync_hwstate(%struct.thread_info* %0) #0 {
  %2 = alloca %struct.thread_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.thread_info* %0, %struct.thread_info** %2, align 8
  %5 = call i32 (...) @get_cpu()
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.thread_info*, %struct.thread_info** %2, align 8
  %8 = call i64 @vfp_state_in_hw(i32 %6, %struct.thread_info* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load i32, i32* @FPEXC, align 4
  %12 = call i32 @fmrx(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @FPEXC, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @FPEXC_EN, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @fmxr(i32 %13, i32 %16)
  %18 = load %struct.thread_info*, %struct.thread_info** %2, align 8
  %19 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %18, i32 0, i32 0
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @FPEXC_EN, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @vfp_save_state(i32* %19, i32 %22)
  %24 = load i32, i32* @FPEXC, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @fmxr(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %10, %1
  %28 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local i64 @vfp_state_in_hw(i32, %struct.thread_info*) #1

declare dso_local i32 @fmrx(i32) #1

declare dso_local i32 @fmxr(i32, i32) #1

declare dso_local i32 @vfp_save_state(i32*, i32) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
