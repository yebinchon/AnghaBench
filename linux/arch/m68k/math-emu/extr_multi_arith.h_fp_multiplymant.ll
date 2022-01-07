; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/math-emu/extr_multi_arith.h_fp_multiplymant.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/math-emu/extr_multi_arith.h_fp_multiplymant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.fp_mant128 = type { i32* }
%struct.fp_ext = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%union.fp_mant64 = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.fp_mant128*, %struct.fp_ext*, %struct.fp_ext*)* @fp_multiplymant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fp_multiplymant(%union.fp_mant128* %0, %struct.fp_ext* %1, %struct.fp_ext* %2) #0 {
  %4 = alloca %union.fp_mant128*, align 8
  %5 = alloca %struct.fp_ext*, align 8
  %6 = alloca %struct.fp_ext*, align 8
  %7 = alloca %union.fp_mant64, align 8
  store %union.fp_mant128* %0, %union.fp_mant128** %4, align 8
  store %struct.fp_ext* %1, %struct.fp_ext** %5, align 8
  store %struct.fp_ext* %2, %struct.fp_ext** %6, align 8
  %8 = load %union.fp_mant128*, %union.fp_mant128** %4, align 8
  %9 = bitcast %union.fp_mant128* %8 to i32**
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load %union.fp_mant128*, %union.fp_mant128** %4, align 8
  %14 = bitcast %union.fp_mant128* %13 to i32**
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %19 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fp_ext*, %struct.fp_ext** %6, align 8
  %25 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @fp_mul64(i32 %12, i32 %17, i32 %23, i32 %29)
  %31 = load %union.fp_mant128*, %union.fp_mant128** %4, align 8
  %32 = bitcast %union.fp_mant128* %31 to i32**
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = load %union.fp_mant128*, %union.fp_mant128** %4, align 8
  %37 = bitcast %union.fp_mant128* %36 to i32**
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %42 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.fp_ext*, %struct.fp_ext** %6, align 8
  %48 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @fp_mul64(i32 %35, i32 %40, i32 %46, i32 %52)
  %54 = bitcast %union.fp_mant64* %7 to i32**
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = bitcast %union.fp_mant64* %7 to i32**
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %63 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.fp_ext*, %struct.fp_ext** %6, align 8
  %69 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @fp_mul64(i32 %57, i32 %61, i32 %67, i32 %73)
  %75 = load %union.fp_mant128*, %union.fp_mant128** %4, align 8
  %76 = getelementptr inbounds %union.fp_mant64, %union.fp_mant64* %7, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @fp_addx96(%union.fp_mant128* %75, i32* %77)
  %79 = bitcast %union.fp_mant64* %7 to i32**
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = bitcast %union.fp_mant64* %7 to i32**
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %88 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.fp_ext*, %struct.fp_ext** %6, align 8
  %94 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @fp_mul64(i32 %82, i32 %86, i32 %92, i32 %98)
  %100 = load %union.fp_mant128*, %union.fp_mant128** %4, align 8
  %101 = getelementptr inbounds %union.fp_mant64, %union.fp_mant64* %7, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @fp_addx96(%union.fp_mant128* %100, i32* %102)
  ret void
}

declare dso_local i32 @fp_mul64(i32, i32, i32, i32) #1

declare dso_local i32 @fp_addx96(%union.fp_mant128*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
