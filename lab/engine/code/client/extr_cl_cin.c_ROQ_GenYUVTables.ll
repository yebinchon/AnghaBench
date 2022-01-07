; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_ROQ_GenYUVTables.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_ROQ_GenYUVTables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ROQ_UB_tab = common dso_local global i64* null, align 8
@ROQ_VR_tab = common dso_local global i64* null, align 8
@ROQ_UG_tab = common dso_local global i64* null, align 8
@ROQ_VG_tab = common dso_local global i64* null, align 8
@ROQ_YY_tab = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ROQ_GenYUVTables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ROQ_GenYUVTables() #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i64, align 8
  %6 = alloca float, align 4
  store float 0x404C9A1CA0000000, float* %1, align 4
  store float 0x4046AE9780000000, float* %2, align 4
  store float 0x40270663C0000000, float* %3, align 4
  store float 0x40375A3C20000000, float* %4, align 4
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %56, %0
  %8 = load i64, i64* %5, align 8
  %9 = icmp slt i64 %8, 256
  br i1 %9, label %10, label %59

10:                                               ; preds = %7
  %11 = load i64, i64* %5, align 8
  %12 = mul nsw i64 2, %11
  %13 = sub nsw i64 %12, 255
  %14 = sitofp i64 %13 to float
  store float %14, float* %6, align 4
  %15 = load float, float* %1, align 4
  %16 = load float, float* %6, align 4
  %17 = fmul float %15, %16
  %18 = fadd float %17, 3.200000e+01
  %19 = fptosi float %18 to i64
  %20 = load i64*, i64** @ROQ_UB_tab, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  store i64 %19, i64* %22, align 8
  %23 = load float, float* %2, align 4
  %24 = load float, float* %6, align 4
  %25 = fmul float %23, %24
  %26 = fadd float %25, 3.200000e+01
  %27 = fptosi float %26 to i64
  %28 = load i64*, i64** @ROQ_VR_tab, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  store i64 %27, i64* %30, align 8
  %31 = load float, float* %3, align 4
  %32 = fneg float %31
  %33 = load float, float* %6, align 4
  %34 = fmul float %32, %33
  %35 = fptosi float %34 to i64
  %36 = load i64*, i64** @ROQ_UG_tab, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  store i64 %35, i64* %38, align 8
  %39 = load float, float* %4, align 4
  %40 = fneg float %39
  %41 = load float, float* %6, align 4
  %42 = fmul float %40, %41
  %43 = fadd float %42, 3.200000e+01
  %44 = fptosi float %43 to i64
  %45 = load i64*, i64** @ROQ_VG_tab, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  store i64 %44, i64* %47, align 8
  %48 = load i64, i64* %5, align 8
  %49 = shl i64 %48, 6
  %50 = load i64, i64* %5, align 8
  %51 = ashr i64 %50, 2
  %52 = or i64 %49, %51
  %53 = load i64*, i64** @ROQ_YY_tab, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  store i64 %52, i64* %55, align 8
  br label %56

56:                                               ; preds = %10
  %57 = load i64, i64* %5, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %5, align 8
  br label %7

59:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
