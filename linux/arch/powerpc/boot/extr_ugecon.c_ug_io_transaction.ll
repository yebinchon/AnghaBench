; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_ugecon.c_ug_io_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_ugecon.c_ug_io_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ug_io_base = common dso_local global i32* null, align 8
@EXI_CSR = common dso_local global i32 0, align 4
@EXI_DATA = common dso_local global i32 0, align 4
@EXI_CR = common dso_local global i32 0, align 4
@EXI_CSR_CLK_32MHZ = common dso_local global i32 0, align 4
@EXI_CSR_CS_0 = common dso_local global i32 0, align 4
@EXI_CR_READ_WRITE = common dso_local global i32 0, align 4
@EXI_CR_TSTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ug_io_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ug_io_transaction(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32*, i32** @ug_io_base, align 8
  %10 = load i32, i32* @EXI_CSR, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** @ug_io_base, align 8
  %14 = load i32, i32* @EXI_DATA, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** @ug_io_base, align 8
  %18 = load i32, i32* @EXI_CR, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32* %20, i32** %5, align 8
  %21 = load i32, i32* @EXI_CSR_CLK_32MHZ, align 4
  %22 = load i32, i32* @EXI_CSR_CS_0, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @out_be32(i32* %24, i32 %25)
  %27 = load i32, i32* %2, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @out_be32(i32* %28, i32 %29)
  %31 = call i32 @EXI_CR_TLEN(i32 2)
  %32 = load i32, i32* @EXI_CR_READ_WRITE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @EXI_CR_TSTART, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @out_be32(i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %45, %1
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @in_be32(i32* %40)
  %42 = load i32, i32* @EXI_CR_TSTART, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = call i32 (...) @barrier()
  br label %39

47:                                               ; preds = %39
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @out_be32(i32* %48, i32 0)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @in_be32(i32* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @EXI_CR_TLEN(i32) #1

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
