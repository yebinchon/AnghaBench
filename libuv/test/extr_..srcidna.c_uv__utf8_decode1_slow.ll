; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_..srcidna.c_uv__utf8_decode1_slow.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_..srcidna.c_uv__utf8_decode1_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i32)* @uv__utf8_decode1_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv__utf8_decode1_slow(i8** %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ugt i32 %12, 247
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %118

15:                                               ; preds = %3
  %16 = load i8**, i8*** %5, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = ptrtoint i8* %17 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  switch i64 %21, label %22 [
    i64 2, label %44
    i64 1, label %62
  ]

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  %24 = icmp ugt i32 %23, 239
  br i1 %24, label %25, label %43

25:                                               ; preds = %22
  store i32 65536, i32* %11, align 4
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, 7
  store i32 %27, i32* %7, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %28, align 8
  %31 = load i8, i8* %29, align 1
  %32 = zext i8 %31 to i32
  store i32 %32, i32* %8, align 4
  %33 = load i8**, i8*** %5, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %33, align 8
  %36 = load i8, i8* %34, align 1
  %37 = zext i8 %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load i8**, i8*** %5, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %38, align 8
  %41 = load i8, i8* %39, align 1
  %42 = zext i8 %41 to i32
  store i32 %42, i32* %10, align 4
  br label %75

43:                                               ; preds = %22
  br label %44

44:                                               ; preds = %15, %43
  %45 = load i32, i32* %7, align 4
  %46 = icmp ugt i32 %45, 223
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  store i32 2048, i32* %11, align 4
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, 15
  %50 = or i32 128, %49
  store i32 %50, i32* %8, align 4
  %51 = load i8**, i8*** %5, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %51, align 8
  %54 = load i8, i8* %52, align 1
  %55 = zext i8 %54 to i32
  store i32 %55, i32* %9, align 4
  %56 = load i8**, i8*** %5, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %56, align 8
  %59 = load i8, i8* %57, align 1
  %60 = zext i8 %59 to i32
  store i32 %60, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %75

61:                                               ; preds = %44
  br label %62

62:                                               ; preds = %15, %61
  %63 = load i32, i32* %7, align 4
  %64 = icmp ugt i32 %63, 191
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  store i32 128, i32* %11, align 4
  store i32 128, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, 31
  %68 = or i32 128, %67
  store i32 %68, i32* %9, align 4
  %69 = load i8**, i8*** %5, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %69, align 8
  %72 = load i8, i8* %70, align 1
  %73 = zext i8 %72 to i32
  store i32 %73, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %75

74:                                               ; preds = %62
  store i32 -1, i32* %4, align 4
  br label %118

75:                                               ; preds = %65, %47, %25
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = xor i32 %76, %77
  %79 = load i32, i32* %10, align 4
  %80 = xor i32 %78, %79
  %81 = and i32 192, %80
  %82 = icmp ne i32 128, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  store i32 -1, i32* %4, align 4
  br label %118

84:                                               ; preds = %75
  %85 = load i32, i32* %8, align 4
  %86 = and i32 %85, 63
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = and i32 %87, 63
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = and i32 %89, 63
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %7, align 4
  %92 = shl i32 %91, 18
  %93 = load i32, i32* %8, align 4
  %94 = shl i32 %93, 12
  %95 = or i32 %92, %94
  %96 = load i32, i32* %9, align 4
  %97 = shl i32 %96, 6
  %98 = or i32 %95, %97
  %99 = load i32, i32* %10, align 4
  %100 = or i32 %98, %99
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %84
  store i32 -1, i32* %4, align 4
  br label %118

105:                                              ; preds = %84
  %106 = load i32, i32* %7, align 4
  %107 = icmp ugt i32 %106, 1114111
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 -1, i32* %4, align 4
  br label %118

109:                                              ; preds = %105
  %110 = load i32, i32* %7, align 4
  %111 = icmp uge i32 %110, 55296
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i32, i32* %7, align 4
  %114 = icmp ule i32 %113, 57343
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 -1, i32* %4, align 4
  br label %118

116:                                              ; preds = %112, %109
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %116, %115, %108, %104, %83, %74, %14
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
