; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/net/extr_bpf_jit_comp_64.c_build_epilogue.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/net/extr_bpf_jit_comp_64.c_build_epilogue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32, i32 }

@JMPL = common dso_local global i32 0, align 4
@IMMED = common dso_local global i32 0, align 4
@I7 = common dso_local global i32 0, align 4
@G0 = common dso_local global i32 0, align 4
@RESTORE = common dso_local global i32 0, align 4
@bpf2sparc = common dso_local global i32* null, align 8
@BPF_REG_0 = common dso_local global i64 0, align 8
@O0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jit_ctx*)* @build_epilogue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_epilogue(%struct.jit_ctx* %0) #0 {
  %2 = alloca %struct.jit_ctx*, align 8
  store %struct.jit_ctx* %0, %struct.jit_ctx** %2, align 8
  %3 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.jit_ctx, %struct.jit_ctx* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @JMPL, align 4
  %9 = load i32, i32* @IMMED, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @I7, align 4
  %12 = call i32 @RS1(i32 %11)
  %13 = or i32 %10, %12
  %14 = call i32 @S13(i32 8)
  %15 = or i32 %13, %14
  %16 = load i32, i32* @G0, align 4
  %17 = call i32 @RD(i32 %16)
  %18 = or i32 %15, %17
  %19 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %20 = call i32 @emit(i32 %18, %struct.jit_ctx* %19)
  %21 = load i32, i32* @RESTORE, align 4
  %22 = load i32*, i32** @bpf2sparc, align 8
  %23 = load i64, i64* @BPF_REG_0, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @RS1(i32 %25)
  %27 = or i32 %21, %26
  %28 = load i32, i32* @G0, align 4
  %29 = call i32 @RS2(i32 %28)
  %30 = or i32 %27, %29
  %31 = load i32, i32* @O0, align 4
  %32 = call i32 @RD(i32 %31)
  %33 = or i32 %30, %32
  %34 = load %struct.jit_ctx*, %struct.jit_ctx** %2, align 8
  %35 = call i32 @emit(i32 %33, %struct.jit_ctx* %34)
  ret void
}

declare dso_local i32 @emit(i32, %struct.jit_ctx*) #1

declare dso_local i32 @RS1(i32) #1

declare dso_local i32 @S13(i32) #1

declare dso_local i32 @RD(i32) #1

declare dso_local i32 @RS2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
