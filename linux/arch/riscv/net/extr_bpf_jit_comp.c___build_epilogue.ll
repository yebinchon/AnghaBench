; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/net/extr_bpf_jit_comp.c___build_epilogue.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/net/extr_bpf_jit_comp.c___build_epilogue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rv_jit_context = type { i32 }

@RV_REG_RA = common dso_local global i32 0, align 4
@RV_REG_SP = common dso_local global i32 0, align 4
@RV_REG_FP = common dso_local global i32 0, align 4
@RV_REG_S1 = common dso_local global i32 0, align 4
@RV_REG_S2 = common dso_local global i32 0, align 4
@RV_REG_S3 = common dso_local global i32 0, align 4
@RV_REG_S4 = common dso_local global i32 0, align 4
@RV_REG_S5 = common dso_local global i32 0, align 4
@RV_REG_S6 = common dso_local global i32 0, align 4
@RV_REG_A0 = common dso_local global i32 0, align 4
@RV_REG_A5 = common dso_local global i32 0, align 4
@RV_REG_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.rv_jit_context*)* @__build_epilogue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__build_epilogue(i32 %0, %struct.rv_jit_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rv_jit_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.rv_jit_context* %1, %struct.rv_jit_context** %4, align 8
  %7 = load %struct.rv_jit_context*, %struct.rv_jit_context** %4, align 8
  %8 = getelementptr inbounds %struct.rv_jit_context, %struct.rv_jit_context* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sub nsw i32 %10, 8
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @RV_REG_RA, align 4
  %13 = load %struct.rv_jit_context*, %struct.rv_jit_context** %4, align 8
  %14 = call i64 @seen_reg(i32 %12, %struct.rv_jit_context* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load i32, i32* @RV_REG_RA, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @RV_REG_SP, align 4
  %20 = call i32 @rv_ld(i32 %17, i32 %18, i32 %19)
  %21 = load %struct.rv_jit_context*, %struct.rv_jit_context** %4, align 8
  %22 = call i32 @emit(i32 %20, %struct.rv_jit_context* %21)
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %23, 8
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %16, %2
  %26 = load i32, i32* @RV_REG_FP, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @RV_REG_SP, align 4
  %29 = call i32 @rv_ld(i32 %26, i32 %27, i32 %28)
  %30 = load %struct.rv_jit_context*, %struct.rv_jit_context** %4, align 8
  %31 = call i32 @emit(i32 %29, %struct.rv_jit_context* %30)
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 8
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @RV_REG_S1, align 4
  %35 = load %struct.rv_jit_context*, %struct.rv_jit_context** %4, align 8
  %36 = call i64 @seen_reg(i32 %34, %struct.rv_jit_context* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %25
  %39 = load i32, i32* @RV_REG_S1, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @RV_REG_SP, align 4
  %42 = call i32 @rv_ld(i32 %39, i32 %40, i32 %41)
  %43 = load %struct.rv_jit_context*, %struct.rv_jit_context** %4, align 8
  %44 = call i32 @emit(i32 %42, %struct.rv_jit_context* %43)
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %45, 8
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %38, %25
  %48 = load i32, i32* @RV_REG_S2, align 4
  %49 = load %struct.rv_jit_context*, %struct.rv_jit_context** %4, align 8
  %50 = call i64 @seen_reg(i32 %48, %struct.rv_jit_context* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load i32, i32* @RV_REG_S2, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @RV_REG_SP, align 4
  %56 = call i32 @rv_ld(i32 %53, i32 %54, i32 %55)
  %57 = load %struct.rv_jit_context*, %struct.rv_jit_context** %4, align 8
  %58 = call i32 @emit(i32 %56, %struct.rv_jit_context* %57)
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, 8
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %52, %47
  %62 = load i32, i32* @RV_REG_S3, align 4
  %63 = load %struct.rv_jit_context*, %struct.rv_jit_context** %4, align 8
  %64 = call i64 @seen_reg(i32 %62, %struct.rv_jit_context* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load i32, i32* @RV_REG_S3, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @RV_REG_SP, align 4
  %70 = call i32 @rv_ld(i32 %67, i32 %68, i32 %69)
  %71 = load %struct.rv_jit_context*, %struct.rv_jit_context** %4, align 8
  %72 = call i32 @emit(i32 %70, %struct.rv_jit_context* %71)
  %73 = load i32, i32* %6, align 4
  %74 = sub nsw i32 %73, 8
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %66, %61
  %76 = load i32, i32* @RV_REG_S4, align 4
  %77 = load %struct.rv_jit_context*, %struct.rv_jit_context** %4, align 8
  %78 = call i64 @seen_reg(i32 %76, %struct.rv_jit_context* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load i32, i32* @RV_REG_S4, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @RV_REG_SP, align 4
  %84 = call i32 @rv_ld(i32 %81, i32 %82, i32 %83)
  %85 = load %struct.rv_jit_context*, %struct.rv_jit_context** %4, align 8
  %86 = call i32 @emit(i32 %84, %struct.rv_jit_context* %85)
  %87 = load i32, i32* %6, align 4
  %88 = sub nsw i32 %87, 8
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %80, %75
  %90 = load i32, i32* @RV_REG_S5, align 4
  %91 = load %struct.rv_jit_context*, %struct.rv_jit_context** %4, align 8
  %92 = call i64 @seen_reg(i32 %90, %struct.rv_jit_context* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %89
  %95 = load i32, i32* @RV_REG_S5, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @RV_REG_SP, align 4
  %98 = call i32 @rv_ld(i32 %95, i32 %96, i32 %97)
  %99 = load %struct.rv_jit_context*, %struct.rv_jit_context** %4, align 8
  %100 = call i32 @emit(i32 %98, %struct.rv_jit_context* %99)
  %101 = load i32, i32* %6, align 4
  %102 = sub nsw i32 %101, 8
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %94, %89
  %104 = load i32, i32* @RV_REG_S6, align 4
  %105 = load %struct.rv_jit_context*, %struct.rv_jit_context** %4, align 8
  %106 = call i64 @seen_reg(i32 %104, %struct.rv_jit_context* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %103
  %109 = load i32, i32* @RV_REG_S6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @RV_REG_SP, align 4
  %112 = call i32 @rv_ld(i32 %109, i32 %110, i32 %111)
  %113 = load %struct.rv_jit_context*, %struct.rv_jit_context** %4, align 8
  %114 = call i32 @emit(i32 %112, %struct.rv_jit_context* %113)
  %115 = load i32, i32* %6, align 4
  %116 = sub nsw i32 %115, 8
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %108, %103
  %118 = load i32, i32* @RV_REG_SP, align 4
  %119 = load i32, i32* @RV_REG_SP, align 4
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @rv_addi(i32 %118, i32 %119, i32 %120)
  %122 = load %struct.rv_jit_context*, %struct.rv_jit_context** %4, align 8
  %123 = call i32 @emit(i32 %121, %struct.rv_jit_context* %122)
  %124 = load i32, i32* @RV_REG_A0, align 4
  %125 = load i32, i32* @RV_REG_A5, align 4
  %126 = call i32 @rv_addi(i32 %124, i32 %125, i32 0)
  %127 = load %struct.rv_jit_context*, %struct.rv_jit_context** %4, align 8
  %128 = call i32 @emit(i32 %126, %struct.rv_jit_context* %127)
  %129 = load i32, i32* @RV_REG_ZERO, align 4
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @rv_jalr(i32 %129, i32 %130, i32 0)
  %132 = load %struct.rv_jit_context*, %struct.rv_jit_context** %4, align 8
  %133 = call i32 @emit(i32 %131, %struct.rv_jit_context* %132)
  ret void
}

declare dso_local i64 @seen_reg(i32, %struct.rv_jit_context*) #1

declare dso_local i32 @emit(i32, %struct.rv_jit_context*) #1

declare dso_local i32 @rv_ld(i32, i32, i32) #1

declare dso_local i32 @rv_addi(i32, i32, i32) #1

declare dso_local i32 @rv_jalr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
