; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/lib/extr_inat.c_inat_get_avx_attribute.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/lib/extr_inat.c_inat_get_avx_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X86_VEX_M_MAX = common dso_local global i64 0, align 8
@INAT_LSTPFX_MAX = common dso_local global i64 0, align 8
@inat_avx_tables = common dso_local global i32*** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inat_get_avx_attribute(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @X86_VEX_M_MAX, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @INAT_LSTPFX_MAX, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %3
  store i32 0, i32* %4, align 4
  br label %54

17:                                               ; preds = %12
  %18 = load i32***, i32**** @inat_avx_tables, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds i32**, i32*** %18, i64 %19
  %21 = load i32**, i32*** %20, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %8, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %54

27:                                               ; preds = %17
  %28 = load i32*, i32** %8, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @inat_is_group(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %27
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load i32***, i32**** @inat_avx_tables, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds i32**, i32*** %38, i64 %39
  %41 = load i32**, i32*** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds i32*, i32** %41, i64 %42
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %8, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %54

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %34, %27
  %50 = load i32*, i32** %8, align 8
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %49, %47, %26, %16
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @inat_is_group(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
