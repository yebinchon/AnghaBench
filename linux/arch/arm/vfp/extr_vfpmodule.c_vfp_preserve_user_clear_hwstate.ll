; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpmodule.c_vfp_preserve_user_clear_hwstate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpmodule.c_vfp_preserve_user_clear_hwstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_vfp = type { i32, i32 }
%struct.user_vfp_exc = type { i32, i32, i32 }
%struct.thread_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { i32, i32, i32, i32, i32 }

@FPSCR_LENGTH_MASK = common dso_local global i32 0, align 4
@FPSCR_STRIDE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfp_preserve_user_clear_hwstate(%struct.user_vfp* %0, %struct.user_vfp_exc* %1) #0 {
  %3 = alloca %struct.user_vfp*, align 8
  %4 = alloca %struct.user_vfp_exc*, align 8
  %5 = alloca %struct.thread_info*, align 8
  %6 = alloca %struct.vfp_hard_struct*, align 8
  store %struct.user_vfp* %0, %struct.user_vfp** %3, align 8
  store %struct.user_vfp_exc* %1, %struct.user_vfp_exc** %4, align 8
  %7 = call %struct.thread_info* (...) @current_thread_info()
  store %struct.thread_info* %7, %struct.thread_info** %5, align 8
  %8 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %9 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.vfp_hard_struct* %10, %struct.vfp_hard_struct** %6, align 8
  %11 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %12 = call i32 @vfp_sync_hwstate(%struct.thread_info* %11)
  %13 = load %struct.user_vfp*, %struct.user_vfp** %3, align 8
  %14 = getelementptr inbounds %struct.user_vfp, %struct.user_vfp* %13, i32 0, i32 1
  %15 = load %struct.vfp_hard_struct*, %struct.vfp_hard_struct** %6, align 8
  %16 = getelementptr inbounds %struct.vfp_hard_struct, %struct.vfp_hard_struct* %15, i32 0, i32 4
  %17 = call i32 @memcpy(i32* %14, i32* %16, i32 4)
  %18 = load %struct.vfp_hard_struct*, %struct.vfp_hard_struct** %6, align 8
  %19 = getelementptr inbounds %struct.vfp_hard_struct, %struct.vfp_hard_struct* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.user_vfp*, %struct.user_vfp** %3, align 8
  %22 = getelementptr inbounds %struct.user_vfp, %struct.user_vfp* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.vfp_hard_struct*, %struct.vfp_hard_struct** %6, align 8
  %24 = getelementptr inbounds %struct.vfp_hard_struct, %struct.vfp_hard_struct* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.user_vfp_exc*, %struct.user_vfp_exc** %4, align 8
  %27 = getelementptr inbounds %struct.user_vfp_exc, %struct.user_vfp_exc* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.vfp_hard_struct*, %struct.vfp_hard_struct** %6, align 8
  %29 = getelementptr inbounds %struct.vfp_hard_struct, %struct.vfp_hard_struct* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.user_vfp_exc*, %struct.user_vfp_exc** %4, align 8
  %32 = getelementptr inbounds %struct.user_vfp_exc, %struct.user_vfp_exc* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.vfp_hard_struct*, %struct.vfp_hard_struct** %6, align 8
  %34 = getelementptr inbounds %struct.vfp_hard_struct, %struct.vfp_hard_struct* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.user_vfp_exc*, %struct.user_vfp_exc** %4, align 8
  %37 = getelementptr inbounds %struct.user_vfp_exc, %struct.user_vfp_exc* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %39 = call i32 @vfp_flush_hwstate(%struct.thread_info* %38)
  %40 = load i32, i32* @FPSCR_LENGTH_MASK, align 4
  %41 = load i32, i32* @FPSCR_STRIDE_MASK, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load %struct.vfp_hard_struct*, %struct.vfp_hard_struct** %6, align 8
  %45 = getelementptr inbounds %struct.vfp_hard_struct, %struct.vfp_hard_struct* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  ret i32 0
}

declare dso_local %struct.thread_info* @current_thread_info(...) #1

declare dso_local i32 @vfp_sync_hwstate(%struct.thread_info*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @vfp_flush_hwstate(%struct.thread_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
