; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Bra.c_SPARC_Convert.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Bra.c_SPARC_Convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SPARC_Convert(i32* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* %6, align 8
  %13 = and i64 %12, -4
  store i64 %13, i64* %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sub nsw i32 %14, 4
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %5, align 8
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32* %19, i32** %10, align 8
  br label %20

20:                                               ; preds = %89, %4
  br label %21

21:                                               ; preds = %56, %20
  %22 = load i32*, i32** %9, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = icmp uge i32* %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32*, i32** %9, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = ptrtoint i32* %26 to i64
  %29 = ptrtoint i32* %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 4
  ret i64 %31

32:                                               ; preds = %21
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  store i32* %34, i32** %9, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 -4
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 64
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 -3
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 192
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %39, %32
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 -4
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 127
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 -3
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %53, 192
  br i1 %54, label %55, label %56

55:                                               ; preds = %50, %39
  br label %57

56:                                               ; preds = %50, %45
  br label %21

57:                                               ; preds = %55
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 -4
  %60 = call i32 @GetBe32(i32* %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = shl i32 %61, 2
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %57
  %66 = load i32, i32* %7, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = ptrtoint i32* %67 to i64
  %70 = ptrtoint i32* %68 to i64
  %71 = sub i64 %69, %70
  %72 = sdiv exact i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = add nsw i32 %66, %73
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %11, align 4
  br label %89

77:                                               ; preds = %57
  %78 = load i32, i32* %7, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = ptrtoint i32* %79 to i64
  %82 = ptrtoint i32* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 4
  %85 = trunc i64 %84 to i32
  %86 = add nsw i32 %78, %85
  %87 = load i32, i32* %11, align 4
  %88 = sub nsw i32 %87, %86
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %77, %65
  %90 = load i32, i32* %11, align 4
  %91 = and i32 %90, 33554431
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = sub nsw i32 %92, 16777216
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = xor i32 %94, -16777216
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = ashr i32 %96, 2
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = or i32 %98, 1073741824
  store i32 %99, i32* %11, align 4
  %100 = load i32*, i32** %9, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 -4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @SetBe32(i32* %101, i32 %102)
  br label %20
}

declare dso_local i32 @GetBe32(i32*) #1

declare dso_local i32 @SetBe32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
