; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_YCoCgAtoRGBA.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_YCoCgAtoRGBA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i32, i32)* @YCoCgAtoRGBA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @YCoCgAtoRGBA(i64* %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %87, %4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %90

21:                                               ; preds = %17
  %22 = load i64*, i64** %5, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %23, %24
  %26 = mul nsw i32 %25, 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %22, i64 %27
  store i64* %28, i64** %11, align 8
  %29 = load i64*, i64** %6, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 %30, %31
  %33 = mul nsw i32 %32, 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %29, i64 %34
  store i64* %35, i64** %12, align 8
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %83, %21
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %86

40:                                               ; preds = %36
  %41 = load i64*, i64** %11, align 8
  %42 = getelementptr inbounds i64, i64* %41, i32 1
  store i64* %42, i64** %11, align 8
  %43 = load i64, i64* %41, align 8
  store i64 %43, i64* %13, align 8
  %44 = load i64*, i64** %11, align 8
  %45 = getelementptr inbounds i64, i64* %44, i32 1
  store i64* %45, i64** %11, align 8
  %46 = load i64, i64* %44, align 8
  store i64 %46, i64* %14, align 8
  %47 = load i64*, i64** %11, align 8
  %48 = getelementptr inbounds i64, i64* %47, i32 1
  store i64* %48, i64** %11, align 8
  %49 = load i64, i64* %47, align 8
  store i64 %49, i64* %15, align 8
  %50 = load i64*, i64** %11, align 8
  %51 = getelementptr inbounds i64, i64* %50, i32 1
  store i64* %51, i64** %11, align 8
  %52 = load i64, i64* %50, align 8
  store i64 %52, i64* %16, align 8
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* %14, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i64, i64* %15, align 8
  %57 = sub nsw i64 %55, %56
  %58 = call i8* @CLAMP(i64 %57, i32 0, i32 255)
  %59 = ptrtoint i8* %58 to i64
  %60 = load i64*, i64** %12, align 8
  %61 = getelementptr inbounds i64, i64* %60, i32 1
  store i64* %61, i64** %12, align 8
  store i64 %59, i64* %60, align 8
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* %15, align 8
  %64 = add nsw i64 %62, %63
  %65 = sub nsw i64 %64, 128
  %66 = call i8* @CLAMP(i64 %65, i32 0, i32 255)
  %67 = ptrtoint i8* %66 to i64
  %68 = load i64*, i64** %12, align 8
  %69 = getelementptr inbounds i64, i64* %68, i32 1
  store i64* %69, i64** %12, align 8
  store i64 %67, i64* %68, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* %14, align 8
  %72 = sub nsw i64 %70, %71
  %73 = load i64, i64* %15, align 8
  %74 = sub nsw i64 %72, %73
  %75 = add nsw i64 %74, 256
  %76 = call i8* @CLAMP(i64 %75, i32 0, i32 255)
  %77 = ptrtoint i8* %76 to i64
  %78 = load i64*, i64** %12, align 8
  %79 = getelementptr inbounds i64, i64* %78, i32 1
  store i64* %79, i64** %12, align 8
  store i64 %77, i64* %78, align 8
  %80 = load i64, i64* %16, align 8
  %81 = load i64*, i64** %12, align 8
  %82 = getelementptr inbounds i64, i64* %81, i32 1
  store i64* %82, i64** %12, align 8
  store i64 %80, i64* %81, align 8
  br label %83

83:                                               ; preds = %40
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %36

86:                                               ; preds = %36
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %17

90:                                               ; preds = %17
  ret void
}

declare dso_local i8* @CLAMP(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
