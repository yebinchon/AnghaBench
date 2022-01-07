; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpmodule.c_vfp_force_reload.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/vfp/extr_vfpmodule.c_vfp_force_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FPEXC = common dso_local global i32 0, align 4
@FPEXC_EN = common dso_local global i32 0, align 4
@vfp_current_hw_state = common dso_local global i32** null, align 8
@NR_CPUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.thread_info*)* @vfp_force_reload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfp_force_reload(i32 %0, %struct.thread_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread_info*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.thread_info* %1, %struct.thread_info** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %7 = call i64 @vfp_state_in_hw(i32 %5, %struct.thread_info* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load i32, i32* @FPEXC, align 4
  %11 = load i32, i32* @FPEXC, align 4
  %12 = call i32 @fmrx(i32 %11)
  %13 = load i32, i32* @FPEXC_EN, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = call i32 @fmxr(i32 %10, i32 %15)
  %17 = load i32**, i32*** @vfp_current_hw_state, align 8
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  store i32* null, i32** %20, align 8
  br label %21

21:                                               ; preds = %9, %2
  ret void
}

declare dso_local i64 @vfp_state_in_hw(i32, %struct.thread_info*) #1

declare dso_local i32 @fmxr(i32, i32) #1

declare dso_local i32 @fmrx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
