; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/net/extr_ebpf_jit.c_ebpf_to_mips_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/net/extr_ebpf_jit.c_ebpf_to_mips_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32 }
%struct.bpf_insn = type { i32, i32 }

@src_reg = common dso_local global i32 0, align 4
@src_reg_no_fp = common dso_local global i32 0, align 4
@MIPS_R_V0 = common dso_local global i32 0, align 4
@MIPS_R_A0 = common dso_local global i32 0, align 4
@MIPS_R_A1 = common dso_local global i32 0, align 4
@MIPS_R_A2 = common dso_local global i32 0, align 4
@MIPS_R_A3 = common dso_local global i32 0, align 4
@MIPS_R_A4 = common dso_local global i32 0, align 4
@EBPF_SAVE_S0 = common dso_local global i32 0, align 4
@MIPS_R_S0 = common dso_local global i32 0, align 4
@EBPF_SAVE_S1 = common dso_local global i32 0, align 4
@MIPS_R_S1 = common dso_local global i32 0, align 4
@EBPF_SAVE_S2 = common dso_local global i32 0, align 4
@MIPS_R_S2 = common dso_local global i32 0, align 4
@EBPF_SAVE_S3 = common dso_local global i32 0, align 4
@MIPS_R_S3 = common dso_local global i32 0, align 4
@dst_reg = common dso_local global i32 0, align 4
@EBPF_SEEN_FP = common dso_local global i32 0, align 4
@MIPS_R_ZERO = common dso_local global i32 0, align 4
@MIPS_R_T4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Illegal bpf reg: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jit_ctx*, %struct.bpf_insn*, i32)* @ebpf_to_mips_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebpf_to_mips_reg(%struct.jit_ctx* %0, %struct.bpf_insn* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.jit_ctx*, align 8
  %6 = alloca %struct.bpf_insn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.jit_ctx* %0, %struct.jit_ctx** %5, align 8
  store %struct.bpf_insn* %1, %struct.bpf_insn** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @src_reg, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @src_reg_no_fp, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12, %3
  %17 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %18 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  br label %24

20:                                               ; preds = %12
  %21 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %22 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %19, %16 ], [ %23, %20 ]
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %85 [
    i32 139, label %27
    i32 138, label %29
    i32 136, label %31
    i32 135, label %33
    i32 134, label %35
    i32 133, label %37
    i32 132, label %39
    i32 131, label %46
    i32 130, label %53
    i32 129, label %60
    i32 137, label %67
    i32 128, label %83
  ]

27:                                               ; preds = %24
  %28 = load i32, i32* @MIPS_R_V0, align 4
  store i32 %28, i32* %4, align 4
  br label %91

29:                                               ; preds = %24
  %30 = load i32, i32* @MIPS_R_A0, align 4
  store i32 %30, i32* %4, align 4
  br label %91

31:                                               ; preds = %24
  %32 = load i32, i32* @MIPS_R_A1, align 4
  store i32 %32, i32* %4, align 4
  br label %91

33:                                               ; preds = %24
  %34 = load i32, i32* @MIPS_R_A2, align 4
  store i32 %34, i32* %4, align 4
  br label %91

35:                                               ; preds = %24
  %36 = load i32, i32* @MIPS_R_A3, align 4
  store i32 %36, i32* %4, align 4
  br label %91

37:                                               ; preds = %24
  %38 = load i32, i32* @MIPS_R_A4, align 4
  store i32 %38, i32* %4, align 4
  br label %91

39:                                               ; preds = %24
  %40 = load i32, i32* @EBPF_SAVE_S0, align 4
  %41 = load %struct.jit_ctx*, %struct.jit_ctx** %5, align 8
  %42 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @MIPS_R_S0, align 4
  store i32 %45, i32* %4, align 4
  br label %91

46:                                               ; preds = %24
  %47 = load i32, i32* @EBPF_SAVE_S1, align 4
  %48 = load %struct.jit_ctx*, %struct.jit_ctx** %5, align 8
  %49 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* @MIPS_R_S1, align 4
  store i32 %52, i32* %4, align 4
  br label %91

53:                                               ; preds = %24
  %54 = load i32, i32* @EBPF_SAVE_S2, align 4
  %55 = load %struct.jit_ctx*, %struct.jit_ctx** %5, align 8
  %56 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* @MIPS_R_S2, align 4
  store i32 %59, i32* %4, align 4
  br label %91

60:                                               ; preds = %24
  %61 = load i32, i32* @EBPF_SAVE_S3, align 4
  %62 = load %struct.jit_ctx*, %struct.jit_ctx** %5, align 8
  %63 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @MIPS_R_S3, align 4
  store i32 %66, i32* %4, align 4
  br label %91

67:                                               ; preds = %24
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @dst_reg, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @src_reg_no_fp, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71, %67
  br label %86

76:                                               ; preds = %71
  %77 = load i32, i32* @EBPF_SEEN_FP, align 4
  %78 = load %struct.jit_ctx*, %struct.jit_ctx** %5, align 8
  %79 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* @MIPS_R_ZERO, align 4
  store i32 %82, i32* %4, align 4
  br label %91

83:                                               ; preds = %24
  %84 = load i32, i32* @MIPS_R_T4, align 4
  store i32 %84, i32* %4, align 4
  br label %91

85:                                               ; preds = %24
  br label %86

86:                                               ; preds = %85, %75
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %86, %83, %76, %60, %53, %46, %39, %37, %35, %33, %31, %29, %27
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
