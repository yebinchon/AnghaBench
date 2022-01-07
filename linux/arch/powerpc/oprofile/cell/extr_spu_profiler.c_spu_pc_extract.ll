; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/oprofile/cell/extr_spu_profiler.c_spu_pc_extract.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/oprofile/cell/extr_spu_profiler.c_spu_pc_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPU_PC_MASK = common dso_local global i32 0, align 4
@SPUS_PER_TB_ENTRY = common dso_local global i32 0, align 4
@samples = common dso_local global i32* null, align 8
@TRACE_ARRAY_SIZE = common dso_local global i32 0, align 4
@NUM_SPU_BITS_TRBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @spu_pc_extract to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spu_pc_extract(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @SPU_PC_MASK, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %3, align 4
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %11 = call i32 @cbe_read_trace_buffer(i32 %9, i32* %10)
  %12 = load i32, i32* @SPUS_PER_TB_ENTRY, align 4
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %56, %2
  %15 = load i32, i32* %7, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %59

17:                                               ; preds = %14
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %18, %20
  %22 = shl i32 %21, 2
  %23 = load i32*, i32** @samples, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @TRACE_ARRAY_SIZE, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %23, i64 %29
  store i32 %22, i32* %30, align 4
  %31 = load i32, i32* %6, align 4
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %31, %33
  %35 = shl i32 %34, 2
  %36 = load i32*, i32** @samples, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @SPUS_PER_TB_ENTRY, align 4
  %39 = add nsw i32 %37, %38
  %40 = load i32, i32* @TRACE_ARRAY_SIZE, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %36, i64 %44
  store i32 %35, i32* %45, align 4
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @NUM_SPU_BITS_TRBUF, align 4
  %49 = ashr i32 %47, %48
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @NUM_SPU_BITS_TRBUF, align 4
  %54 = ashr i32 %52, %53
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %17
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %7, align 4
  br label %14

59:                                               ; preds = %14
  ret void
}

declare dso_local i32 @cbe_read_trace_buffer(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
