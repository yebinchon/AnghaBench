; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_ia32_alu_i64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_ia32_alu_i64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog_aux = type { i32 }

@dst_lo = common dso_local global i32 0, align 4
@dst_hi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32, i32, i32**, %struct.bpf_prog_aux*)* @emit_ia32_alu_i64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ia32_alu_i64(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4, i32** %5, %struct.bpf_prog_aux* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca %struct.bpf_prog_aux*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32** %5, i32*** %13, align 8
  store %struct.bpf_prog_aux* %6, %struct.bpf_prog_aux** %14, align 8
  %17 = load i32**, i32*** %13, align 8
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %7
  %22 = load i32, i32* %11, align 4
  %23 = and i32 %22, -2147483648
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 -1, i32* %16, align 4
  br label %26

26:                                               ; preds = %25, %21, %7
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @dst_lo, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @emit_ia32_alu_i(i32 %27, i32 0, i32 %28, i32 %29, i32 %30, i32 %31, i32** %15)
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @dst_hi, align 4
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @emit_ia32_alu_i(i32 %36, i32 1, i32 %37, i32 %38, i32 %39, i32 %40, i32** %15)
  br label %52

42:                                               ; preds = %26
  %43 = load %struct.bpf_prog_aux*, %struct.bpf_prog_aux** %14, align 8
  %44 = getelementptr inbounds %struct.bpf_prog_aux, %struct.bpf_prog_aux* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @dst_hi, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @emit_ia32_mov_i(i32 %48, i32 0, i32 %49, i32** %15)
  br label %51

51:                                               ; preds = %47, %42
  br label %52

52:                                               ; preds = %51, %35
  %53 = load i32*, i32** %15, align 8
  %54 = load i32**, i32*** %13, align 8
  store i32* %53, i32** %54, align 8
  ret void
}

declare dso_local i32 @emit_ia32_alu_i(i32, i32, i32, i32, i32, i32, i32**) #1

declare dso_local i32 @emit_ia32_mov_i(i32, i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
