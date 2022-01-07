; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/net/extr_bpf_jit_comp.c_emit_a64_mov_i.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/net/extr_bpf_jit_comp.c_emit_a64_mov_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, %struct.jit_ctx*)* @emit_a64_mov_i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_a64_mov_i(i32 %0, i32 %1, i32 %2, %struct.jit_ctx* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.jit_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.jit_ctx* %3, %struct.jit_ctx** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = ashr i32 %11, 16
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 65535
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %9, align 4
  %16 = and i32 %15, 32768
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, 65535
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %10, align 4
  %25 = xor i32 %24, -1
  %26 = call i32 @A64_MOVN(i32 %22, i32 %23, i32 %25, i32 0)
  %27 = load %struct.jit_ctx*, %struct.jit_ctx** %8, align 8
  %28 = call i32 @emit(i32 %26, %struct.jit_ctx* %27)
  br label %47

29:                                               ; preds = %18
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %9, align 4
  %33 = xor i32 %32, -1
  %34 = call i32 @A64_MOVN(i32 %30, i32 %31, i32 %33, i32 16)
  %35 = load %struct.jit_ctx*, %struct.jit_ctx** %8, align 8
  %36 = call i32 @emit(i32 %34, %struct.jit_ctx* %35)
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 65535
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @A64_MOVK(i32 %40, i32 %41, i32 %42, i32 0)
  %44 = load %struct.jit_ctx*, %struct.jit_ctx** %8, align 8
  %45 = call i32 @emit(i32 %43, %struct.jit_ctx* %44)
  br label %46

46:                                               ; preds = %39, %29
  br label %47

47:                                               ; preds = %46, %21
  br label %65

48:                                               ; preds = %4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @A64_MOVZ(i32 %49, i32 %50, i32 %51, i32 0)
  %53 = load %struct.jit_ctx*, %struct.jit_ctx** %8, align 8
  %54 = call i32 @emit(i32 %52, %struct.jit_ctx* %53)
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %48
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @A64_MOVK(i32 %58, i32 %59, i32 %60, i32 16)
  %62 = load %struct.jit_ctx*, %struct.jit_ctx** %8, align 8
  %63 = call i32 @emit(i32 %61, %struct.jit_ctx* %62)
  br label %64

64:                                               ; preds = %57, %48
  br label %65

65:                                               ; preds = %64, %47
  ret void
}

declare dso_local i32 @emit(i32, %struct.jit_ctx*) #1

declare dso_local i32 @A64_MOVN(i32, i32, i32, i32) #1

declare dso_local i32 @A64_MOVK(i32, i32, i32, i32) #1

declare dso_local i32 @A64_MOVZ(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
