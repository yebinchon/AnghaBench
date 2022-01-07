; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_get_thumbs_dimensions.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_get_thumbs_dimensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32*, i32*)* @get_thumbs_dimensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_thumbs_dimensions(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %6
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* %10, align 4
  %25 = load i32*, i32** %12, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32*, i32** %13, align 8
  store i32 %26, i32* %27, align 4
  store i32 1, i32* %7, align 4
  br label %82

28:                                               ; preds = %19, %6
  %29 = load i32, i32* %10, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %11, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %28
  store i32 0, i32* %7, align 4
  br label %82

35:                                               ; preds = %31
  %36 = load i32, i32* %10, align 4
  %37 = sitofp i32 %36 to double
  %38 = load i32, i32* %8, align 4
  %39 = sitofp i32 %38 to double
  %40 = fdiv double %37, %39
  store double %40, double* %14, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sitofp i32 %41 to double
  %43 = load i32, i32* %9, align 4
  %44 = sitofp i32 %43 to double
  %45 = fdiv double %42, %44
  store double %45, double* %15, align 8
  %46 = load double, double* %14, align 8
  %47 = load double, double* %15, align 8
  %48 = fcmp olt double %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %35
  %50 = load i32, i32* %10, align 4
  %51 = load i32*, i32** %12, align 8
  store i32 %50, i32* %51, align 4
  %52 = load double, double* %14, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sitofp i32 %53 to double
  %55 = fmul double %52, %54
  %56 = fadd double 0x3FDFFFFFFEED1F41, %55
  %57 = fptosi double %56 to i32
  %58 = load i32*, i32** %13, align 8
  store i32 %57, i32* %58, align 4
  br label %69

59:                                               ; preds = %35
  %60 = load i32, i32* %11, align 4
  %61 = load i32*, i32** %13, align 8
  store i32 %60, i32* %61, align 4
  %62 = load double, double* %15, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sitofp i32 %63 to double
  %65 = fmul double %62, %64
  %66 = fadd double 0x3FDFFFFFFEED1F41, %65
  %67 = fptosi double %66 to i32
  %68 = load i32*, i32** %12, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %59, %49
  %70 = load i32*, i32** %12, align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %71, 1
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32*, i32** %12, align 8
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %73, %69
  %76 = load i32*, i32** %13, align 8
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %77, 1
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32*, i32** %13, align 8
  store i32 1, i32* %80, align 4
  br label %81

81:                                               ; preds = %79, %75
  store i32 1, i32* %7, align 4
  br label %82

82:                                               ; preds = %81, %34, %23
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
