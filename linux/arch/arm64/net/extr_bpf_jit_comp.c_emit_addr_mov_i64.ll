; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/net/extr_bpf_jit_comp.c_emit_addr_mov_i64.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/net/extr_bpf_jit_comp.c_emit_addr_mov_i64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.jit_ctx*)* @emit_addr_mov_i64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_addr_mov_i64(i32 %0, i32 %1, %struct.jit_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.jit_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.jit_ctx* %2, %struct.jit_ctx** %6, align 8
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %7, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %12, 65535
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @A64_MOVN(i32 1, i32 %10, i32 %13, i32 %14)
  %16 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %17 = call i32 @emit(i32 %15, %struct.jit_ctx* %16)
  br label %18

18:                                               ; preds = %21, %3
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 32
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = ashr i32 %22, 16
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, 16
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 65535
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @A64_MOVK(i32 1, i32 %26, i32 %28, i32 %29)
  %31 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %32 = call i32 @emit(i32 %30, %struct.jit_ctx* %31)
  br label %18

33:                                               ; preds = %18
  ret void
}

declare dso_local i32 @emit(i32, %struct.jit_ctx*) #1

declare dso_local i32 @A64_MOVN(i32, i32, i32, i32) #1

declare dso_local i32 @A64_MOVK(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
