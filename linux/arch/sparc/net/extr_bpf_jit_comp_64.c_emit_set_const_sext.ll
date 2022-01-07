; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/net/extr_bpf_jit_comp_64.c_emit_set_const_sext.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/net/extr_bpf_jit_comp_64.c_emit_set_const_sext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit_ctx = type { i32 }

@XOR = common dso_local global i32 0, align 4
@IMMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, %struct.jit_ctx*)* @emit_set_const_sext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_set_const_sext(i64 %0, i32 %1, %struct.jit_ctx* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.jit_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.jit_ctx* %2, %struct.jit_ctx** %6, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp sge i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load i64, i64* %4, align 8
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @SETHI(i32 %13, i32 %14)
  %16 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %17 = call i32 @emit(i32 %15, %struct.jit_ctx* %16)
  %18 = load i64, i64* %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @OR_LO(i64 %18, i32 %19)
  %21 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %22 = call i32 @emit(i32 %20, %struct.jit_ctx* %21)
  br label %49

23:                                               ; preds = %3
  %24 = load i64, i64* %4, align 8
  %25 = trunc i64 %24 to i32
  %26 = xor i32 %25, -1
  store i32 %26, i32* %7, align 4
  %27 = load i64, i64* %4, align 8
  %28 = trunc i64 %27 to i32
  %29 = or i32 -1024, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @SETHI(i32 %30, i32 %31)
  %33 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %34 = call i32 @emit(i32 %32, %struct.jit_ctx* %33)
  %35 = load i32, i32* @XOR, align 4
  %36 = load i32, i32* @IMMED, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @RS1(i32 %38)
  %40 = or i32 %37, %39
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @S13(i32 %41)
  %43 = or i32 %40, %42
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @RD(i32 %44)
  %46 = or i32 %43, %45
  %47 = load %struct.jit_ctx*, %struct.jit_ctx** %6, align 8
  %48 = call i32 @emit(i32 %46, %struct.jit_ctx* %47)
  br label %49

49:                                               ; preds = %23, %11
  ret void
}

declare dso_local i32 @emit(i32, %struct.jit_ctx*) #1

declare dso_local i32 @SETHI(i32, i32) #1

declare dso_local i32 @OR_LO(i64, i32) #1

declare dso_local i32 @RS1(i32) #1

declare dso_local i32 @S13(i32) #1

declare dso_local i32 @RD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
