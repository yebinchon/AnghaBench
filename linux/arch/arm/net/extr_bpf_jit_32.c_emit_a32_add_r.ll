; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_emit_a32_add_r.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/net/extr_bpf_jit_32.c_emit_a32_add_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, %struct.jit_ctx*)* @emit_a32_add_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_a32_add_r(i32 %0, i32 %1, i32 %2, i32 %3, %struct.jit_ctx* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.jit_ctx*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.jit_ctx* %4, %struct.jit_ctx** %10, align 8
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %5
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @ARM_ADDS_R(i32 %17, i32 %18, i32 %19)
  %21 = load %struct.jit_ctx*, %struct.jit_ctx** %10, align 8
  %22 = call i32 @emit(i32 %20, %struct.jit_ctx* %21)
  br label %44

23:                                               ; preds = %13, %5
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @ARM_ADC_R(i32 %30, i32 %31, i32 %32)
  %34 = load %struct.jit_ctx*, %struct.jit_ctx** %10, align 8
  %35 = call i32 @emit(i32 %33, %struct.jit_ctx* %34)
  br label %43

36:                                               ; preds = %26, %23
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @ARM_ADD_R(i32 %37, i32 %38, i32 %39)
  %41 = load %struct.jit_ctx*, %struct.jit_ctx** %10, align 8
  %42 = call i32 @emit(i32 %40, %struct.jit_ctx* %41)
  br label %43

43:                                               ; preds = %36, %29
  br label %44

44:                                               ; preds = %43, %16
  ret void
}

declare dso_local i32 @emit(i32, %struct.jit_ctx*) #1

declare dso_local i32 @ARM_ADDS_R(i32, i32, i32) #1

declare dso_local i32 @ARM_ADC_R(i32, i32, i32) #1

declare dso_local i32 @ARM_ADD_R(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
