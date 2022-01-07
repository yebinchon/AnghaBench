; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_string.c_h2o_base64_encode.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_string.c_h2o_base64_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@h2o_base64_encode.MAP = internal global i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 1
@h2o_base64_encode.MAP_URL_ENCODED = internal global i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @h2o_base64_encode(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i8*, i8** @h2o_base64_encode.MAP_URL_ENCODED, align 8
  br label %22

20:                                               ; preds = %4
  %21 = load i8*, i8** @h2o_base64_encode.MAP, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i8* [ %19, %18 ], [ %21, %20 ]
  store i8* %23, i8** %11, align 8
  br label %24

24:                                               ; preds = %75, %22
  %25 = load i64, i64* %7, align 8
  %26 = icmp uge i64 %25, 3
  br i1 %26, label %27, label %80

27:                                               ; preds = %24
  %28 = load i32*, i32** %10, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 16
  %32 = load i32*, i32** %10, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 8
  %36 = or i32 %31, %35
  %37 = load i32*, i32** %10, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %36, %39
  store i32 %40, i32* %12, align 4
  %41 = load i8*, i8** %11, align 8
  %42 = load i32, i32* %12, align 4
  %43 = ashr i32 %42, 18
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %9, align 8
  store i8 %46, i8* %47, align 1
  %49 = load i8*, i8** %11, align 8
  %50 = load i32, i32* %12, align 4
  %51 = ashr i32 %50, 12
  %52 = and i32 %51, 63
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %49, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %9, align 8
  store i8 %55, i8* %56, align 1
  %58 = load i8*, i8** %11, align 8
  %59 = load i32, i32* %12, align 4
  %60 = ashr i32 %59, 6
  %61 = and i32 %60, 63
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = load i8*, i8** %9, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %9, align 8
  store i8 %64, i8* %65, align 1
  %67 = load i8*, i8** %11, align 8
  %68 = load i32, i32* %12, align 4
  %69 = and i32 %68, 63
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %9, align 8
  store i8 %72, i8* %73, align 1
  br label %75

75:                                               ; preds = %27
  %76 = load i32*, i32** %10, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  store i32* %77, i32** %10, align 8
  %78 = load i64, i64* %7, align 8
  %79 = sub i64 %78, 3
  store i64 %79, i64* %7, align 8
  br label %24

80:                                               ; preds = %24
  %81 = load i64, i64* %7, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %148

83:                                               ; preds = %80
  %84 = load i32*, i32** %10, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 16
  store i32 %87, i32* %12, align 4
  %88 = load i8*, i8** %11, align 8
  %89 = load i32, i32* %12, align 4
  %90 = ashr i32 %89, 18
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %88, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = load i8*, i8** %9, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %9, align 8
  store i8 %93, i8* %94, align 1
  %96 = load i64, i64* %7, align 8
  %97 = icmp eq i64 %96, 2
  br i1 %97, label %98, label %129

98:                                               ; preds = %83
  %99 = load i32*, i32** %10, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %101, 8
  %103 = load i32, i32* %12, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %12, align 4
  %105 = load i8*, i8** %11, align 8
  %106 = load i32, i32* %12, align 4
  %107 = ashr i32 %106, 12
  %108 = and i32 %107, 63
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %105, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = load i8*, i8** %9, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %9, align 8
  store i8 %111, i8* %112, align 1
  %114 = load i8*, i8** %11, align 8
  %115 = load i32, i32* %12, align 4
  %116 = ashr i32 %115, 6
  %117 = and i32 %116, 63
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %114, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = load i8*, i8** %9, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %9, align 8
  store i8 %120, i8* %121, align 1
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %98
  %126 = load i8*, i8** %9, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %9, align 8
  store i8 61, i8* %126, align 1
  br label %128

128:                                              ; preds = %125, %98
  br label %147

129:                                              ; preds = %83
  %130 = load i8*, i8** %11, align 8
  %131 = load i32, i32* %12, align 4
  %132 = ashr i32 %131, 12
  %133 = and i32 %132, 63
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %130, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = load i8*, i8** %9, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %9, align 8
  store i8 %136, i8* %137, align 1
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %129
  %142 = load i8*, i8** %9, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %9, align 8
  store i8 61, i8* %142, align 1
  %144 = load i8*, i8** %9, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %9, align 8
  store i8 61, i8* %144, align 1
  br label %146

146:                                              ; preds = %141, %129
  br label %147

147:                                              ; preds = %146, %128
  br label %148

148:                                              ; preds = %147, %80
  %149 = load i8*, i8** %9, align 8
  store i8 0, i8* %149, align 1
  %150 = load i8*, i8** %9, align 8
  %151 = load i8*, i8** %5, align 8
  %152 = ptrtoint i8* %150 to i64
  %153 = ptrtoint i8* %151 to i64
  %154 = sub i64 %152, %153
  ret i64 %154
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
