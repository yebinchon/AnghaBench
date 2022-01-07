; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_util.c_git__hash.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_util.c_git__hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git__hash(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sdiv i32 %18, 4
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = mul nsw i32 %21, 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = mul nsw i32 %26, 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  store i32* %29, i32** %10, align 8
  %30 = load i32, i32* %6, align 4
  %31 = xor i32 -1759636613, %30
  store i32 %31, i32* %11, align 4
  store i32 -1789642873, i32* %13, align 4
  store i32 718793509, i32* %14, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %15, align 4
  br label %34

34:                                               ; preds = %63, %3
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %34
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %12, align 4
  %45 = mul nsw i32 %44, %43
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 (i32, i32, ...) bitcast (i32 (...)* @git__rotl to i32 (i32, i32, ...)*)(i32 %46, i32 11)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %12, align 4
  %50 = mul nsw i32 %49, %48
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  %53 = xor i32 %52, %51
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = mul nsw i32 %54, 3
  %56 = add nsw i32 %55, 1390208809
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %13, align 4
  %58 = mul nsw i32 %57, 5
  %59 = add nsw i32 %58, 2071795100
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %14, align 4
  %61 = mul nsw i32 %60, 5
  %62 = add nsw i32 %61, 1808688022
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %37
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %15, align 4
  br label %34

66:                                               ; preds = %34
  store i32 0, i32* %12, align 4
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, 3
  switch i32 %68, label %109 [
    i32 3, label %69
    i32 2, label %76
    i32 1, label %83
  ]

69:                                               ; preds = %66
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 16
  %74 = load i32, i32* %12, align 4
  %75 = xor i32 %74, %73
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %66, %69
  %77 = load i32*, i32** %10, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 8
  %81 = load i32, i32* %12, align 4
  %82 = xor i32 %81, %80
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %66, %76
  %84 = load i32*, i32** %10, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %12, align 4
  %88 = xor i32 %87, %86
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %12, align 4
  %91 = mul nsw i32 %90, %89
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 (i32, i32, ...) bitcast (i32 (...)* @git__rotl to i32 (i32, i32, ...)*)(i32 %92, i32 11)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %12, align 4
  %96 = mul nsw i32 %95, %94
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %11, align 4
  %99 = xor i32 %98, %97
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = mul nsw i32 %100, 3
  %102 = add nsw i32 %101, 1390208809
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %13, align 4
  %104 = mul nsw i32 %103, 5
  %105 = add nsw i32 %104, 2071795100
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %14, align 4
  %107 = mul nsw i32 %106, 5
  %108 = add nsw i32 %107, 1808688022
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %83, %66
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %11, align 4
  %112 = xor i32 %111, %110
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = ashr i32 %113, 16
  %115 = load i32, i32* %11, align 4
  %116 = xor i32 %115, %114
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = mul i32 %117, -2048144789
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = ashr i32 %119, 13
  %121 = load i32, i32* %11, align 4
  %122 = xor i32 %121, %120
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = mul i32 %123, -1028477387
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = ashr i32 %125, 16
  %127 = load i32, i32* %11, align 4
  %128 = xor i32 %127, %126
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %11, align 4
  ret i32 %129
}

declare dso_local i32 @git__rotl(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
