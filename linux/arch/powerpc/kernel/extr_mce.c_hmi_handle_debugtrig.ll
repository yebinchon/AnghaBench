; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce.c_hmi_handle_debugtrig.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce.c_hmi_handle_debugtrig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.pt_regs = type { i32 }

@SPRN_HMER = common dso_local global i32 0, align 4
@HMER_DEBUG_TRIG = common dso_local global i64 0, align 8
@hmer_debug_trig_function = common dso_local global i32 0, align 4
@DTRIG_UNKNOWN = common dso_local global i32 0, align 4
@local_paca = common dso_local global %struct.TYPE_2__* null, align 8
@SPRN_HMEER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hmi_handle_debugtrig(%struct.pt_regs* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %6 = load i32, i32* @SPRN_HMER, align 4
  %7 = call i64 @mfspr(i32 %6)
  store i64 %7, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @HMER_DEBUG_TRIG, align 8
  %10 = and i64 %8, %9
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @hmer_debug_trig_function, align 4
  %14 = load i32, i32* @DTRIG_UNKNOWN, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %12, %1
  store i64 -1, i64* %2, align 8
  br label %48

17:                                               ; preds = %12
  %18 = load i64, i64* @HMER_DEBUG_TRIG, align 8
  %19 = xor i64 %18, -1
  %20 = load i64, i64* %4, align 8
  %21 = and i64 %20, %19
  store i64 %21, i64* %4, align 8
  %22 = load i32, i32* @SPRN_HMER, align 4
  %23 = load i64, i64* @HMER_DEBUG_TRIG, align 8
  %24 = xor i64 %23, -1
  %25 = call i32 @mtspr(i32 %22, i64 %24)
  %26 = load i32, i32* @hmer_debug_trig_function, align 4
  switch i32 %26, label %38 [
    i32 128, label %27
  ]

27:                                               ; preds = %17
  %28 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %29 = icmp ne %struct.pt_regs* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %32 = call i32 @user_mode(%struct.pt_regs* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @local_paca, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i64 1, i64* %36, align 8
  store i64 1, i64* %5, align 8
  br label %37

37:                                               ; preds = %34, %30, %27
  br label %39

38:                                               ; preds = %17
  br label %39

39:                                               ; preds = %38, %37
  %40 = load i64, i64* %4, align 8
  %41 = load i32, i32* @SPRN_HMEER, align 4
  %42 = call i64 @mfspr(i32 %41)
  %43 = and i64 %40, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i64 -1, i64* %2, align 8
  br label %48

46:                                               ; preds = %39
  %47 = load i64, i64* %5, align 8
  store i64 %47, i64* %2, align 8
  br label %48

48:                                               ; preds = %46, %45, %16
  %49 = load i64, i64* %2, align 8
  ret i64 %49
}

declare dso_local i64 @mfspr(i32) #1

declare dso_local i32 @mtspr(i32, i64) #1

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
