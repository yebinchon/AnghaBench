; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_prepare_quoted_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-data.c_prepare_quoted_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dyn_cur = common dso_local global i8* null, align 8
@Qq = common dso_local global i32 0, align 4
@MAX_QUERY_QUOTES = common dso_local global i32 0, align 4
@QStr = common dso_local global i8** null, align 8
@dyn_top = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @prepare_quoted_query(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** @dyn_cur, align 8
  store i8* %9, i8** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* @Qq, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %4, align 8
  store i8 0, i8* %10, align 1
  br label %12

12:                                               ; preds = %117, %1
  %13 = load i8*, i8** %3, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %122

16:                                               ; preds = %12
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @get_notword(i8* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %122

22:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %35, %22
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %3, align 8
  %29 = load i8, i8* %27, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 34
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %32, %26
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %7, align 4
  br label %23

38:                                               ; preds = %23
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %85

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %41
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 -1
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 32
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %4, align 8
  store i8 32, i8* %51, align 1
  br label %53

53:                                               ; preds = %50, %44
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 -2
  %56 = load i8, i8* %55, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @Qq, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* @Qq, align 4
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %4, align 8
  store i8 0, i8* %62, align 1
  store i32 0, i32* %6, align 4
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %61, %41
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %66
  %71 = load i32, i32* @Qq, align 4
  %72 = load i32, i32* @MAX_QUERY_QUOTES, align 4
  %73 = sub nsw i32 %72, 1
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %70
  %76 = load i8*, i8** %4, align 8
  %77 = load i8**, i8*** @QStr, align 8
  %78 = load i32, i32* @Qq, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @Qq, align 4
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8*, i8** %77, i64 %80
  store i8* %76, i8** %81, align 8
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %4, align 8
  store i8 32, i8* %82, align 1
  store i32 1, i32* %6, align 4
  br label %84

84:                                               ; preds = %75, %70, %66
  br label %99

85:                                               ; preds = %38
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 -1
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 32
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i8*, i8** %4, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %4, align 8
  store i8 32, i8* %95, align 1
  br label %97

97:                                               ; preds = %94, %88
  br label %98

98:                                               ; preds = %97, %85
  br label %99

99:                                               ; preds = %98, %84
  %100 = load i8*, i8** %3, align 8
  %101 = call i32 @get_word(i8* %100)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp sge i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load i32, i32* %7, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %99
  %109 = load i8*, i8** %4, align 8
  %110 = load i8*, i8** %3, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @lc_str(i8* %109, i8* %110, i32 %111)
  %113 = load i32, i32* %7, align 4
  %114 = load i8*, i8** %4, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %4, align 8
  br label %117

117:                                              ; preds = %108, %99
  %118 = load i32, i32* %7, align 4
  %119 = load i8*, i8** %3, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  store i8* %121, i8** %3, align 8
  br label %12

122:                                              ; preds = %21, %12
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %145

125:                                              ; preds = %122
  %126 = load i8*, i8** %4, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 -1
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 32
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load i8*, i8** %4, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %4, align 8
  store i8 32, i8* %132, align 1
  br label %134

134:                                              ; preds = %131, %125
  %135 = load i8*, i8** %4, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 -2
  %137 = load i8, i8* %136, align 1
  %138 = icmp ne i8 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %134
  %140 = load i32, i32* @Qq, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* @Qq, align 4
  br label %142

142:                                              ; preds = %139, %134
  %143 = load i8*, i8** %4, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %4, align 8
  store i8 0, i8* %143, align 1
  br label %145

145:                                              ; preds = %142, %122
  %146 = load i8*, i8** %4, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 8
  %148 = load i8*, i8** @dyn_top, align 8
  %149 = icmp ult i8* %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = load i32, i32* @Qq, align 4
  %153 = icmp sge i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %145
  %155 = load i32, i32* @Qq, align 4
  %156 = load i32, i32* @MAX_QUERY_QUOTES, align 4
  %157 = icmp slt i32 %155, %156
  br label %158

158:                                              ; preds = %154, %145
  %159 = phi i1 [ false, %145 ], [ %157, %154 ]
  %160 = zext i1 %159 to i32
  %161 = call i32 @assert(i32 %160)
  %162 = load i32, i32* @Qq, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %158
  %165 = load i8*, i8** %4, align 8
  %166 = load i8*, i8** %4, align 8
  %167 = ptrtoint i8* %166 to i64
  %168 = sub nsw i64 0, %167
  %169 = and i64 %168, 7
  %170 = getelementptr inbounds i8, i8* %165, i64 %169
  store i8* %170, i8** @dyn_cur, align 8
  br label %171

171:                                              ; preds = %164, %158
  ret void
}

declare dso_local i32 @get_notword(i8*) #1

declare dso_local i32 @get_word(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lc_str(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
