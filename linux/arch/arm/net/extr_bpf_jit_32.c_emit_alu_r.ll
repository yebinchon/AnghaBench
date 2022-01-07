; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_emit_alu_r.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_emit_alu_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32 }

@SRTYPE_ASR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, %struct.jit_ctx*)* @emit_alu_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_alu_r(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.jit_ctx* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.jit_ctx*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.jit_ctx* %5, %struct.jit_ctx** %12, align 8
  %13 = load i32, i32* %11, align 4
  %14 = call i32 @BPF_OP(i32 %13)
  switch i32 %14, label %79 [
    i32 136, label %15
    i32 129, label %22
    i32 131, label %29
    i32 135, label %36
    i32 128, label %43
    i32 132, label %50
    i32 133, label %57
    i32 130, label %64
    i32 134, label %71
  ]

15:                                               ; preds = %6
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.jit_ctx*, %struct.jit_ctx** %12, align 8
  %21 = call i32 @emit_a32_add_r(i32 %16, i32 %17, i32 %18, i32 %19, %struct.jit_ctx* %20)
  br label %79

22:                                               ; preds = %6
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.jit_ctx*, %struct.jit_ctx** %12, align 8
  %28 = call i32 @emit_a32_sub_r(i32 %23, i32 %24, i32 %25, i32 %26, %struct.jit_ctx* %27)
  br label %79

29:                                               ; preds = %6
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @ARM_ORR_R(i32 %30, i32 %31, i32 %32)
  %34 = load %struct.jit_ctx*, %struct.jit_ctx** %12, align 8
  %35 = call i32 @emit(i32 %33, %struct.jit_ctx* %34)
  br label %79

36:                                               ; preds = %6
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @ARM_AND_R(i32 %37, i32 %38, i32 %39)
  %41 = load %struct.jit_ctx*, %struct.jit_ctx** %12, align 8
  %42 = call i32 @emit(i32 %40, %struct.jit_ctx* %41)
  br label %79

43:                                               ; preds = %6
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @ARM_EOR_R(i32 %44, i32 %45, i32 %46)
  %48 = load %struct.jit_ctx*, %struct.jit_ctx** %12, align 8
  %49 = call i32 @emit(i32 %47, %struct.jit_ctx* %48)
  br label %79

50:                                               ; preds = %6
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @ARM_MUL(i32 %51, i32 %52, i32 %53)
  %55 = load %struct.jit_ctx*, %struct.jit_ctx** %12, align 8
  %56 = call i32 @emit(i32 %54, %struct.jit_ctx* %55)
  br label %79

57:                                               ; preds = %6
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @ARM_LSL_R(i32 %58, i32 %59, i32 %60)
  %62 = load %struct.jit_ctx*, %struct.jit_ctx** %12, align 8
  %63 = call i32 @emit(i32 %61, %struct.jit_ctx* %62)
  br label %79

64:                                               ; preds = %6
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @ARM_LSR_R(i32 %65, i32 %66, i32 %67)
  %69 = load %struct.jit_ctx*, %struct.jit_ctx** %12, align 8
  %70 = call i32 @emit(i32 %68, %struct.jit_ctx* %69)
  br label %79

71:                                               ; preds = %6
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @SRTYPE_ASR, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @ARM_MOV_SR(i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.jit_ctx*, %struct.jit_ctx** %12, align 8
  %78 = call i32 @emit(i32 %76, %struct.jit_ctx* %77)
  br label %79

79:                                               ; preds = %6, %71, %64, %57, %50, %43, %36, %29, %22, %15
  ret void
}

declare dso_local i32 @BPF_OP(i32) #1

declare dso_local i32 @emit_a32_add_r(i32, i32, i32, i32, %struct.jit_ctx*) #1

declare dso_local i32 @emit_a32_sub_r(i32, i32, i32, i32, %struct.jit_ctx*) #1

declare dso_local i32 @emit(i32, %struct.jit_ctx*) #1

declare dso_local i32 @ARM_ORR_R(i32, i32, i32) #1

declare dso_local i32 @ARM_AND_R(i32, i32, i32) #1

declare dso_local i32 @ARM_EOR_R(i32, i32, i32) #1

declare dso_local i32 @ARM_MUL(i32, i32, i32) #1

declare dso_local i32 @ARM_LSL_R(i32, i32, i32) #1

declare dso_local i32 @ARM_LSR_R(i32, i32, i32) #1

declare dso_local i32 @ARM_MOV_SR(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
