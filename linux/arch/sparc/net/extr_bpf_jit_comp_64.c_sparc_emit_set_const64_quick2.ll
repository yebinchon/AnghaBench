; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/net/extr_bpf_jit_comp_64.c_sparc_emit_set_const64_quick2.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/net/extr_bpf_jit_comp_64.c_sparc_emit_set_const64_quick2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32 }

@SLLX = common dso_local global i32 0, align 4
@OR = common dso_local global i32 0, align 4
@IMMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32, i32, %struct.jit_ctx*)* @sparc_emit_set_const64_quick2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sparc_emit_set_const64_quick2(i64 %0, i64 %1, i32 %2, i32 %3, %struct.jit_ctx* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.jit_ctx*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.jit_ctx* %4, %struct.jit_ctx** %10, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.jit_ctx*, %struct.jit_ctx** %10, align 8
  %14 = call i32 @emit_loadimm32(i64 %11, i32 %12, %struct.jit_ctx* %13)
  %15 = load i32, i32* @SLLX, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.jit_ctx*, %struct.jit_ctx** %10, align 8
  %19 = call i32 @emit_alu_K(i32 %15, i32 %16, i32 %17, %struct.jit_ctx* %18)
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %5
  %23 = load i32, i32* @OR, align 4
  %24 = load i32, i32* @IMMED, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @RS1(i32 %26)
  %28 = or i32 %25, %27
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @S13(i64 %29)
  %31 = or i32 %28, %30
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @RD(i32 %32)
  %34 = or i32 %31, %33
  %35 = load %struct.jit_ctx*, %struct.jit_ctx** %10, align 8
  %36 = call i32 @emit(i32 %34, %struct.jit_ctx* %35)
  br label %37

37:                                               ; preds = %22, %5
  ret void
}

declare dso_local i32 @emit_loadimm32(i64, i32, %struct.jit_ctx*) #1

declare dso_local i32 @emit_alu_K(i32, i32, i32, %struct.jit_ctx*) #1

declare dso_local i32 @emit(i32, %struct.jit_ctx*) #1

declare dso_local i32 @RS1(i32) #1

declare dso_local i32 @S13(i64) #1

declare dso_local i32 @RD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
