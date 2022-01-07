; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-news-extension.c_news_generate_preget_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-news-extension.c_news_generate_preget_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.news_gather_extra = type { i32 }

@Rlen = common dso_local global i32* null, align 8
@Rfirst = common dso_local global i32* null, align 8
@NEWS_UG_EXTENSION = common dso_local global i64 0, align 8
@NEWS_G_EXTENSION = common dso_local global i64 0, align 8
@R = common dso_local global i32* null, align 8
@MAX_RES = common dso_local global i32 0, align 4
@Q = common dso_local global i32* null, align 8
@QN = common dso_local global i32* null, align 8
@NEWS_COMM_EXTENSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"set %slist%d 0 0 %d\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"object\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @news_generate_preget_query(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.news_gather_extra*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i32*, i32** @Rlen, align 8
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %204

25:                                               ; preds = %5
  %26 = load i8*, i8** %10, align 8
  %27 = bitcast i8* %26 to %struct.news_gather_extra*
  store %struct.news_gather_extra* %27, %struct.news_gather_extra** %12, align 8
  %28 = load i32*, i32** @Rlen, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  %33 = load i32*, i32** @Rfirst, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %15, align 4
  %38 = load i64, i64* @NEWS_UG_EXTENSION, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %25
  %41 = load i64, i64* @NEWS_G_EXTENSION, align 8
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %40, %25
  %44 = phi i1 [ true, %25 ], [ %42, %40 ]
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 808464432, i32 842018864
  %47 = load i32*, i32** @R, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i64, i64* @NEWS_UG_EXTENSION, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = load i64, i64* @NEWS_G_EXTENSION, align 8
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %52, %43
  %56 = phi i1 [ true, %43 ], [ %54, %52 ]
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 3
  %59 = mul nsw i32 %49, %58
  %60 = add nsw i32 1, %59
  %61 = load i32, i32* @MAX_RES, align 4
  %62 = icmp sle i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  store i32 0, i32* %14, align 4
  br label %65

65:                                               ; preds = %135, %55
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %138

69:                                               ; preds = %65
  %70 = load i32, i32* %15, align 4
  %71 = icmp sge i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i64, i64* @NEWS_UG_EXTENSION, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %69
  %77 = load i64, i64* @NEWS_G_EXTENSION, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %76, %69
  %80 = load i32*, i32** @Q, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** @R, align 8
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  store i32 %84, i32* %89, align 4
  br label %129

90:                                               ; preds = %76
  %91 = load i32*, i32** @Q, align 8
  %92 = load i32, i32* %15, align 4
  %93 = mul nsw i32 3, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** @R, align 8
  %98 = load i32, i32* %14, align 4
  %99 = mul nsw i32 3, %98
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %97, i64 %101
  store i32 %96, i32* %102, align 4
  %103 = load i32*, i32** @Q, align 8
  %104 = load i32, i32* %15, align 4
  %105 = mul nsw i32 3, %104
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** @R, align 8
  %111 = load i32, i32* %14, align 4
  %112 = mul nsw i32 3, %111
  %113 = add nsw i32 %112, 2
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %110, i64 %114
  store i32 %109, i32* %115, align 4
  %116 = load i32*, i32** @Q, align 8
  %117 = load i32, i32* %15, align 4
  %118 = mul nsw i32 3, %117
  %119 = add nsw i32 %118, 2
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %116, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** @R, align 8
  %124 = load i32, i32* %14, align 4
  %125 = mul nsw i32 3, %124
  %126 = add nsw i32 %125, 3
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %123, i64 %127
  store i32 %122, i32* %128, align 4
  br label %129

129:                                              ; preds = %90, %79
  %130 = load i32*, i32** @QN, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %15, align 4
  br label %135

135:                                              ; preds = %129
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %14, align 4
  br label %65

138:                                              ; preds = %65
  %139 = load i32, i32* %15, align 4
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i32, i32* %13, align 4
  %143 = icmp sgt i32 %142, 0
  br label %144

144:                                              ; preds = %141, %138
  %145 = phi i1 [ false, %138 ], [ %143, %141 ]
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = load i64, i64* @NEWS_COMM_EXTENSION, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load i32, i32* %13, align 4
  %152 = mul nsw i32 %151, 3
  store i32 %152, i32* %13, align 4
  br label %153

153:                                              ; preds = %150, %144
  %154 = load i64, i64* @NEWS_COMM_EXTENSION, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %153
  %157 = load i64, i64* @NEWS_UG_EXTENSION, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %156
  %160 = load i64, i64* @NEWS_G_EXTENSION, align 8
  %161 = icmp ne i64 %160, 0
  br label %162

162:                                              ; preds = %159, %156
  %163 = phi i1 [ true, %156 ], [ %161, %159 ]
  br label %164

164:                                              ; preds = %162, %153
  %165 = phi i1 [ true, %153 ], [ %163, %162 ]
  %166 = zext i1 %165 to i32
  %167 = call i32 @assert(i32 %166)
  %168 = load i64, i64* @NEWS_UG_EXTENSION, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %164
  %171 = load i64, i64* @NEWS_G_EXTENSION, align 8
  %172 = icmp ne i64 %171, 0
  br label %173

173:                                              ; preds = %170, %164
  %174 = phi i1 [ true, %164 ], [ %172, %170 ]
  %175 = zext i1 %174 to i64
  %176 = select i1 %174, i32 0, i32 1
  store i32 %176, i32* %17, align 4
  %177 = load i8*, i8** %7, align 8
  %178 = load i32, i32* %17, align 4
  %179 = icmp sle i32 %178, 0
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %182 = load %struct.news_gather_extra*, %struct.news_gather_extra** %12, align 8
  %183 = getelementptr inbounds %struct.news_gather_extra, %struct.news_gather_extra* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %13, align 4
  %186 = mul nsw i32 %185, 4
  %187 = add nsw i32 %186, 4
  %188 = call i32 @sprintf(i8* %177, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %181, i32 %184, i32 %187)
  store i32 %188, i32* %16, align 4
  %189 = load i8*, i8** %7, align 8
  %190 = load i32, i32* %16, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  %193 = load i32*, i32** @R, align 8
  %194 = load i32, i32* %13, align 4
  %195 = mul nsw i32 %194, 4
  %196 = add nsw i32 %195, 4
  %197 = call i32 @memcpy(i8* %192, i32* %193, i32 %196)
  %198 = load i32, i32* %13, align 4
  %199 = mul nsw i32 %198, 4
  %200 = add nsw i32 %199, 4
  %201 = load i32, i32* %16, align 4
  %202 = add nsw i32 %201, %200
  store i32 %202, i32* %16, align 4
  %203 = load i32, i32* %16, align 4
  store i32 %203, i32* %6, align 4
  br label %204

204:                                              ; preds = %173, %24
  %205 = load i32, i32* %6, align 4
  ret i32 %205
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
