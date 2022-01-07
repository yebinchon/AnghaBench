; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_fpsimd.c_fpsimd_save.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_fpsimd.c_fpsimd_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpsimd_last_state_struct = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@fpsimd_last_state = common dso_local global i32 0, align 4
@TIF_FOREIGN_FPSTATE = common dso_local global i32 0, align 4
@TIF_SVE = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@SI_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fpsimd_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpsimd_save() #0 {
  %1 = alloca %struct.fpsimd_last_state_struct*, align 8
  %2 = call %struct.fpsimd_last_state_struct* @this_cpu_ptr(i32* @fpsimd_last_state)
  store %struct.fpsimd_last_state_struct* %2, %struct.fpsimd_last_state_struct** %1, align 8
  %3 = call i32 (...) @have_cpu_fpsimd_context()
  %4 = icmp ne i32 %3, 0
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i64 @WARN_ON(i32 %6)
  %8 = load i32, i32* @TIF_FOREIGN_FPSTATE, align 4
  %9 = call i64 @test_thread_flag(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %53, label %11

11:                                               ; preds = %0
  %12 = call i64 (...) @system_supports_sve()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %11
  %15 = load i32, i32* @TIF_SVE, align 4
  %16 = call i64 @test_thread_flag(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %14
  %19 = call i64 (...) @sve_get_vl()
  %20 = load %struct.fpsimd_last_state_struct*, %struct.fpsimd_last_state_struct** %1, align 8
  %21 = getelementptr inbounds %struct.fpsimd_last_state_struct, %struct.fpsimd_last_state_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load i32, i32* @SIGKILL, align 4
  %29 = load i32, i32* @SI_KERNEL, align 4
  %30 = call i32 @force_signal_inject(i32 %28, i32 %29, i32 0)
  br label %53

31:                                               ; preds = %18
  %32 = load %struct.fpsimd_last_state_struct*, %struct.fpsimd_last_state_struct** %1, align 8
  %33 = getelementptr inbounds %struct.fpsimd_last_state_struct, %struct.fpsimd_last_state_struct* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.fpsimd_last_state_struct*, %struct.fpsimd_last_state_struct** %1, align 8
  %37 = getelementptr inbounds %struct.fpsimd_last_state_struct, %struct.fpsimd_last_state_struct* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @sve_ffr_offset(i64 %38)
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %35, i64 %40
  %42 = load %struct.fpsimd_last_state_struct*, %struct.fpsimd_last_state_struct** %1, align 8
  %43 = getelementptr inbounds %struct.fpsimd_last_state_struct, %struct.fpsimd_last_state_struct* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @sve_save_state(i8* %41, i32* %45)
  br label %52

47:                                               ; preds = %14, %11
  %48 = load %struct.fpsimd_last_state_struct*, %struct.fpsimd_last_state_struct** %1, align 8
  %49 = getelementptr inbounds %struct.fpsimd_last_state_struct, %struct.fpsimd_last_state_struct* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = call i32 @fpsimd_save_state(%struct.TYPE_2__* %50)
  br label %52

52:                                               ; preds = %47, %31
  br label %53

53:                                               ; preds = %27, %52, %0
  ret void
}

declare dso_local %struct.fpsimd_last_state_struct* @this_cpu_ptr(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @have_cpu_fpsimd_context(...) #1

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i64 @system_supports_sve(...) #1

declare dso_local i64 @sve_get_vl(...) #1

declare dso_local i32 @force_signal_inject(i32, i32, i32) #1

declare dso_local i32 @sve_save_state(i8*, i32*) #1

declare dso_local i32 @sve_ffr_offset(i64) #1

declare dso_local i32 @fpsimd_save_state(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
