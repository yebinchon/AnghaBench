; ModuleID = '/home/carl/AnghaBench/h2o/deps/hiredis/extr_sds.c_sdssplitlen.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/hiredis/extr_sds.c_sdssplitlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32** @sdssplitlen(i8* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32**, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %5
  store i32** null, i32*** %6, align 8
  br label %170

25:                                               ; preds = %21
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 8, %27
  %29 = trunc i64 %28 to i32
  %30 = call i32** @s_malloc(i32 %29)
  store i32** %30, i32*** %16, align 8
  %31 = load i32**, i32*** %16, align 8
  %32 = icmp eq i32** %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32** null, i32*** %6, align 8
  br label %170

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32*, i32** %11, align 8
  store i32 0, i32* %38, align 4
  %39 = load i32**, i32*** %16, align 8
  store i32** %39, i32*** %6, align 8
  br label %170

40:                                               ; preds = %34
  store i32 0, i32* %15, align 4
  br label %41

41:                                               ; preds = %122, %40
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %10, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sub nsw i32 %43, %45
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %125

48:                                               ; preds = %41
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 2
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load i32, i32* %13, align 4
  %55 = mul nsw i32 %54, 2
  store i32 %55, i32* %13, align 4
  %56 = load i32**, i32*** %16, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 8, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32** @s_realloc(i32** %56, i32 %60)
  store i32** %61, i32*** %17, align 8
  %62 = load i32**, i32*** %17, align 8
  %63 = icmp eq i32** %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %151

65:                                               ; preds = %53
  %66 = load i32**, i32*** %17, align 8
  store i32** %66, i32*** %16, align 8
  br label %67

67:                                               ; preds = %65, %48
  %68 = load i32, i32* %10, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %76, %80
  br i1 %81, label %91, label %82

82:                                               ; preds = %70, %67
  %83 = load i8*, i8** %7, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8*, i8** %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i64 @memcmp(i8* %86, i8* %87, i32 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %121

91:                                               ; preds = %82, %70
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %14, align 4
  %98 = sub nsw i32 %96, %97
  %99 = call i32* @sdsnewlen(i8* %95, i32 %98)
  %100 = load i32**, i32*** %16, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  store i32* %99, i32** %103, align 8
  %104 = load i32**, i32*** %16, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %91
  br label %151

111:                                              ; preds = %91
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %114, %115
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %10, align 4
  %119 = add nsw i32 %117, %118
  %120 = sub nsw i32 %119, 1
  store i32 %120, i32* %15, align 4
  br label %121

121:                                              ; preds = %111, %82
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %15, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %15, align 4
  br label %41

125:                                              ; preds = %41
  %126 = load i8*, i8** %7, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %14, align 4
  %132 = sub nsw i32 %130, %131
  %133 = call i32* @sdsnewlen(i8* %129, i32 %132)
  %134 = load i32**, i32*** %16, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32*, i32** %134, i64 %136
  store i32* %133, i32** %137, align 8
  %138 = load i32**, i32*** %16, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %125
  br label %151

145:                                              ; preds = %125
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32*, i32** %11, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i32**, i32*** %16, align 8
  store i32** %150, i32*** %6, align 8
  br label %170

151:                                              ; preds = %144, %110, %64
  store i32 0, i32* %18, align 4
  br label %152

152:                                              ; preds = %163, %151
  %153 = load i32, i32* %18, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %166

156:                                              ; preds = %152
  %157 = load i32**, i32*** %16, align 8
  %158 = load i32, i32* %18, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32*, i32** %157, i64 %159
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @sdsfree(i32* %161)
  br label %163

163:                                              ; preds = %156
  %164 = load i32, i32* %18, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %18, align 4
  br label %152

166:                                              ; preds = %152
  %167 = load i32**, i32*** %16, align 8
  %168 = call i32 @s_free(i32** %167)
  %169 = load i32*, i32** %11, align 8
  store i32 0, i32* %169, align 4
  store i32** null, i32*** %6, align 8
  br label %170

170:                                              ; preds = %166, %145, %37, %33, %24
  %171 = load i32**, i32*** %6, align 8
  ret i32** %171
}

declare dso_local i32** @s_malloc(i32) #1

declare dso_local i32** @s_realloc(i32**, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32* @sdsnewlen(i8*, i32) #1

declare dso_local i32 @sdsfree(i32*) #1

declare dso_local i32 @s_free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
