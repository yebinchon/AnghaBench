; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_emit_udivmod.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_emit_udivmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32 }

@bpf2a32 = common dso_local global i64** null, align 8
@TMP_REG_1 = common dso_local global i64 0, align 8
@ARM_R1 = common dso_local global i64 0, align 8
@ARM_R0 = common dso_local global i64 0, align 8
@ARM_IP = common dso_local global i64 0, align 8
@BPF_DIV = common dso_local global i64 0, align 8
@jit_udiv32 = common dso_local global i64 0, align 8
@jit_mod32 = common dso_local global i64 0, align 8
@HWCAP_IDIVA = common dso_local global i32 0, align 4
@elf_hwcap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, %struct.jit_ctx*, i64)* @emit_udivmod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_udivmod(i64 %0, i64 %1, i64 %2, %struct.jit_ctx* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.jit_ctx*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.jit_ctx* %3, %struct.jit_ctx** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i64**, i64*** @bpf2a32, align 8
  %13 = load i64, i64* @TMP_REG_1, align 8
  %14 = getelementptr inbounds i64*, i64** %12, i64 %13
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %11, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @ARM_R1, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %5
  %20 = load i64*, i64** %11, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ARM_R1, align 8
  %24 = call i32 @ARM_MOV_R(i64 %22, i64 %23)
  %25 = load %struct.jit_ctx*, %struct.jit_ctx** %9, align 8
  %26 = call i32 @emit(i32 %24, %struct.jit_ctx* %25)
  %27 = load i64, i64* @ARM_R1, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @ARM_MOV_R(i64 %27, i64 %28)
  %30 = load %struct.jit_ctx*, %struct.jit_ctx** %9, align 8
  %31 = call i32 @emit(i32 %29, %struct.jit_ctx* %30)
  br label %32

32:                                               ; preds = %19, %5
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @ARM_R0, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load i64*, i64** %11, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ARM_R0, align 8
  %41 = call i32 @ARM_MOV_R(i64 %39, i64 %40)
  %42 = load %struct.jit_ctx*, %struct.jit_ctx** %9, align 8
  %43 = call i32 @emit(i32 %41, %struct.jit_ctx* %42)
  %44 = load i64, i64* @ARM_R0, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @ARM_MOV_R(i64 %44, i64 %45)
  %47 = load %struct.jit_ctx*, %struct.jit_ctx** %9, align 8
  %48 = call i32 @emit(i32 %46, %struct.jit_ctx* %47)
  br label %49

49:                                               ; preds = %36, %32
  %50 = load i64, i64* @ARM_IP, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* @BPF_DIV, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i64, i64* @jit_udiv32, align 8
  %56 = trunc i64 %55 to i32
  br label %60

57:                                               ; preds = %49
  %58 = load i64, i64* @jit_mod32, align 8
  %59 = trunc i64 %58 to i32
  br label %60

60:                                               ; preds = %57, %54
  %61 = phi i32 [ %56, %54 ], [ %59, %57 ]
  %62 = load %struct.jit_ctx*, %struct.jit_ctx** %9, align 8
  %63 = call i32 @emit_mov_i(i64 %50, i32 %61, %struct.jit_ctx* %62)
  %64 = load i64, i64* @ARM_IP, align 8
  %65 = load %struct.jit_ctx*, %struct.jit_ctx** %9, align 8
  %66 = call i32 @emit_blx_r(i64 %64, %struct.jit_ctx* %65)
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* @ARM_R0, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %60
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @ARM_R0, align 8
  %73 = call i32 @ARM_MOV_R(i64 %71, i64 %72)
  %74 = load %struct.jit_ctx*, %struct.jit_ctx** %9, align 8
  %75 = call i32 @emit(i32 %73, %struct.jit_ctx* %74)
  br label %76

76:                                               ; preds = %70, %60
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* @ARM_R1, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load i64, i64* @ARM_R1, align 8
  %82 = load i64*, i64** %11, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @ARM_MOV_R(i64 %81, i64 %84)
  %86 = load %struct.jit_ctx*, %struct.jit_ctx** %9, align 8
  %87 = call i32 @emit(i32 %85, %struct.jit_ctx* %86)
  br label %88

88:                                               ; preds = %80, %76
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* @ARM_R0, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load i64, i64* @ARM_R0, align 8
  %94 = load i64*, i64** %11, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @ARM_MOV_R(i64 %93, i64 %96)
  %98 = load %struct.jit_ctx*, %struct.jit_ctx** %9, align 8
  %99 = call i32 @emit(i32 %97, %struct.jit_ctx* %98)
  br label %100

100:                                              ; preds = %92, %88
  ret void
}

declare dso_local i32 @emit(i32, %struct.jit_ctx*) #1

declare dso_local i32 @ARM_MOV_R(i64, i64) #1

declare dso_local i32 @emit_mov_i(i64, i32, %struct.jit_ctx*) #1

declare dso_local i32 @emit_blx_r(i64, %struct.jit_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
