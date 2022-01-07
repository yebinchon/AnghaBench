; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-utils.c_tl_fetch_string.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-utils.c_tl_fetch_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_fetch_string(i32* %0, i32 %1, i8** %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8** %2, i8*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i8**, i8*** %9, align 8
  store i8* null, i8** %16, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = icmp uge i32* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %131

25:                                               ; preds = %5
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = and i32 %28, 255
  %30 = icmp ult i32 %29, 254
  br i1 %30, label %31, label %77

31:                                               ; preds = %25
  %32 = load i32, i32* %13, align 4
  %33 = and i32 %32, 255
  store i32 %33, i32* %13, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %13, align 4
  %38 = load i32*, i32** %10, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32*, i32** %12, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %13, align 4
  %43 = lshr i32 %42, 2
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = icmp uge i32* %40, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %39
  %49 = load i32*, i32** %7, align 8
  %50 = bitcast i32* %49 to i8*
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8* %51, i8** %14, align 8
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %48
  %55 = load i32, i32* %13, align 4
  %56 = add i32 %55, 1
  %57 = call i8* @tl_zzmalloc(i32 %56)
  %58 = load i8**, i8*** %9, align 8
  store i8* %57, i8** %58, align 8
  %59 = load i8**, i8*** %9, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @memcpy(i8* %60, i8* %61, i32 %62)
  %64 = load i8**, i8*** %9, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  store i8 0, i8* %68, align 1
  br label %72

69:                                               ; preds = %48
  %70 = load i8*, i8** %14, align 8
  %71 = load i8**, i8*** %9, align 8
  store i8* %70, i8** %71, align 8
  br label %72

72:                                               ; preds = %69, %54
  %73 = load i32, i32* %13, align 4
  %74 = lshr i32 %73, 2
  %75 = add i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %131

76:                                               ; preds = %39
  store i32 -1, i32* %6, align 4
  br label %131

77:                                               ; preds = %25
  %78 = load i32, i32* %13, align 4
  %79 = and i32 %78, 255
  %80 = icmp eq i32 %79, 254
  br i1 %80, label %81, label %130

81:                                               ; preds = %77
  %82 = load i32, i32* %13, align 4
  %83 = lshr i32 %82, 8
  store i32 %83, i32* %13, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* %13, align 4
  %88 = load i32*, i32** %10, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %81
  %90 = load i32, i32* %13, align 4
  %91 = icmp uge i32 %90, 254
  br i1 %91, label %92, label %129

92:                                               ; preds = %89
  %93 = load i32*, i32** %12, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %13, align 4
  %96 = add i32 %95, 7
  %97 = lshr i32 %96, 2
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %94, i64 %98
  %100 = icmp uge i32* %93, %99
  br i1 %100, label %101, label %129

101:                                              ; preds = %92
  %102 = load i32*, i32** %7, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = bitcast i32* %103 to i8*
  store i8* %104, i8** %15, align 8
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %101
  %108 = load i32, i32* %13, align 4
  %109 = add i32 %108, 1
  %110 = call i8* @tl_zzmalloc(i32 %109)
  %111 = load i8**, i8*** %9, align 8
  store i8* %110, i8** %111, align 8
  %112 = load i8**, i8*** %9, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = load i8*, i8** %15, align 8
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @memcpy(i8* %113, i8* %114, i32 %115)
  %117 = load i8**, i8*** %9, align 8
  %118 = load i8*, i8** %117, align 8
  %119 = load i32, i32* %13, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  store i8 0, i8* %121, align 1
  br label %125

122:                                              ; preds = %101
  %123 = load i8*, i8** %15, align 8
  %124 = load i8**, i8*** %9, align 8
  store i8* %123, i8** %124, align 8
  br label %125

125:                                              ; preds = %122, %107
  %126 = load i32, i32* %13, align 4
  %127 = add i32 %126, 7
  %128 = lshr i32 %127, 2
  store i32 %128, i32* %6, align 4
  br label %131

129:                                              ; preds = %92, %89
  store i32 -1, i32* %6, align 4
  br label %131

130:                                              ; preds = %77
  store i32 -1, i32* %6, align 4
  br label %131

131:                                              ; preds = %130, %129, %125, %76, %72, %24
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local i8* @tl_zzmalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
