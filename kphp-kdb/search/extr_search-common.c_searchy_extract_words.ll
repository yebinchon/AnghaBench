; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-common.c_searchy_extract_words.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-common.c_searchy_extract_words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"\1F@@\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"error at %.30s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @searchy_extract_words(i8* %0, i32 %1, i32 %2, %struct.TYPE_3__* %3, i32 %4, i32 %5, i64 %6, i32* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  store i32* %7, i32** %16, align 8
  store i32 1, i32* %17, align 4
  store i8* null, i8** %18, align 8
  store i32 0, i32* %19, align 4
  %22 = load i32*, i32** %16, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %8
  %26 = call i8* @searchy_word_hash(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %29 = load i32, i32* %19, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %27, i32* %32, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %34 = load i32, i32* %19, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* %19, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %19, align 4
  br label %40

40:                                               ; preds = %25, %8
  %41 = load i32, i32* %14, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %87

43:                                               ; preds = %40
  %44 = load i64, i64* %15, align 8
  %45 = ashr i64 %44, 32
  %46 = trunc i64 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %87

48:                                               ; preds = %43
  %49 = load i64, i64* %15, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %20, align 4
  %51 = load i32, i32* %20, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %86

53:                                               ; preds = %48
  %54 = load i32, i32* %20, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %20, align 4
  %58 = call i32 @make_tag(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 %57)
  br label %63

59:                                               ; preds = %53
  %60 = load i32, i32* %20, align 4
  %61 = sub nsw i32 0, %60
  %62 = call i32 @make_tag(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 %61)
  br label %63

63:                                               ; preds = %59, %56
  %64 = phi i32 [ %58, %56 ], [ %62, %59 ]
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %66 = load i32, i32* %19, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i32 %64, i32* %69, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %71 = load i32, i32* %19, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = and i64 %76, 9223372036854775807
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %80 = load i32, i32* %19, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  store i32 0, i32* %83, align 4
  %84 = load i32, i32* %19, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %19, align 4
  br label %86

86:                                               ; preds = %63, %48
  br label %87

87:                                               ; preds = %86, %43, %40
  br label %88

88:                                               ; preds = %257, %164, %87
  %89 = load i32, i32* %19, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i8*, i8** %9, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 0
  br label %97

97:                                               ; preds = %92, %88
  %98 = phi i1 [ false, %88 ], [ %96, %92 ]
  br i1 %98, label %99, label %262

99:                                               ; preds = %97
  %100 = load i8*, i8** %9, align 8
  %101 = load i8*, i8** %18, align 8
  %102 = icmp eq i8* %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i8*, i8** %9, align 8
  %105 = call i32 @kprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %104)
  %106 = call i32 @exit(i32 2) #3
  unreachable

107:                                              ; preds = %99
  %108 = load i8*, i8** %9, align 8
  %109 = load i32, i32* %17, align 4
  %110 = sext i32 %109 to i64
  %111 = sub i64 0, %110
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  store i8* %112, i8** %18, align 8
  %113 = load i32, i32* %17, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %119

116:                                              ; preds = %107
  %117 = load i8*, i8** %9, align 8
  %118 = call i32 @get_notword(i8* %117)
  br label %119

119:                                              ; preds = %116, %115
  %120 = phi i32 [ 0, %115 ], [ %118, %116 ]
  store i32 %120, i32* %21, align 4
  store i32 0, i32* %17, align 4
  %121 = load i32, i32* %21, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %262

124:                                              ; preds = %119
  br label %125

125:                                              ; preds = %135, %124
  %126 = load i32, i32* %21, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = load i8*, i8** %9, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 31
  br label %133

133:                                              ; preds = %128, %125
  %134 = phi i1 [ false, %125 ], [ %132, %128 ]
  br i1 %134, label %135, label %140

135:                                              ; preds = %133
  %136 = load i8*, i8** %9, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %9, align 8
  %138 = load i32, i32* %21, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %21, align 4
  br label %125

140:                                              ; preds = %133
  %141 = load i8*, i8** %9, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 31
  br i1 %144, label %145, label %158

145:                                              ; preds = %140
  store i32 1, i32* %21, align 4
  br label %146

146:                                              ; preds = %154, %145
  %147 = load i8*, i8** %9, align 8
  %148 = load i32, i32* %21, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp sge i32 %152, 64
  br i1 %153, label %154, label %157

154:                                              ; preds = %146
  %155 = load i32, i32* %21, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %21, align 4
  br label %146

157:                                              ; preds = %146
  store i32 1, i32* %17, align 4
  br label %161

158:                                              ; preds = %140
  %159 = load i8*, i8** %9, align 8
  %160 = call i32 @get_word(i8* %159)
  store i32 %160, i32* %21, align 4
  br label %161

161:                                              ; preds = %158, %157
  %162 = load i32, i32* %21, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %161
  br label %88

165:                                              ; preds = %161
  %166 = load i32, i32* %21, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i32, i32* %21, align 4
  %170 = icmp slt i32 %169, 511
  br label %171

171:                                              ; preds = %168, %165
  %172 = phi i1 [ false, %165 ], [ %170, %168 ]
  %173 = zext i1 %172 to i32
  %174 = call i32 @assert(i32 %173)
  %175 = load i8*, i8** %9, align 8
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 31
  br i1 %178, label %179, label %195

179:                                              ; preds = %171
  %180 = load i8*, i8** %9, align 8
  %181 = load i32, i32* %21, align 4
  %182 = call i8* @searchy_word_hash(i8* %180, i32 %181)
  %183 = ptrtoint i8* %182 to i32
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %185 = load i32, i32* %19, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  store i32 %183, i32* %188, align 4
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %190 = load i32, i32* %19, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %19, align 4
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 1
  store i32 0, i32* %194, align 4
  br label %257

195:                                              ; preds = %171
  %196 = load i32*, i32** %16, align 8
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 4
  %199 = load i8*, i8** %9, align 8
  %200 = load i32, i32* %21, align 4
  %201 = call i8* @searchy_term_hash(i8* %199, i32 %200, i32 0)
  %202 = ptrtoint i8* %201 to i32
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %204 = load i32, i32* %19, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 0
  store i32 %202, i32* %207, align 4
  %208 = load i32*, i32** %16, align 8
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %211 = load i32, i32* %19, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %19, align 4
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 1
  store i32 %209, i32* %215, align 4
  %216 = load i32, i32* %17, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %256, label %218

218:                                              ; preds = %195
  %219 = load i32, i32* %19, align 4
  %220 = load i32, i32* %13, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %256

222:                                              ; preds = %218
  %223 = load i8*, i8** %9, align 8
  %224 = load i32, i32* %21, align 4
  %225 = call i8* @searchy_term_hash(i8* %223, i32 %224, i32 1)
  %226 = ptrtoint i8* %225 to i32
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %228 = load i32, i32* %19, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 0
  store i32 %226, i32* %231, align 4
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %233 = load i32, i32* %19, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %239 = load i32, i32* %19, align 4
  %240 = sub nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = icmp ne i32 %237, %244
  br i1 %245, label %246, label %255

246:                                              ; preds = %222
  %247 = load i32*, i32** %16, align 8
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %250 = load i32, i32* %19, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %19, align 4
  %252 = sext i32 %250 to i64
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 1
  store i32 %248, i32* %254, align 4
  br label %255

255:                                              ; preds = %246, %222
  br label %256

256:                                              ; preds = %255, %218, %195
  br label %257

257:                                              ; preds = %256, %179
  %258 = load i32, i32* %21, align 4
  %259 = load i8*, i8** %9, align 8
  %260 = sext i32 %258 to i64
  %261 = getelementptr inbounds i8, i8* %259, i64 %260
  store i8* %261, i8** %9, align 8
  br label %88

262:                                              ; preds = %123, %97
  %263 = load i32, i32* %19, align 4
  ret i32 %263
}

declare dso_local i8* @searchy_word_hash(i8*, i32) #1

declare dso_local i32 @make_tag(i8*, i32, i32) #1

declare dso_local i32 @kprintf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @get_notword(i8*) #1

declare dso_local i32 @get_word(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @searchy_term_hash(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
