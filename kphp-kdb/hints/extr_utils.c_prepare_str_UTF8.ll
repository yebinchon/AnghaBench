; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_utils.c_prepare_str_UTF8.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_utils.c_prepare_str_UTF8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prep_ibuf = common dso_local global i32* null, align 8
@words_ibuf = common dso_local global i32** null, align 8
@stricmp_void = common dso_local global i32 0, align 4
@prep_ibuf_res = common dso_local global i32* null, align 8
@MAX_NAME_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @prepare_str_UTF8(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** @prep_ibuf, align 8
  store i32* %10, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %29, %1
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %11
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @convert_prep(i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %24, i32* %28, align 4
  br label %29

29:                                               ; preds = %18
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %11

32:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %42, %32
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 32
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %34

45:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %90, %45
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %91

50:                                               ; preds = %46
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32**, i32*** @words_ibuf, align 8
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32*, i32** %55, i64 %58
  store i32* %54, i32** %59, align 8
  br label %60

60:                                               ; preds = %76, %50
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 32
  br label %74

74:                                               ; preds = %67, %60
  %75 = phi i1 [ false, %60 ], [ %73, %67 ]
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %60

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %87, %79
  %81 = load i32*, i32** %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 32
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %80

90:                                               ; preds = %80
  br label %46

91:                                               ; preds = %46
  %92 = load i32*, i32** %3, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 32, i32* %95, align 4
  store i32 0, i32* %6, align 4
  %96 = load i32**, i32*** @words_ibuf, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @stricmp_void, align 4
  %99 = call i32 @qsort(i32** %96, i32 %97, i32 8, i32 %98)
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %144, %91
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %147

104:                                              ; preds = %100
  %105 = load i32, i32* %4, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %121, label %107

107:                                              ; preds = %104
  %108 = load i32**, i32*** @words_ibuf, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32*, i32** %108, i64 %111
  %113 = load i32*, i32** %112, align 8
  %114 = load i32**, i32*** @words_ibuf, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32*, i32** %114, i64 %116
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @ispref(i32* %113, i32* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %132, label %121

121:                                              ; preds = %107, %104
  %122 = load i32**, i32*** @words_ibuf, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = load i32**, i32*** @words_ibuf, align 8
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %6, align 4
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32*, i32** %127, i64 %130
  store i32* %126, i32** %131, align 8
  br label %143

132:                                              ; preds = %107
  %133 = load i32**, i32*** @words_ibuf, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32*, i32** %133, i64 %135
  %137 = load i32*, i32** %136, align 8
  %138 = load i32**, i32*** @words_ibuf, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sub nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32*, i32** %138, i64 %141
  store i32* %137, i32** %142, align 8
  br label %143

143:                                              ; preds = %132, %121
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %4, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %4, align 4
  br label %100

147:                                              ; preds = %100
  %148 = load i32, i32* %6, align 4
  store i32 %148, i32* %7, align 4
  %149 = load i32*, i32** @prep_ibuf_res, align 8
  store i32* %149, i32** %8, align 8
  store i32 0, i32* %4, align 4
  br label %150

150:                                              ; preds = %173, %147
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %176

154:                                              ; preds = %150
  %155 = load i32**, i32*** @words_ibuf, align 8
  %156 = load i32, i32* %4, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %155, i64 %157
  %159 = load i32*, i32** %158, align 8
  store i32* %159, i32** %9, align 8
  br label %160

160:                                              ; preds = %164, %154
  %161 = load i32*, i32** %9, align 8
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 32
  br i1 %163, label %164, label %170

164:                                              ; preds = %160
  %165 = load i32*, i32** %9, align 8
  %166 = getelementptr inbounds i32, i32* %165, i32 1
  store i32* %166, i32** %9, align 8
  %167 = load i32, i32* %165, align 4
  %168 = load i32*, i32** %8, align 8
  %169 = getelementptr inbounds i32, i32* %168, i32 1
  store i32* %169, i32** %8, align 8
  store i32 %167, i32* %168, align 4
  br label %160

170:                                              ; preds = %160
  %171 = load i32*, i32** %8, align 8
  %172 = getelementptr inbounds i32, i32* %171, i32 1
  store i32* %172, i32** %8, align 8
  store i32 43, i32* %171, align 4
  br label %173

173:                                              ; preds = %170
  %174 = load i32, i32* %4, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %4, align 4
  br label %150

176:                                              ; preds = %150
  %177 = load i32*, i32** %8, align 8
  %178 = getelementptr inbounds i32, i32* %177, i32 1
  store i32* %178, i32** %8, align 8
  store i32 0, i32* %177, align 4
  %179 = load i32*, i32** %8, align 8
  %180 = load i32*, i32** @prep_ibuf_res, align 8
  %181 = ptrtoint i32* %179 to i64
  %182 = ptrtoint i32* %180 to i64
  %183 = sub i64 %181, %182
  %184 = sdiv exact i64 %183, 4
  %185 = load i32, i32* @MAX_NAME_SIZE, align 4
  %186 = sext i32 %185 to i64
  %187 = icmp slt i64 %184, %186
  %188 = zext i1 %187 to i32
  %189 = call i32 @assert(i32 %188)
  %190 = load i32*, i32** @prep_ibuf_res, align 8
  ret i32* %190
}

declare dso_local i32 @convert_prep(i32) #1

declare dso_local i32 @qsort(i32**, i32, i32, i32) #1

declare dso_local i32 @ispref(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
