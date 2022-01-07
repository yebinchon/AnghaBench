; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_search-y-parse.c_searchy_extract_words.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_search-y-parse.c_searchy_extract_words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@.str = private unnamed_addr constant [4 x i8] c"\1F@@\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"error at %.30s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @searchy_extract_words(i8* %0, i32 %1, %struct.TYPE_3__* %2, i32 %3, i32 %4, i32 %5, i64 %6, i32* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32, align 4
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
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  store i32* %7, i32** %16, align 8
  store i32 1, i32* %17, align 4
  store i8* null, i8** %18, align 8
  store i32 0, i32* %19, align 4
  %22 = load i32*, i32** %16, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %8
  %26 = call i8* @searchy_word_hash(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %28 = load i32, i32* %19, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i8* %26, i8** %31, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %33 = load i32, i32* %19, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load i32, i32* %19, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %19, align 4
  br label %39

39:                                               ; preds = %25, %8
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %77

42:                                               ; preds = %39
  %43 = load i64, i64* %15, align 8
  %44 = ashr i64 %43, 32
  %45 = trunc i64 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %77

47:                                               ; preds = %42
  %48 = load i64, i64* %15, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %20, align 4
  %50 = load i32, i32* %20, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %47
  %53 = load i32, i32* %20, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %20, align 4
  %57 = call i8* @searchy_make_tag(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 %56)
  br label %62

58:                                               ; preds = %52
  %59 = load i32, i32* %20, align 4
  %60 = sub nsw i32 0, %59
  %61 = call i8* @searchy_make_tag(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 %60)
  br label %62

62:                                               ; preds = %58, %55
  %63 = phi i8* [ %57, %55 ], [ %61, %58 ]
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %65 = load i32, i32* %19, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i8* %63, i8** %68, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %70 = load i32, i32* %19, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 0, i32* %73, align 8
  %74 = load i32, i32* %19, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %19, align 4
  br label %76

76:                                               ; preds = %62, %47
  br label %77

77:                                               ; preds = %76, %42, %39
  br label %78

78:                                               ; preds = %244, %154, %77
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i8*, i8** %9, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br label %87

87:                                               ; preds = %82, %78
  %88 = phi i1 [ false, %78 ], [ %86, %82 ]
  br i1 %88, label %89, label %249

89:                                               ; preds = %87
  %90 = load i8*, i8** %9, align 8
  %91 = load i8*, i8** %18, align 8
  %92 = icmp eq i8* %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i8*, i8** %9, align 8
  %95 = call i32 @kprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %94)
  %96 = call i32 @exit(i32 2) #3
  unreachable

97:                                               ; preds = %89
  %98 = load i8*, i8** %9, align 8
  %99 = load i32, i32* %17, align 4
  %100 = sext i32 %99 to i64
  %101 = sub i64 0, %100
  %102 = getelementptr inbounds i8, i8* %98, i64 %101
  store i8* %102, i8** %18, align 8
  %103 = load i32, i32* %17, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %109

106:                                              ; preds = %97
  %107 = load i8*, i8** %9, align 8
  %108 = call i32 @get_notword(i8* %107)
  br label %109

109:                                              ; preds = %106, %105
  %110 = phi i32 [ 0, %105 ], [ %108, %106 ]
  store i32 %110, i32* %21, align 4
  store i32 0, i32* %17, align 4
  %111 = load i32, i32* %21, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %249

114:                                              ; preds = %109
  br label %115

115:                                              ; preds = %125, %114
  %116 = load i32, i32* %21, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load i8*, i8** %9, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp ne i32 %121, 31
  br label %123

123:                                              ; preds = %118, %115
  %124 = phi i1 [ false, %115 ], [ %122, %118 ]
  br i1 %124, label %125, label %130

125:                                              ; preds = %123
  %126 = load i8*, i8** %9, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %9, align 8
  %128 = load i32, i32* %21, align 4
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %21, align 4
  br label %115

130:                                              ; preds = %123
  %131 = load i8*, i8** %9, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 31
  br i1 %134, label %135, label %148

135:                                              ; preds = %130
  store i32 1, i32* %21, align 4
  br label %136

136:                                              ; preds = %144, %135
  %137 = load i8*, i8** %9, align 8
  %138 = load i32, i32* %21, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp sge i32 %142, 64
  br i1 %143, label %144, label %147

144:                                              ; preds = %136
  %145 = load i32, i32* %21, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %21, align 4
  br label %136

147:                                              ; preds = %136
  store i32 1, i32* %17, align 4
  br label %151

148:                                              ; preds = %130
  %149 = load i8*, i8** %9, align 8
  %150 = call i32 @get_word(i8* %149)
  store i32 %150, i32* %21, align 4
  br label %151

151:                                              ; preds = %148, %147
  %152 = load i32, i32* %21, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %151
  br label %78

155:                                              ; preds = %151
  %156 = load i32, i32* %21, align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load i32, i32* %21, align 4
  %160 = icmp slt i32 %159, 511
  br label %161

161:                                              ; preds = %158, %155
  %162 = phi i1 [ false, %155 ], [ %160, %158 ]
  %163 = zext i1 %162 to i32
  %164 = call i32 @assert(i32 %163)
  %165 = load i8*, i8** %9, align 8
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 31
  br i1 %168, label %169, label %184

169:                                              ; preds = %161
  %170 = load i8*, i8** %9, align 8
  %171 = load i32, i32* %21, align 4
  %172 = call i8* @searchy_word_hash(i8* %170, i32 %171)
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %174 = load i32, i32* %19, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 1
  store i8* %172, i8** %177, align 8
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %179 = load i32, i32* %19, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %19, align 4
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 0
  store i32 0, i32* %183, align 8
  br label %244

184:                                              ; preds = %161
  %185 = load i32*, i32** %16, align 8
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 4
  %188 = load i8*, i8** %9, align 8
  %189 = load i32, i32* %21, align 4
  %190 = call i8* @searchy_term_hash(i8* %188, i32 %189, i32 0)
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %192 = load i32, i32* %19, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 1
  store i8* %190, i8** %195, align 8
  %196 = load i32*, i32** %16, align 8
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %199 = load i32, i32* %19, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %19, align 4
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  store i32 %197, i32* %203, align 8
  %204 = load i32, i32* %17, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %243, label %206

206:                                              ; preds = %184
  %207 = load i32, i32* %19, align 4
  %208 = load i32, i32* %12, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %243

210:                                              ; preds = %206
  %211 = load i8*, i8** %9, align 8
  %212 = load i32, i32* %21, align 4
  %213 = call i8* @searchy_term_hash(i8* %211, i32 %212, i32 1)
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %215 = load i32, i32* %19, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 1
  store i8* %213, i8** %218, align 8
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %220 = load i32, i32* %19, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 1
  %224 = load i8*, i8** %223, align 8
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %226 = load i32, i32* %19, align 4
  %227 = sub nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 1
  %231 = load i8*, i8** %230, align 8
  %232 = icmp ne i8* %224, %231
  br i1 %232, label %233, label %242

233:                                              ; preds = %210
  %234 = load i32*, i32** %16, align 8
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %237 = load i32, i32* %19, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %19, align 4
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 0
  store i32 %235, i32* %241, align 8
  br label %242

242:                                              ; preds = %233, %210
  br label %243

243:                                              ; preds = %242, %206, %184
  br label %244

244:                                              ; preds = %243, %169
  %245 = load i32, i32* %21, align 4
  %246 = load i8*, i8** %9, align 8
  %247 = sext i32 %245 to i64
  %248 = getelementptr inbounds i8, i8* %246, i64 %247
  store i8* %248, i8** %9, align 8
  br label %78

249:                                              ; preds = %113, %87
  %250 = load i32, i32* %19, align 4
  ret i32 %250
}

declare dso_local i8* @searchy_word_hash(i8*, i32) #1

declare dso_local i8* @searchy_make_tag(i8*, i32, i32) #1

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
