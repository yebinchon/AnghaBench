; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_word-split.c_get_word.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_word-split.c_get_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@word_split_utf8 = common dso_local global i64 0, align 8
@get_word.inside_star = internal global i32 0, align 4
@is_letter = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_word(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i64, i64* @word_split_utf8, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @get_word_utf8(i8* %14)
  store i32 %15, i32* %2, align 4
  br label %216

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load i32*, i32** @is_letter, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 64
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %16
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 42
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 1, i32* @get_word.inside_star, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, i32* %6, align 4
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = call i32 @sigil_word_detect(i32 %32, i8* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 42
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 0, i32* @get_word.inside_star, align 4
  br label %39

39:                                               ; preds = %38, %31
  %40 = load i32, i32* %7, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 127
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %2, align 4
  br label %216

48:                                               ; preds = %42, %39
  br label %49

49:                                               ; preds = %48, %16
  br label %50

50:                                               ; preds = %213, %200, %49
  %51 = load i32, i32* %4, align 4
  %52 = icmp sle i32 %51, 120
  br i1 %52, label %53, label %214

53:                                               ; preds = %50
  %54 = load i8*, i8** %3, align 8
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  store i32 %56, i32* %6, align 4
  %57 = load i32*, i32** @is_letter, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %53
  %65 = load i8*, i8** %3, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  %69 = icmp eq i32 %68, 127
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %214

71:                                               ; preds = %64
  br label %213

72:                                               ; preds = %53
  %73 = load i32*, i32** @is_letter, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %72
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @get_word.inside_star, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 30, i32 4
  %86 = icmp eq i32 %81, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %214

88:                                               ; preds = %80
  %89 = load i8*, i8** %3, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %3, align 8
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %212

95:                                               ; preds = %72
  %96 = load i32, i32* %6, align 4
  %97 = icmp eq i32 %96, 38
  br i1 %97, label %98, label %211

98:                                               ; preds = %95
  %99 = load i8*, i8** %3, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 35
  br i1 %103, label %104, label %210

104:                                              ; preds = %98
  store i32 0, i32* %9, align 4
  store i32 2, i32* %8, align 4
  br label %105

105:                                              ; preds = %138, %104
  %106 = load i32, i32* %8, align 4
  %107 = icmp sle i32 %106, 7
  br i1 %107, label %108, label %124

108:                                              ; preds = %105
  %109 = load i8*, i8** %3, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp sle i32 %114, 57
  br i1 %115, label %116, label %124

116:                                              ; preds = %108
  %117 = load i8*, i8** %3, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp sge i32 %122, 48
  br label %124

124:                                              ; preds = %116, %108, %105
  %125 = phi i1 [ false, %108 ], [ false, %105 ], [ %123, %116 ]
  br i1 %125, label %126, label %141

126:                                              ; preds = %124
  %127 = load i32, i32* %9, align 4
  %128 = mul nsw i32 %127, 10
  store i32 %128, i32* %9, align 4
  %129 = load i8*, i8** %3, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = sub nsw i32 %134, 48
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %9, align 4
  br label %138

138:                                              ; preds = %126
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %105

141:                                              ; preds = %124
  %142 = load i8*, i8** %3, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 59
  br i1 %148, label %149, label %209

149:                                              ; preds = %141
  %150 = load i32, i32* %9, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %209

152:                                              ; preds = %149
  %153 = load i32, i32* %9, align 4
  %154 = icmp slt i32 %153, 4096
  br i1 %154, label %155, label %209

155:                                              ; preds = %152
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %4, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %188, label %160

160:                                              ; preds = %155
  %161 = load i32, i32* %9, align 4
  %162 = icmp slt i32 %161, 128
  br i1 %162, label %163, label %188

163:                                              ; preds = %160
  %164 = load i32*, i32** @is_letter, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, 64
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %188

171:                                              ; preds = %163
  %172 = load i32, i32* %9, align 4
  %173 = load i8*, i8** %3, align 8
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %173, i64 %175
  %177 = call i32 @sigil_word_detect(i32 %172, i8* %176)
  store i32 %177, i32* %10, align 4
  %178 = load i32, i32* %10, align 4
  %179 = icmp sge i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %171
  %181 = load i32, i32* %10, align 4
  %182 = icmp slt i32 %181, 120
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %184, %185
  store i32 %186, i32* %2, align 4
  br label %216

187:                                              ; preds = %180, %171
  br label %188

188:                                              ; preds = %187, %163, %160, %155
  %189 = load i32, i32* %9, align 4
  %190 = icmp sge i32 %189, 192
  br i1 %190, label %191, label %208

191:                                              ; preds = %188
  %192 = load i32, i32* %9, align 4
  %193 = icmp sle i32 %192, 255
  br i1 %193, label %194, label %208

194:                                              ; preds = %191
  %195 = load i32, i32* %9, align 4
  %196 = icmp ne i32 %195, 215
  br i1 %196, label %197, label %208

197:                                              ; preds = %194
  %198 = load i32, i32* %9, align 4
  %199 = icmp ne i32 %198, 247
  br i1 %199, label %200, label %208

200:                                              ; preds = %197
  %201 = load i32, i32* %8, align 4
  %202 = load i8*, i8** %3, align 8
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i8, i8* %202, i64 %203
  store i8* %204, i8** %3, align 8
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* %4, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %4, align 4
  br label %50

208:                                              ; preds = %197, %194, %191, %188
  br label %209

209:                                              ; preds = %208, %152, %149, %141
  br label %210

210:                                              ; preds = %209, %98
  br label %214

211:                                              ; preds = %95
  br label %214

212:                                              ; preds = %88
  br label %213

213:                                              ; preds = %212, %71
  br label %50

214:                                              ; preds = %211, %210, %87, %70, %50
  %215 = load i32, i32* %4, align 4
  store i32 %215, i32* %2, align 4
  br label %216

216:                                              ; preds = %214, %183, %45, %13
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local i32 @get_word_utf8(i8*) #1

declare dso_local i32 @sigil_word_detect(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
