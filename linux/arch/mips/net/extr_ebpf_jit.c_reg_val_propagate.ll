; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/net/extr_ebpf_jit.c_reg_val_propagate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/net/extr_ebpf_jit.c_reg_val_propagate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32*, %struct.bpf_prog* }
%struct.bpf_prog = type { i32 }

@BPF_REG_1 = common dso_local global i32 0, align 4
@BPF_REG_5 = common dso_local global i32 0, align 4
@REG_64BIT = common dso_local global i32 0, align 4
@RVT_VISITED_MASK = common dso_local global i32 0, align 4
@RVT_DONE = common dso_local global i32 0, align 4
@RVT_FALL_THROUGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unexpected RVT_BRANCH_TAKEN case.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jit_ctx*)* @reg_val_propagate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_val_propagate(%struct.jit_ctx* %0) #0 {
  %2 = alloca %struct.jit_ctx*, align 8
  %3 = alloca %struct.bpf_prog*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.jit_ctx* %0, %struct.jit_ctx** %2, align 8
  %8 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %8, i32 0, i32 1
  %10 = load %struct.bpf_prog*, %struct.bpf_prog** %9, align 8
  store %struct.bpf_prog* %10, %struct.bpf_prog** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load i32, i32* @BPF_REG_1, align 4
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %20, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @BPF_REG_5, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @REG_64BIT, align 4
  %19 = call i32 @set_reg_val_type(i32* %4, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %12

23:                                               ; preds = %12
  %24 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @reg_val_propagate_range(%struct.jit_ctx* %24, i32 %25, i32 0, i32 0)
  br label %27

27:                                               ; preds = %76, %23
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %77, %27
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.bpf_prog*, %struct.bpf_prog** %3, align 8
  %31 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %80

34:                                               ; preds = %28
  %35 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %36 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @RVT_VISITED_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @RVT_DONE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %34
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @RVT_VISITED_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %34
  br label %77

53:                                               ; preds = %47
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @RVT_VISITED_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @RVT_FALL_THROUGH, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @RVT_VISITED_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @reg_val_propagate_range(%struct.jit_ctx* %60, i32 %64, i32 %65, i32 1)
  br label %76

67:                                               ; preds = %53
  %68 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @RVT_VISITED_MASK, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @reg_val_propagate_range(%struct.jit_ctx* %69, i32 %73, i32 %74, i32 0)
  br label %76

76:                                               ; preds = %67, %59
  br label %27

77:                                               ; preds = %52
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %28

80:                                               ; preds = %28
  ret i32 0
}

declare dso_local i32 @set_reg_val_type(i32*, i32, i32) #1

declare dso_local i32 @reg_val_propagate_range(%struct.jit_ctx*, i32, i32, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
