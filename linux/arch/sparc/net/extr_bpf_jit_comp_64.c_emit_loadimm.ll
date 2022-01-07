; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/net/extr_bpf_jit_comp_64.c_emit_loadimm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/net/extr_bpf_jit_comp_64.c_emit_loadimm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32 }

@OR = common dso_local global i32 0, align 4
@IMMED = common dso_local global i32 0, align 4
@G0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.jit_ctx*)* @emit_loadimm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_loadimm(i32 %0, i32 %1, %struct.jit_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.jit_ctx*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.jit_ctx* %2, %struct.jit_ctx** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @is_simm13(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = load i32, i32* @OR, align 4
  %12 = load i32, i32* @IMMED, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @G0, align 4
  %15 = call i32 @RS1(i32 %14)
  %16 = or i32 %13, %15
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @S13(i32 %17)
  %19 = or i32 %16, %18
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @RD(i32 %20)
  %22 = or i32 %19, %21
  %23 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %24 = call i32 @emit(i32 %22, %struct.jit_ctx* %23)
  br label %30

25:                                               ; preds = %3
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %29 = call i32 @emit_set_const(i32 %26, i32 %27, %struct.jit_ctx* %28)
  br label %30

30:                                               ; preds = %25, %10
  ret void
}

declare dso_local i64 @is_simm13(i32) #1

declare dso_local i32 @emit(i32, %struct.jit_ctx*) #1

declare dso_local i32 @RS1(i32) #1

declare dso_local i32 @S13(i32) #1

declare dso_local i32 @RD(i32) #1

declare dso_local i32 @emit_set_const(i32, i32, %struct.jit_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
