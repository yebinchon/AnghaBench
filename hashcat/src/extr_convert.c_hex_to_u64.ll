; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_convert.c_hex_to_u64.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_convert.c_hex_to_u64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hex_to_u64(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 1
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @hex_convert(i32 %6)
  %8 = trunc i64 %7 to i32
  %9 = shl i32 %8, 0
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @hex_convert(i32 %14)
  %16 = trunc i64 %15 to i32
  %17 = shl i32 %16, 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @hex_convert(i32 %22)
  %24 = trunc i64 %23 to i32
  %25 = shl i32 %24, 8
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32*, i32** %2, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @hex_convert(i32 %30)
  %32 = trunc i64 %31 to i32
  %33 = shl i32 %32, 12
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load i32*, i32** %2, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 5
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @hex_convert(i32 %38)
  %40 = trunc i64 %39 to i32
  %41 = shl i32 %40, 16
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load i32*, i32** %2, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @hex_convert(i32 %46)
  %48 = trunc i64 %47 to i32
  %49 = shl i32 %48, 20
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load i32*, i32** %2, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 7
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @hex_convert(i32 %54)
  %56 = trunc i64 %55 to i32
  %57 = shl i32 %56, 24
  %58 = load i32, i32* %3, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %3, align 4
  %60 = load i32*, i32** %2, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 6
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @hex_convert(i32 %62)
  %64 = trunc i64 %63 to i32
  %65 = shl i32 %64, 28
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %3, align 4
  %68 = load i32*, i32** %2, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 9
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @hex_convert(i32 %70)
  %72 = trunc i64 %71 to i32
  %73 = shl i32 %72, 32
  %74 = load i32, i32* %3, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %3, align 4
  %76 = load i32*, i32** %2, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 8
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @hex_convert(i32 %78)
  %80 = trunc i64 %79 to i32
  %81 = shl i32 %80, 36
  %82 = load i32, i32* %3, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %3, align 4
  %84 = load i32*, i32** %2, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 11
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @hex_convert(i32 %86)
  %88 = trunc i64 %87 to i32
  %89 = shl i32 %88, 40
  %90 = load i32, i32* %3, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %3, align 4
  %92 = load i32*, i32** %2, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 10
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @hex_convert(i32 %94)
  %96 = trunc i64 %95 to i32
  %97 = shl i32 %96, 44
  %98 = load i32, i32* %3, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %3, align 4
  %100 = load i32*, i32** %2, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 13
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @hex_convert(i32 %102)
  %104 = trunc i64 %103 to i32
  %105 = shl i32 %104, 48
  %106 = load i32, i32* %3, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %3, align 4
  %108 = load i32*, i32** %2, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 12
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @hex_convert(i32 %110)
  %112 = trunc i64 %111 to i32
  %113 = shl i32 %112, 52
  %114 = load i32, i32* %3, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %3, align 4
  %116 = load i32*, i32** %2, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 15
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @hex_convert(i32 %118)
  %120 = trunc i64 %119 to i32
  %121 = shl i32 %120, 56
  %122 = load i32, i32* %3, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %3, align 4
  %124 = load i32*, i32** %2, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 14
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @hex_convert(i32 %126)
  %128 = trunc i64 %127 to i32
  %129 = shl i32 %128, 60
  %130 = load i32, i32* %3, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %3, align 4
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i64 @hex_convert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
