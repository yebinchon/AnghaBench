; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Bra.c_ARM_Convert.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Bra.c_ARM_Convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ARM_Convert(i32* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i64, i64* %7, align 8
  %15 = and i64 %14, -4
  store i64 %15, i64* %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %16, 4
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** %6, align 8
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32* %21, i32** %11, align 8
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %73

24:                                               ; preds = %4
  br label %25

25:                                               ; preds = %46, %24
  br label %26

26:                                               ; preds = %45, %25
  %27 = load i32*, i32** %10, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = icmp uge i32* %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i32*, i32** %10, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = ptrtoint i32* %31 to i64
  %34 = ptrtoint i32* %32 to i64
  %35 = sub i64 %33, %34
  %36 = sdiv exact i64 %35, 4
  store i64 %36, i64* %5, align 8
  br label %122

37:                                               ; preds = %26
  %38 = load i32*, i32** %10, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  store i32* %39, i32** %10, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 -1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 235
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %46

45:                                               ; preds = %37
  br label %26

46:                                               ; preds = %44
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 -4
  %49 = call i32 @GetUi32(i32* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = shl i32 %50, 2
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = ptrtoint i32* %53 to i64
  %56 = ptrtoint i32* %54 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = add nsw i32 %52, %59
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = ashr i32 %63, 2
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = and i32 %65, 16777215
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = or i32 %67, -352321536
  store i32 %68, i32* %12, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 -4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @SetUi32(i32* %70, i32 %71)
  br label %25

73:                                               ; preds = %4
  br label %74

74:                                               ; preds = %95, %73
  br label %75

75:                                               ; preds = %94, %74
  %76 = load i32*, i32** %10, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = icmp uge i32* %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load i32*, i32** %10, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = ptrtoint i32* %80 to i64
  %83 = ptrtoint i32* %81 to i64
  %84 = sub i64 %82, %83
  %85 = sdiv exact i64 %84, 4
  store i64 %85, i64* %5, align 8
  br label %122

86:                                               ; preds = %75
  %87 = load i32*, i32** %10, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 4
  store i32* %88, i32** %10, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 -1
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 235
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %95

94:                                               ; preds = %86
  br label %75

95:                                               ; preds = %93
  %96 = load i32*, i32** %10, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 -4
  %98 = call i32 @GetUi32(i32* %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = shl i32 %99, 2
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32*, i32** %10, align 8
  %103 = load i32*, i32** %6, align 8
  %104 = ptrtoint i32* %102 to i64
  %105 = ptrtoint i32* %103 to i64
  %106 = sub i64 %104, %105
  %107 = sdiv exact i64 %106, 4
  %108 = trunc i64 %107 to i32
  %109 = add nsw i32 %101, %108
  %110 = load i32, i32* %13, align 4
  %111 = sub nsw i32 %110, %109
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %13, align 4
  %113 = ashr i32 %112, 2
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = and i32 %114, 16777215
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  %117 = or i32 %116, -352321536
  store i32 %117, i32* %13, align 4
  %118 = load i32*, i32** %10, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 -4
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @SetUi32(i32* %119, i32 %120)
  br label %74

122:                                              ; preds = %79, %30
  %123 = load i64, i64* %5, align 8
  ret i64 %123
}

declare dso_local i32 @GetUi32(i32*) #1

declare dso_local i32 @SetUi32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
