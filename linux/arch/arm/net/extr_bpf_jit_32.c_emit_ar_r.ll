; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_emit_ar_r.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_emit_ar_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32 }

@ARM_IP = common dso_local global i32 0, align 4
@ARM_LR = common dso_local global i32 0, align 4
@ARM_COND_EQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, %struct.jit_ctx*, i32, i32)* @emit_ar_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ar_r(i32 %0, i32 %1, i32 %2, i32 %3, %struct.jit_ctx* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.jit_ctx*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.jit_ctx* %4, %struct.jit_ctx** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* %13, align 4
  switch i32 %15, label %100 [
    i32 132, label %16
    i32 138, label %46
    i32 133, label %46
    i32 136, label %46
    i32 137, label %46
    i32 135, label %46
    i32 134, label %46
    i32 129, label %68
    i32 130, label %68
    i32 128, label %84
    i32 131, label %84
  ]

16:                                               ; preds = %7
  %17 = load i32, i32* %14, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %16
  %20 = load i32, i32* @ARM_IP, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @ARM_AND_R(i32 %20, i32 %21, i32 %22)
  %24 = load %struct.jit_ctx*, %struct.jit_ctx** %12, align 8
  %25 = call i32 @emit(i32 %23, %struct.jit_ctx* %24)
  %26 = load i32, i32* @ARM_LR, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @ARM_AND_R(i32 %26, i32 %27, i32 %28)
  %30 = load %struct.jit_ctx*, %struct.jit_ctx** %12, align 8
  %31 = call i32 @emit(i32 %29, %struct.jit_ctx* %30)
  %32 = load i32, i32* @ARM_IP, align 4
  %33 = load i32, i32* @ARM_LR, align 4
  %34 = load i32, i32* @ARM_IP, align 4
  %35 = call i32 @ARM_ORRS_R(i32 %32, i32 %33, i32 %34)
  %36 = load %struct.jit_ctx*, %struct.jit_ctx** %12, align 8
  %37 = call i32 @emit(i32 %35, %struct.jit_ctx* %36)
  br label %45

38:                                               ; preds = %16
  %39 = load i32, i32* @ARM_IP, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @ARM_ANDS_R(i32 %39, i32 %40, i32 %41)
  %43 = load %struct.jit_ctx*, %struct.jit_ctx** %12, align 8
  %44 = call i32 @emit(i32 %42, %struct.jit_ctx* %43)
  br label %45

45:                                               ; preds = %38, %19
  br label %100

46:                                               ; preds = %7, %7, %7, %7, %7, %7
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @ARM_CMP_R(i32 %50, i32 %51)
  %53 = load %struct.jit_ctx*, %struct.jit_ctx** %12, align 8
  %54 = call i32 @emit(i32 %52, %struct.jit_ctx* %53)
  %55 = load i32, i32* @ARM_COND_EQ, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @ARM_CMP_R(i32 %56, i32 %57)
  %59 = load %struct.jit_ctx*, %struct.jit_ctx** %12, align 8
  %60 = call i32 @_emit(i32 %55, i32 %58, %struct.jit_ctx* %59)
  br label %67

61:                                               ; preds = %46
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @ARM_CMP_R(i32 %62, i32 %63)
  %65 = load %struct.jit_ctx*, %struct.jit_ctx** %12, align 8
  %66 = call i32 @emit(i32 %64, %struct.jit_ctx* %65)
  br label %67

67:                                               ; preds = %61, %49
  br label %100

68:                                               ; preds = %7, %7
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @ARM_CMP_R(i32 %69, i32 %70)
  %72 = load %struct.jit_ctx*, %struct.jit_ctx** %12, align 8
  %73 = call i32 @emit(i32 %71, %struct.jit_ctx* %72)
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = load i32, i32* @ARM_IP, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @ARM_SBCS_R(i32 %77, i32 %78, i32 %79)
  %81 = load %struct.jit_ctx*, %struct.jit_ctx** %12, align 8
  %82 = call i32 @emit(i32 %80, %struct.jit_ctx* %81)
  br label %83

83:                                               ; preds = %76, %68
  br label %100

84:                                               ; preds = %7, %7
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @ARM_CMP_R(i32 %85, i32 %86)
  %88 = load %struct.jit_ctx*, %struct.jit_ctx** %12, align 8
  %89 = call i32 @emit(i32 %87, %struct.jit_ctx* %88)
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %84
  %93 = load i32, i32* @ARM_IP, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @ARM_SBCS_R(i32 %93, i32 %94, i32 %95)
  %97 = load %struct.jit_ctx*, %struct.jit_ctx** %12, align 8
  %98 = call i32 @emit(i32 %96, %struct.jit_ctx* %97)
  br label %99

99:                                               ; preds = %92, %84
  br label %100

100:                                              ; preds = %7, %99, %83, %67, %45
  ret void
}

declare dso_local i32 @emit(i32, %struct.jit_ctx*) #1

declare dso_local i32 @ARM_AND_R(i32, i32, i32) #1

declare dso_local i32 @ARM_ORRS_R(i32, i32, i32) #1

declare dso_local i32 @ARM_ANDS_R(i32, i32, i32) #1

declare dso_local i32 @ARM_CMP_R(i32, i32) #1

declare dso_local i32 @_emit(i32, i32, %struct.jit_ctx*) #1

declare dso_local i32 @ARM_SBCS_R(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
