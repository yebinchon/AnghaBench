; ModuleID = '/home/carl/AnghaBench/lede/package/lean/luci-app-xlnetacc/tools/po2lmo/src/extr_template_lmo.c_sfh_hash.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/luci-app-xlnetacc/tools/po2lmo/src/extr_template_lmo.c_sfh_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sfh_hash(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %123

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 3
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  %20 = ashr i32 %19, 2
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %45, %16
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %21
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @sfh_get16(i8* %25)
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  %31 = call i32 @sfh_get16(i8* %30)
  %32 = shl i32 %31, 11
  %33 = load i32, i32* %6, align 4
  %34 = xor i32 %32, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = shl i32 %35, 16
  %37 = load i32, i32* %7, align 4
  %38 = xor i32 %36, %37
  store i32 %38, i32* %6, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 8
  store i8* %40, i8** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 %41, 11
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %24
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %5, align 4
  br label %21

48:                                               ; preds = %21
  %49 = load i32, i32* %8, align 4
  switch i32 %49, label %97 [
    i32 3, label %50
    i32 2, label %70
    i32 1, label %83
  ]

50:                                               ; preds = %48
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @sfh_get16(i8* %51)
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = shl i32 %55, 16
  %57 = load i32, i32* %6, align 4
  %58 = xor i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 4
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = shl i32 %62, 18
  %64 = load i32, i32* %6, align 4
  %65 = xor i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = ashr i32 %66, 11
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %97

70:                                               ; preds = %48
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @sfh_get16(i8* %71)
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = shl i32 %75, 11
  %77 = load i32, i32* %6, align 4
  %78 = xor i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = ashr i32 %79, 17
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %6, align 4
  br label %97

83:                                               ; preds = %48
  %84 = load i8*, i8** %4, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = shl i32 %89, 10
  %91 = load i32, i32* %6, align 4
  %92 = xor i32 %91, %90
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = ashr i32 %93, 1
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %83, %48, %70, %50
  %98 = load i32, i32* %6, align 4
  %99 = shl i32 %98, 3
  %100 = load i32, i32* %6, align 4
  %101 = xor i32 %100, %99
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = ashr i32 %102, 5
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = shl i32 %106, 4
  %108 = load i32, i32* %6, align 4
  %109 = xor i32 %108, %107
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = ashr i32 %110, 17
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = shl i32 %114, 25
  %116 = load i32, i32* %6, align 4
  %117 = xor i32 %116, %115
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = ashr i32 %118, 6
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %97, %15
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @sfh_get16(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
