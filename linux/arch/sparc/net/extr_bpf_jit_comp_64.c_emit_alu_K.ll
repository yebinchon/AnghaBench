; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/net/extr_bpf_jit_comp_64.c_emit_alu_K.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/net/extr_bpf_jit_comp_64.c_emit_alu_K.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32 }

@IMMED = common dso_local global i32 0, align 4
@bpf2sparc = common dso_local global i32* null, align 8
@TMP_REG_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, %struct.jit_ctx*)* @emit_alu_K to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_alu_K(i32 %0, i32 %1, i32 %2, %struct.jit_ctx* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.jit_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.jit_ctx* %3, %struct.jit_ctx** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @is_simm13(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @RS1(i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @RD(i32 %17)
  %19 = or i32 %16, %18
  %20 = load i32, i32* %10, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @IMMED, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @S13(i32 %28)
  %30 = or i32 %27, %29
  %31 = load %struct.jit_ctx*, %struct.jit_ctx** %8, align 8
  %32 = call i32 @emit(i32 %30, %struct.jit_ctx* %31)
  br label %50

33:                                               ; preds = %4
  %34 = load i32*, i32** @bpf2sparc, align 8
  %35 = load i64, i64* @TMP_REG_1, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  %38 = load %struct.jit_ctx*, %struct.jit_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.jit_ctx*, %struct.jit_ctx** %8, align 8
  %43 = call i32 @emit_set_const_sext(i32 %40, i32 %41, %struct.jit_ctx* %42)
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @RS2(i32 %45)
  %47 = or i32 %44, %46
  %48 = load %struct.jit_ctx*, %struct.jit_ctx** %8, align 8
  %49 = call i32 @emit(i32 %47, %struct.jit_ctx* %48)
  br label %50

50:                                               ; preds = %33, %24
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
