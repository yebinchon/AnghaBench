; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp.c_emit_mov_imm32.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp.c_emit_mov_imm32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32, i64, i64)* @emit_mov_imm32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_mov_imm32(i32** %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i32**, i32*** %5, align 8
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %4
  %19 = load i64, i64* %8, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @add_1mod(i32 72, i64 %22)
  store i32 %23, i32* %10, align 4
  store i32 199, i32* %11, align 4
  store i32 192, i32* %12, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @add_1reg(i32 %26, i64 %27)
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @EMIT3_off32(i32 %24, i32 %25, i32 %28, i64 %29)
  br label %63

31:                                               ; preds = %18, %4
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @is_ereg(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @add_2mod(i32 64, i64 %39, i64 %40)
  %42 = call i32 @EMIT1(i32 %41)
  br label %43

43:                                               ; preds = %38, %34
  store i32 49, i32* %11, align 4
  store i32 192, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @add_2reg(i32 %45, i64 %46, i64 %47)
  %49 = call i32 @EMIT2(i32 %44, i32 %48)
  br label %63

50:                                               ; preds = %31
  %51 = load i64, i64* %7, align 8
  %52 = call i64 @is_ereg(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @add_1mod(i32 64, i64 %55)
  %57 = call i32 @EMIT1(i32 %56)
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @add_1reg(i32 184, i64 %59)
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @EMIT1_off32(i32 %60, i64 %61)
  br label %63

63:                                               ; preds = %58, %43, %21
  %64 = load i32*, i32** %9, align 8
  %65 = load i32**, i32*** %5, align 8
  store i32* %64, i32** %65, align 8
  ret void
}

declare dso_local i32 @add_1mod(i32, i64) #1

declare dso_local i32 @EMIT3_off32(i32, i32, i32, i64) #1

declare dso_local i32 @add_1reg(i32, i64) #1

declare dso_local i64 @is_ereg(i64) #1

declare dso_local i32 @EMIT1(i32) #1

declare dso_local i32 @add_2mod(i32, i64, i64) #1

declare dso_local i32 @EMIT2(i32, i32) #1

declare dso_local i32 @add_2reg(i32, i64, i64) #1

declare dso_local i32 @EMIT1_off32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
