; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/net/extr_bpf_jit_comp.c_bpf_jit_prologue.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/net/extr_bpf_jit_comp.c_bpf_jit_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_jit = type { i32, i32, i32, i32 }

@SEEN_TAIL_CALL = common dso_local global i32 0, align 4
@STK_OFF_TCCNT = common dso_local global i32 0, align 4
@REGS_SAVE = common dso_local global i32 0, align 4
@SEEN_LITERAL = common dso_local global i32 0, align 4
@REG_L = common dso_local global i32 0, align 4
@REG_0 = common dso_local global i32 0, align 4
@SEEN_STACK = common dso_local global i32 0, align 4
@SEEN_FUNC = common dso_local global i32 0, align 4
@REG_W1 = common dso_local global i32 0, align 4
@REG_15 = common dso_local global i32 0, align 4
@BPF_REG_FP = common dso_local global i32 0, align 4
@STK_160_UNUSED = common dso_local global i32 0, align 4
@STK_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_jit*, i32)* @bpf_jit_prologue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_jit_prologue(%struct.bpf_jit* %0, i32 %1) #0 {
  %3 = alloca %struct.bpf_jit*, align 8
  %4 = alloca i32, align 4
  store %struct.bpf_jit* %0, %struct.bpf_jit** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bpf_jit*, %struct.bpf_jit** %3, align 8
  %6 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SEEN_TAIL_CALL, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* @STK_OFF_TCCNT, align 4
  %13 = or i32 -687607808, %12
  %14 = load i32, i32* @STK_OFF_TCCNT, align 4
  %15 = or i32 61440, %14
  %16 = call i32 @_EMIT6(i32 %13, i32 %15)
  br label %20

17:                                               ; preds = %2
  %18 = call i32 @EMIT4_PCREL(i32 -1477181440, i32 6)
  %19 = call i32 @_EMIT2(i32 0)
  br label %20

20:                                               ; preds = %17, %11
  %21 = load %struct.bpf_jit*, %struct.bpf_jit** %3, align 8
  %22 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bpf_jit*, %struct.bpf_jit** %3, align 8
  %25 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.bpf_jit*, %struct.bpf_jit** %3, align 8
  %27 = load i32, i32* @REGS_SAVE, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @save_restore_regs(%struct.bpf_jit* %26, i32 %27, i32 %28)
  %30 = load %struct.bpf_jit*, %struct.bpf_jit** %3, align 8
  %31 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SEEN_LITERAL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %20
  %37 = load i32, i32* @REG_L, align 4
  %38 = load i32, i32* @REG_0, align 4
  %39 = call i32 @EMIT2(i32 3328, i32 %37, i32 %38)
  %40 = load %struct.bpf_jit*, %struct.bpf_jit** %3, align 8
  %41 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bpf_jit*, %struct.bpf_jit** %3, align 8
  %44 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %36, %20
  %46 = load %struct.bpf_jit*, %struct.bpf_jit** %3, align 8
  %47 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SEEN_STACK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %86

52:                                               ; preds = %45
  %53 = load %struct.bpf_jit*, %struct.bpf_jit** %3, align 8
  %54 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SEEN_FUNC, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i32, i32* @REG_W1, align 4
  %61 = load i32, i32* @REG_15, align 4
  %62 = call i32 @EMIT4(i32 -1190920192, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %52
  %64 = load i32, i32* @BPF_REG_FP, align 4
  %65 = load i32, i32* @REG_15, align 4
  %66 = load i32, i32* @STK_160_UNUSED, align 4
  %67 = call i32 @EMIT4_DISP(i32 1090519040, i32 %64, i32 %65, i32 %66)
  %68 = load i32, i32* @REG_15, align 4
  %69 = load i32, i32* @STK_OFF, align 4
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %69, %70
  %72 = sub nsw i32 0, %71
  %73 = call i32 @EMIT4_IMM(i32 -1492451328, i32 %68, i32 %72)
  %74 = load %struct.bpf_jit*, %struct.bpf_jit** %3, align 8
  %75 = getelementptr inbounds %struct.bpf_jit, %struct.bpf_jit* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SEEN_FUNC, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %63
  %81 = load i32, i32* @REG_W1, align 4
  %82 = load i32, i32* @REG_0, align 4
  %83 = load i32, i32* @REG_15, align 4
  %84 = call i32 @EMIT6_DISP_LH(i32 -486539264, i32 36, i32 %81, i32 %82, i32 %83, i32 152)
  br label %85

85:                                               ; preds = %80, %63
  br label %86

86:                                               ; preds = %85, %45
  ret void
}

declare dso_local i32 @_EMIT6(i32, i32) #1

declare dso_local i32 @EMIT4_PCREL(i32, i32) #1

declare dso_local i32 @_EMIT2(i32) #1

declare dso_local i32 @save_restore_regs(%struct.bpf_jit*, i32, i32) #1

declare dso_local i32 @EMIT2(i32, i32, i32) #1

declare dso_local i32 @EMIT4(i32, i32, i32) #1

declare dso_local i32 @EMIT4_DISP(i32, i32, i32, i32) #1

declare dso_local i32 @EMIT4_IMM(i32, i32, i32) #1

declare dso_local i32 @EMIT6_DISP_LH(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
