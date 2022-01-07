; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/net/extr_bpf_jit_comp.c_emit_imm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/net/extr_bpf_jit_comp.c_emit_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rv_jit_context = type { i32 }

@RV_REG_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.rv_jit_context*)* @emit_imm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_imm(i32 %0, i32 %1, %struct.rv_jit_context* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rv_jit_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.rv_jit_context* %2, %struct.rv_jit_context** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %10, 2048
  %12 = ashr i32 %11, 12
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 4095
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @is_32b_int(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @rv_lui(i32 %22, i32 %23)
  %25 = load %struct.rv_jit_context*, %struct.rv_jit_context** %6, align 8
  %26 = call i32 @emit(i32 %24, %struct.rv_jit_context* %25)
  br label %27

27:                                               ; preds = %21, %18
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @RV_REG_ZERO, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @rv_addi(i32 %31, i32 %32, i32 %33)
  %35 = load %struct.rv_jit_context*, %struct.rv_jit_context** %6, align 8
  %36 = call i32 @emit(i32 %34, %struct.rv_jit_context* %35)
  br label %70

37:                                               ; preds = %27
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @rv_addiw(i32 %38, i32 %39, i32 %40)
  %42 = load %struct.rv_jit_context*, %struct.rv_jit_context** %6, align 8
  %43 = call i32 @emit(i32 %41, %struct.rv_jit_context* %42)
  br label %70

44:                                               ; preds = %3
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @__ffs(i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %7, align 4
  %49 = ashr i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 12
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.rv_jit_context*, %struct.rv_jit_context** %6, align 8
  call void @emit_imm(i32 %52, i32 %53, %struct.rv_jit_context* %54)
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @rv_slli(i32 %55, i32 %56, i32 %57)
  %59 = load %struct.rv_jit_context*, %struct.rv_jit_context** %6, align 8
  %60 = call i32 @emit(i32 %58, %struct.rv_jit_context* %59)
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %44
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @rv_addi(i32 %64, i32 %65, i32 %66)
  %68 = load %struct.rv_jit_context*, %struct.rv_jit_context** %6, align 8
  %69 = call i32 @emit(i32 %67, %struct.rv_jit_context* %68)
  br label %70

70:                                               ; preds = %30, %37, %63, %44
  ret void
}

declare dso_local i64 @is_32b_int(i32) #1

declare dso_local i32 @emit(i32, %struct.rv_jit_context*) #1

declare dso_local i32 @rv_lui(i32, i32) #1

declare dso_local i32 @rv_addi(i32, i32, i32) #1

declare dso_local i32 @rv_addiw(i32, i32, i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @rv_slli(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
