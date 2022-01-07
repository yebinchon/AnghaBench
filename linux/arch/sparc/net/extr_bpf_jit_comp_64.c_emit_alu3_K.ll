; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/net/extr_bpf_jit_comp_64.c_emit_alu3_K.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/net/extr_bpf_jit_comp_64.c_emit_alu3_K.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32 }

@IMMED = common dso_local global i32 0, align 4
@bpf2sparc = common dso_local global i32* null, align 8
@TMP_REG_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, %struct.jit_ctx*)* @emit_alu3_K to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_alu3_K(i32 %0, i32 %1, i32 %2, i32 %3, %struct.jit_ctx* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.jit_ctx*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.jit_ctx* %4, %struct.jit_ctx** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @is_simm13(i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @RS1(i32 %17)
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @RD(i32 %19)
  %21 = or i32 %18, %20
  %22 = load i32, i32* %12, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %5
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @IMMED, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @S13(i32 %30)
  %32 = or i32 %29, %31
  %33 = load %struct.jit_ctx*, %struct.jit_ctx** %10, align 8
  %34 = call i32 @emit(i32 %32, %struct.jit_ctx* %33)
  br label %52

35:                                               ; preds = %5
  %36 = load i32*, i32** @bpf2sparc, align 8
  %37 = load i64, i64* @TMP_REG_1, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %13, align 4
  %40 = load %struct.jit_ctx*, %struct.jit_ctx** %10, align 8
  %41 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.jit_ctx*, %struct.jit_ctx** %10, align 8
  %45 = call i32 @emit_set_const_sext(i32 %42, i32 %43, %struct.jit_ctx* %44)
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @RS2(i32 %47)
  %49 = or i32 %46, %48
  %50 = load %struct.jit_ctx*, %struct.jit_ctx** %10, align 8
  %51 = call i32 @emit(i32 %49, %struct.jit_ctx* %50)
  br label %52

52:                                               ; preds = %35, %26
  ret void
}

declare dso_local i32 @is_simm13(i32) #1

declare dso_local i32 @RS1(i32) #1

declare dso_local i32 @RD(i32) #1

declare dso_local i32 @emit(i32, %struct.jit_ctx*) #1

declare dso_local i32 @S13(i32) #1

declare dso_local i32 @emit_set_const_sext(i32, i32, %struct.jit_ctx*) #1

declare dso_local i32 @RS2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
