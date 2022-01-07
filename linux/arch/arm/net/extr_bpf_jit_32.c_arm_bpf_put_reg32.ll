; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_arm_bpf_put_reg32.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_arm_bpf_put_reg32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32 }

@ARM_FP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct.jit_ctx*)* @arm_bpf_put_reg32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_bpf_put_reg32(i64 %0, i64 %1, %struct.jit_ctx* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.jit_ctx*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.jit_ctx* %2, %struct.jit_ctx** %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @is_stacked(i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load i64, i64* %5, align 8
  %12 = load i32, i32* @ARM_FP, align 4
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @EBPF_SCRATCH_TO_ARM_FP(i64 %13)
  %15 = call i32 @ARM_STR_I(i64 %11, i32 %12, i32 %14)
  %16 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %17 = call i32 @emit(i32 %15, %struct.jit_ctx* %16)
  br label %29

18:                                               ; preds = %3
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @ARM_MOV_R(i64 %23, i64 %24)
  %26 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %27 = call i32 @emit(i32 %25, %struct.jit_ctx* %26)
  br label %28

28:                                               ; preds = %22, %18
  br label %29

29:                                               ; preds = %28, %10
  ret void
}

declare dso_local i64 @is_stacked(i64) #1

declare dso_local i32 @emit(i32, %struct.jit_ctx*) #1

declare dso_local i32 @ARM_STR_I(i64, i32, i32) #1

declare dso_local i32 @EBPF_SCRATCH_TO_ARM_FP(i64) #1

declare dso_local i32 @ARM_MOV_R(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
