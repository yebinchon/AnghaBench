; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpmodule.c_vfp_restore_user_hwstate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpmodule.c_vfp_restore_user_hwstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_vfp = type { i32, i32 }
%struct.user_vfp_exc = type { i64, i32, i32 }
%struct.thread_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { i64, i32, i32, i32, i32 }

@FPEXC_EN = common dso_local global i64 0, align 8
@FPEXC_EX = common dso_local global i64 0, align 8
@FPEXC_FP2V = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfp_restore_user_hwstate(%struct.user_vfp* %0, %struct.user_vfp_exc* %1) #0 {
  %3 = alloca %struct.user_vfp*, align 8
  %4 = alloca %struct.user_vfp_exc*, align 8
  %5 = alloca %struct.thread_info*, align 8
  %6 = alloca %struct.vfp_hard_struct*, align 8
  %7 = alloca i64, align 8
  store %struct.user_vfp* %0, %struct.user_vfp** %3, align 8
  store %struct.user_vfp_exc* %1, %struct.user_vfp_exc** %4, align 8
  %8 = call %struct.thread_info* (...) @current_thread_info()
  store %struct.thread_info* %8, %struct.thread_info** %5, align 8
  %9 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %10 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.vfp_hard_struct* %11, %struct.vfp_hard_struct** %6, align 8
  %12 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %13 = call i32 @vfp_flush_hwstate(%struct.thread_info* %12)
  %14 = load %struct.vfp_hard_struct*, %struct.vfp_hard_struct** %6, align 8
  %15 = getelementptr inbounds %struct.vfp_hard_struct, %struct.vfp_hard_struct* %14, i32 0, i32 4
  %16 = load %struct.user_vfp*, %struct.user_vfp** %3, align 8
  %17 = getelementptr inbounds %struct.user_vfp, %struct.user_vfp* %16, i32 0, i32 1
  %18 = call i32 @memcpy(i32* %15, i32* %17, i32 4)
  %19 = load %struct.user_vfp*, %struct.user_vfp** %3, align 8
  %20 = getelementptr inbounds %struct.user_vfp, %struct.user_vfp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vfp_hard_struct*, %struct.vfp_hard_struct** %6, align 8
  %23 = getelementptr inbounds %struct.vfp_hard_struct, %struct.vfp_hard_struct* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.user_vfp_exc*, %struct.user_vfp_exc** %4, align 8
  %25 = getelementptr inbounds %struct.user_vfp_exc, %struct.user_vfp_exc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* @FPEXC_EN, align 8
  %28 = load i64, i64* %7, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* @FPEXC_EX, align 8
  %31 = load i64, i64* @FPEXC_FP2V, align 8
  %32 = or i64 %30, %31
  %33 = xor i64 %32, -1
  %34 = load i64, i64* %7, align 8
  %35 = and i64 %34, %33
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.vfp_hard_struct*, %struct.vfp_hard_struct** %6, align 8
  %38 = getelementptr inbounds %struct.vfp_hard_struct, %struct.vfp_hard_struct* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.user_vfp_exc*, %struct.user_vfp_exc** %4, align 8
  %40 = getelementptr inbounds %struct.user_vfp_exc, %struct.user_vfp_exc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.vfp_hard_struct*, %struct.vfp_hard_struct** %6, align 8
  %43 = getelementptr inbounds %struct.vfp_hard_struct, %struct.vfp_hard_struct* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.user_vfp_exc*, %struct.user_vfp_exc** %4, align 8
  %45 = getelementptr inbounds %struct.user_vfp_exc, %struct.user_vfp_exc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.vfp_hard_struct*, %struct.vfp_hard_struct** %6, align 8
  %48 = getelementptr inbounds %struct.vfp_hard_struct, %struct.vfp_hard_struct* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  ret i32 0
}

declare dso_local %struct.thread_info* @current_thread_info(...) #1

declare dso_local i32 @vfp_flush_hwstate(%struct.thread_info*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
