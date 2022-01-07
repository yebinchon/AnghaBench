; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/fpu/extr_signal.c_sanitize_restored_xstate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/fpu/extr_signal.c_sanitize_restored_xstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.fpregs_state = type { %struct.xregs_state }
%struct.xregs_state = type { %struct.TYPE_2__, %struct.xstate_header }
%struct.TYPE_2__ = type { i32 }
%struct.xstate_header = type { i32 }
%struct.user_i387_ia32_struct = type { i32 }

@XFEATURE_MASK_FPSSE = common dso_local global i32 0, align 4
@mxcsr_feature_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.fpregs_state*, %struct.user_i387_ia32_struct*, i32, i32)* @sanitize_restored_xstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sanitize_restored_xstate(%union.fpregs_state* %0, %struct.user_i387_ia32_struct* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %union.fpregs_state*, align 8
  %6 = alloca %struct.user_i387_ia32_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xregs_state*, align 8
  %10 = alloca %struct.xstate_header*, align 8
  store %union.fpregs_state* %0, %union.fpregs_state** %5, align 8
  store %struct.user_i387_ia32_struct* %1, %struct.user_i387_ia32_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %union.fpregs_state*, %union.fpregs_state** %5, align 8
  %12 = bitcast %union.fpregs_state* %11 to %struct.xregs_state*
  store %struct.xregs_state* %12, %struct.xregs_state** %9, align 8
  %13 = load %struct.xregs_state*, %struct.xregs_state** %9, align 8
  %14 = getelementptr inbounds %struct.xregs_state, %struct.xregs_state* %13, i32 0, i32 1
  store %struct.xstate_header* %14, %struct.xstate_header** %10, align 8
  %15 = call i64 (...) @use_xsave()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* @XFEATURE_MASK_FPSSE, align 4
  %22 = load %struct.xstate_header*, %struct.xstate_header** %10, align 8
  %23 = getelementptr inbounds %struct.xstate_header, %struct.xstate_header* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %30

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.xstate_header*, %struct.xstate_header** %10, align 8
  %27 = getelementptr inbounds %struct.xstate_header, %struct.xstate_header* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %24, %20
  br label %31

31:                                               ; preds = %30, %4
  %32 = call i64 (...) @use_fxsr()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = load i32, i32* @mxcsr_feature_mask, align 4
  %36 = load %struct.xregs_state*, %struct.xregs_state** %9, align 8
  %37 = getelementptr inbounds %struct.xregs_state, %struct.xregs_state* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %35
  store i32 %40, i32* %38, align 4
  %41 = load %struct.user_i387_ia32_struct*, %struct.user_i387_ia32_struct** %6, align 8
  %42 = icmp ne %struct.user_i387_ia32_struct* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load %union.fpregs_state*, %union.fpregs_state** %5, align 8
  %45 = bitcast %union.fpregs_state* %44 to i32*
  %46 = load %struct.user_i387_ia32_struct*, %struct.user_i387_ia32_struct** %6, align 8
  %47 = call i32 @convert_to_fxsr(i32* %45, %struct.user_i387_ia32_struct* %46)
  br label %48

48:                                               ; preds = %43, %34
  br label %49

49:                                               ; preds = %48, %31
  ret void
}

declare dso_local i64 @use_xsave(...) #1

declare dso_local i64 @use_fxsr(...) #1

declare dso_local i32 @convert_to_fxsr(i32*, %struct.user_i387_ia32_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
