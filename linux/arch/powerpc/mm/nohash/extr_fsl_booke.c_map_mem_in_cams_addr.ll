; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/nohash/extr_fsl_booke.c_map_mem_in_cams_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/nohash/extr_fsl_booke.c_map_mem_in_cams_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_KERNEL_X = common dso_local global i32 0, align 4
@tlbcam_index = common dso_local global i32 0, align 4
@SPRN_TLB1CFG = common dso_local global i32 0, align 4
@TLBnCFG_N_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i32, i32)* @map_mem_in_cams_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @map_mem_in_cams_addr(i64 %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %13, align 8
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %52, %5
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %19, %20
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i1 [ false, %15 ], [ %21, %18 ]
  br i1 %23, label %24, label %55

24:                                               ; preds = %22
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @calc_cam_sz(i64 %25, i64 %26, i64 %27)
  store i64 %28, i64* %14, align 8
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %12, align 4
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %14, align 8
  %36 = load i32, i32* @PAGE_KERNEL_X, align 4
  %37 = call i32 @pgprot_val(i32 %36)
  %38 = call i32 @settlbcam(i32 %32, i64 %33, i64 %34, i64 %35, i32 %37, i32 0)
  br label %39

39:                                               ; preds = %31, %24
  %40 = load i64, i64* %14, align 8
  %41 = load i64, i64* %9, align 8
  %42 = sub i64 %41, %40
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %14, align 8
  %44 = load i64, i64* %13, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %14, align 8
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %7, align 8
  br label %52

52:                                               ; preds = %39
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  br label %15

55:                                               ; preds = %22
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i64, i64* %13, align 8
  store i64 %59, i64* %6, align 8
  br label %66

60:                                               ; preds = %55
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @loadcam_multi(i32 0, i32 %61, i32 %62)
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* @tlbcam_index, align 4
  %65 = load i64, i64* %13, align 8
  store i64 %65, i64* %6, align 8
  br label %66

66:                                               ; preds = %60, %58
  %67 = load i64, i64* %6, align 8
  ret i64 %67
}

declare dso_local i64 @calc_cam_sz(i64, i64, i64) #1

declare dso_local i32 @settlbcam(i32, i64, i64, i64, i32, i32) #1

declare dso_local i32 @pgprot_val(i32) #1

declare dso_local i32 @loadcam_multi(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
