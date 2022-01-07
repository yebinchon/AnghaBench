; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_arm_bpf_put_reg64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_arm_bpf_put_reg64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i64 }

@__LINUX_ARM_ARCH__ = common dso_local global i32 0, align 4
@CPU_ARCH_ARMv5TE = common dso_local global i64 0, align 8
@ARM_FP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, %struct.jit_ctx*)* @arm_bpf_put_reg64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_bpf_put_reg64(i64* %0, i64* %1, %struct.jit_ctx* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.jit_ctx*, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.jit_ctx* %2, %struct.jit_ctx** %6, align 8
  %7 = load i64*, i64** %4, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 1
  %9 = load i64, i64* %8, align 8
  %10 = call i64 @is_stacked(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %57

12:                                               ; preds = %3
  %13 = load i32, i32* @__LINUX_ARM_ARCH__, align 4
  %14 = icmp sge i32 %13, 6
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %17 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CPU_ARCH_ARMv5TE, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %15, %12
  %22 = load i64*, i64** %5, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @ARM_FP, align 4
  %26 = load i64*, i64** %4, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @EBPF_SCRATCH_TO_ARM_FP(i64 %28)
  %30 = call i32 @ARM_STRD_I(i64 %24, i32 %25, i32 %29)
  %31 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %32 = call i32 @emit(i32 %30, %struct.jit_ctx* %31)
  br label %56

33:                                               ; preds = %15
  %34 = load i64*, i64** %5, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @ARM_FP, align 4
  %38 = load i64*, i64** %4, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @EBPF_SCRATCH_TO_ARM_FP(i64 %40)
  %42 = call i32 @ARM_STR_I(i64 %36, i32 %37, i32 %41)
  %43 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %44 = call i32 @emit(i32 %42, %struct.jit_ctx* %43)
  %45 = load i64*, i64** %5, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @ARM_FP, align 4
  %49 = load i64*, i64** %4, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @EBPF_SCRATCH_TO_ARM_FP(i64 %51)
  %53 = call i32 @ARM_STR_I(i64 %47, i32 %48, i32 %52)
  %54 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %55 = call i32 @emit(i32 %53, %struct.jit_ctx* %54)
  br label %56

56:                                               ; preds = %33, %21
  br label %94

57:                                               ; preds = %3
  %58 = load i64*, i64** %4, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %5, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %60, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %57
  %66 = load i64*, i64** %4, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %5, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @ARM_MOV_R(i64 %68, i64 %71)
  %73 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %74 = call i32 @emit(i32 %72, %struct.jit_ctx* %73)
  br label %75

75:                                               ; preds = %65, %57
  %76 = load i64*, i64** %4, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** %5, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %78, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %75
  %84 = load i64*, i64** %4, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64*, i64** %5, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @ARM_MOV_R(i64 %86, i64 %89)
  %91 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %92 = call i32 @emit(i32 %90, %struct.jit_ctx* %91)
  br label %93

93:                                               ; preds = %83, %75
  br label %94

94:                                               ; preds = %93, %56
  ret void
}

declare dso_local i64 @is_stacked(i64) #1

declare dso_local i32 @emit(i32, %struct.jit_ctx*) #1

declare dso_local i32 @ARM_STRD_I(i64, i32, i32) #1

declare dso_local i32 @EBPF_SCRATCH_TO_ARM_FP(i64) #1

declare dso_local i32 @ARM_STR_I(i64, i32, i32) #1

declare dso_local i32 @ARM_MOV_R(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
