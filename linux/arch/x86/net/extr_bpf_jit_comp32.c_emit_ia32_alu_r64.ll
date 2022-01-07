; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_ia32_alu_r64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/net/extr_bpf_jit_comp32.c_emit_ia32_alu_r64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog_aux = type { i32 }

@dst_lo = common dso_local global i32 0, align 4
@src_lo = common dso_local global i32 0, align 4
@dst_hi = common dso_local global i32 0, align 4
@src_hi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*, i32, i32, i32**, %struct.bpf_prog_aux*)* @emit_ia32_alu_r64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_ia32_alu_r64(i32 %0, i32 %1, i32* %2, i32* %3, i32 %4, i32 %5, i32** %6, %struct.bpf_prog_aux* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32**, align 8
  %16 = alloca %struct.bpf_prog_aux*, align 8
  %17 = alloca i32*, align 8
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32** %6, i32*** %15, align 8
  store %struct.bpf_prog_aux* %7, %struct.bpf_prog_aux** %16, align 8
  %18 = load i32**, i32*** %15, align 8
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %17, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @dst_lo, align 4
  %23 = load i32, i32* @src_lo, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %14, align 4
  %26 = call i32 @emit_ia32_alu_r(i32 %20, i32 0, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25, i32** %17)
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @dst_hi, align 4
  %33 = load i32, i32* @src_hi, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @emit_ia32_alu_r(i32 %30, i32 1, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35, i32** %17)
  br label %47

37:                                               ; preds = %8
  %38 = load %struct.bpf_prog_aux*, %struct.bpf_prog_aux** %16, align 8
  %39 = getelementptr inbounds %struct.bpf_prog_aux, %struct.bpf_prog_aux* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @dst_hi, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @emit_ia32_mov_i(i32 %43, i32 0, i32 %44, i32** %17)
  br label %46

46:                                               ; preds = %42, %37
  br label %47

47:                                               ; preds = %46, %29
  %48 = load i32*, i32** %17, align 8
  %49 = load i32**, i32*** %15, align 8
  store i32* %48, i32** %49, align 8
  ret void
}

declare dso_local i32 @emit_ia32_alu_r(i32, i32, i32, i32, i32, i32, i32, i32**) #1

declare dso_local i32 @emit_ia32_mov_i(i32, i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
