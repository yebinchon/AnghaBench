; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libiconv/src/extr_iconv.c_utf8dec_wchar.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libiconv/src/extr_iconv.c_utf8dec_wchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64)* @utf8dec_wchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8dec_wchar(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 -1, i32* %9, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp sle i32 %12, 127
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  store i32 1, i32* %4, align 4
  br label %129

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 224
  %24 = icmp eq i32 %23, 192
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 2, i32* %9, align 4
  br label %58

26:                                               ; preds = %19
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 240
  %31 = icmp eq i32 %30, 224
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 3, i32* %9, align 4
  br label %57

33:                                               ; preds = %26
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 248
  %38 = icmp eq i32 %37, 240
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 4, i32* %9, align 4
  br label %56

40:                                               ; preds = %33
  %41 = load i8*, i8** %6, align 8
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 252
  %45 = icmp eq i32 %44, 248
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 5, i32* %9, align 4
  br label %55

47:                                               ; preds = %40
  %48 = load i8*, i8** %6, align 8
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 254
  %52 = icmp eq i32 %51, 252
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 6, i32* %9, align 4
  br label %54

54:                                               ; preds = %53, %47
  br label %55

55:                                               ; preds = %54, %46
  br label %56

56:                                               ; preds = %55, %39
  br label %57

57:                                               ; preds = %56, %32
  br label %58

58:                                               ; preds = %57, %25
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %7, align 8
  %62 = icmp ugt i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 -2, i32* %4, align 4
  br label %129

64:                                               ; preds = %58
  %65 = load i32, i32* %9, align 4
  %66 = icmp sgt i32 %65, 1
  br i1 %66, label %67, label %128

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %68, 5
  br i1 %69, label %70, label %128

70:                                               ; preds = %67
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i64 @utf8seq_is_overlong(i8* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %70
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i64 @utf8seq_is_surrogate(i8* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load i8*, i8** %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i64 @utf8seq_is_illegal(i8* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80, %75, %70
  store i32 -1, i32* %4, align 4
  br label %129

86:                                               ; preds = %80
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %6, align 8
  %89 = load i8, i8* %87, align 1
  %90 = zext i8 %89 to i32
  %91 = load i32, i32* %9, align 4
  %92 = ashr i32 127, %91
  %93 = and i32 %90, %92
  %94 = trunc i32 %93 to i8
  %95 = sext i8 %94 to i32
  %96 = load i32*, i32** %5, align 8
  store i32 %95, i32* %96, align 4
  store i32 1, i32* %8, align 4
  br label %97

97:                                               ; preds = %123, %86
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %126

101:                                              ; preds = %97
  %102 = load i8*, i8** %6, align 8
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp slt i32 %104, 128
  br i1 %105, label %111, label %106

106:                                              ; preds = %101
  %107 = load i8*, i8** %6, align 8
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp sgt i32 %109, 191
  br i1 %110, label %111, label %112

111:                                              ; preds = %106, %101
  store i32 -1, i32* %4, align 4
  br label %129

112:                                              ; preds = %106
  %113 = load i32*, i32** %5, align 8
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 6
  %116 = load i8*, i8** %6, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %6, align 8
  %118 = load i8, i8* %116, align 1
  %119 = zext i8 %118 to i32
  %120 = and i32 %119, 63
  %121 = or i32 %115, %120
  %122 = load i32*, i32** %5, align 8
  store i32 %121, i32* %122, align 4
  br label %123

123:                                              ; preds = %112
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %97

126:                                              ; preds = %97
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %4, align 4
  br label %129

128:                                              ; preds = %67, %64
  store i32 -1, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %126, %111, %85, %63, %14
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i64 @utf8seq_is_overlong(i8*, i32) #1

declare dso_local i64 @utf8seq_is_surrogate(i8*, i32) #1

declare dso_local i64 @utf8seq_is_illegal(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
