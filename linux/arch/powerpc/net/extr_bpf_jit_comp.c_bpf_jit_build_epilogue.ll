; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/net/extr_bpf_jit_comp.c_bpf_jit_build_epilogue.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/net/extr_bpf_jit_comp.c_bpf_jit_build_epilogue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codegen_context = type { i32 }

@SEEN_MEM = common dso_local global i32 0, align 4
@SEEN_DATAREF = common dso_local global i32 0, align 4
@BPF_PPC_STACKFRAME = common dso_local global i32 0, align 4
@PPC_LR_STKOFF = common dso_local global i32 0, align 4
@r_D = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@r_HL = common dso_local global i32 0, align 4
@r_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.codegen_context*)* @bpf_jit_build_epilogue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_jit_build_epilogue(i32* %0, %struct.codegen_context* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.codegen_context*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.codegen_context* %1, %struct.codegen_context** %4, align 8
  %6 = load %struct.codegen_context*, %struct.codegen_context** %4, align 8
  %7 = getelementptr inbounds %struct.codegen_context, %struct.codegen_context* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SEEN_MEM, align 4
  %10 = load i32, i32* @SEEN_DATAREF, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %79

14:                                               ; preds = %2
  %15 = load i32, i32* @BPF_PPC_STACKFRAME, align 4
  %16 = call i32 @PPC_ADDI(i32 1, i32 1, i32 %15)
  %17 = load %struct.codegen_context*, %struct.codegen_context** %4, align 8
  %18 = getelementptr inbounds %struct.codegen_context, %struct.codegen_context* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SEEN_DATAREF, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %14
  %24 = load i32, i32* @PPC_LR_STKOFF, align 4
  %25 = call i32 @PPC_BPF_LL(i32 0, i32 1, i32 %24)
  %26 = call i32 @PPC_MTLR(i32 0)
  %27 = load i32, i32* @r_D, align 4
  %28 = load i32, i32* @REG_SZ, align 4
  %29 = load i32, i32* @r_D, align 4
  %30 = sub nsw i32 32, %29
  %31 = mul nsw i32 %28, %30
  %32 = sub nsw i32 0, %31
  %33 = call i32 @PPC_BPF_LL(i32 %27, i32 1, i32 %32)
  %34 = load i32, i32* @r_HL, align 4
  %35 = load i32, i32* @REG_SZ, align 4
  %36 = load i32, i32* @r_HL, align 4
  %37 = sub nsw i32 32, %36
  %38 = mul nsw i32 %35, %37
  %39 = sub nsw i32 0, %38
  %40 = call i32 @PPC_BPF_LL(i32 %34, i32 1, i32 %39)
  br label %41

41:                                               ; preds = %23, %14
  %42 = load %struct.codegen_context*, %struct.codegen_context** %4, align 8
  %43 = getelementptr inbounds %struct.codegen_context, %struct.codegen_context* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SEEN_MEM, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %41
  %49 = load i32, i32* @r_M, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %74, %48
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @r_M, align 4
  %53 = add nsw i32 %52, 16
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %50
  %56 = load %struct.codegen_context*, %struct.codegen_context** %4, align 8
  %57 = getelementptr inbounds %struct.codegen_context, %struct.codegen_context* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @r_M, align 4
  %61 = sub nsw i32 %59, %60
  %62 = shl i32 1, %61
  %63 = and i32 %58, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %55
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @REG_SZ, align 4
  %68 = load i32, i32* %5, align 4
  %69 = sub nsw i32 32, %68
  %70 = mul nsw i32 %67, %69
  %71 = sub nsw i32 0, %70
  %72 = call i32 @PPC_BPF_LL(i32 %66, i32 1, i32 %71)
  br label %73

73:                                               ; preds = %65, %55
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %50

77:                                               ; preds = %50
  br label %78

78:                                               ; preds = %77, %41
  br label %79

79:                                               ; preds = %78, %2
  %80 = call i32 (...) @PPC_BLR()
  ret void
}

declare dso_local i32 @PPC_ADDI(i32, i32, i32) #1

declare dso_local i32 @PPC_BPF_LL(i32, i32, i32) #1

declare dso_local i32 @PPC_MTLR(i32) #1

declare dso_local i32 @PPC_BLR(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
