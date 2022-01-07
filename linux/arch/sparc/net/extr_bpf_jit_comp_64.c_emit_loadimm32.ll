; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/net/extr_bpf_jit_comp_64.c_emit_loadimm32.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/net/extr_bpf_jit_comp_64.c_emit_loadimm32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32 }

@OR = common dso_local global i32 0, align 4
@IMMED = common dso_local global i32 0, align 4
@G0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, %struct.jit_ctx*)* @emit_loadimm32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_loadimm32(i64 %0, i32 %1, %struct.jit_ctx* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.jit_ctx*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.jit_ctx* %2, %struct.jit_ctx** %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp sge i64 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %3
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @is_simm13(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = load i32, i32* @OR, align 4
  %15 = load i32, i32* @IMMED, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @G0, align 4
  %18 = call i32 @RS1(i32 %17)
  %19 = or i32 %16, %18
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @S13(i64 %20)
  %22 = or i32 %19, %21
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @RD(i32 %23)
  %25 = or i32 %22, %24
  %26 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %27 = call i32 @emit(i32 %25, %struct.jit_ctx* %26)
  br label %33

28:                                               ; preds = %9, %3
  %29 = load i64, i64* %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %32 = call i32 @emit_set_const(i64 %29, i32 %30, %struct.jit_ctx* %31)
  br label %33

33:                                               ; preds = %28, %13
  ret void
}

declare dso_local i64 @is_simm13(i64) #1

declare dso_local i32 @emit(i32, %struct.jit_ctx*) #1

declare dso_local i32 @RS1(i32) #1

declare dso_local i32 @S13(i64) #1

declare dso_local i32 @RD(i32) #1

declare dso_local i32 @emit_set_const(i64, i32, %struct.jit_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
