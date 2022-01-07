; ModuleID = '/home/carl/AnghaBench/kphp-kdb/spell/extr_spell-data.c_check_word.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/spell/extr_spell-data.c_check_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32** }
%struct.TYPE_3__ = type { i32, i32**, i32 }

@spellers = common dso_local global i32 0, align 4
@SC = common dso_local global %struct.TYPE_4__** null, align 8
@yo_hack = common dso_local global i64 0, align 8
@yo_hack_stat = common dso_local global i32* null, align 8
@use_aspell_suggestion = common dso_local global i32 0, align 4
@SS = common dso_local global %struct.TYPE_3__** null, align 8
@.str = private unnamed_addr constant [24 x i8] c"suggest: %s, %.*s (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"suggetsions = NULL. %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_word(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %61, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @spellers, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %64

18:                                               ; preds = %14
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @SC, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %19, i64 %21
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @aspell_speller_check(i32 %25, i8* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %18
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @SC, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %32, i64 %34
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32**, i32*** %37, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %31
  %47 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @SC, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %47, i64 %49
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i32**, i32*** %52, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  store i32 1, i32* %3, align 4
  br label %239

59:                                               ; preds = %31
  br label %60

60:                                               ; preds = %59, %18
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %14

64:                                               ; preds = %14
  %65 = load i64, i64* @yo_hack, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %137

67:                                               ; preds = %64
  %68 = load i32*, i32** @yo_hack_stat, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  store i32 0, i32* %8, align 4
  br label %72

72:                                               ; preds = %133, %67
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %136

76:                                               ; preds = %72
  %77 = load i8*, i8** %4, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %82, 229
  br i1 %83, label %84, label %132

84:                                               ; preds = %76
  %85 = load i8*, i8** %4, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  store i8 -72, i8* %88, align 1
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %124, %84
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @spellers, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %127

93:                                               ; preds = %89
  %94 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @SC, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %94, i64 %96
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %123

102:                                              ; preds = %93
  %103 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @SC, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %103, i64 %105
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i8*, i8** %4, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @aspell_speller_check(i32 %109, i8* %110, i32 %111)
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %123

114:                                              ; preds = %102
  %115 = load i8*, i8** %4, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  store i8 -27, i8* %118, align 1
  %119 = load i32*, i32** @yo_hack_stat, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  store i32 1, i32* %3, align 4
  br label %239

123:                                              ; preds = %102, %93
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %6, align 4
  br label %89

127:                                              ; preds = %89
  %128 = load i8*, i8** %4, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  store i8 -27, i8* %131, align 1
  br label %132

132:                                              ; preds = %127, %76
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %72

136:                                              ; preds = %72
  br label %137

137:                                              ; preds = %136, %64
  %138 = load i32, i32* @use_aspell_suggestion, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %137
  store i32 0, i32* %3, align 4
  br label %239

141:                                              ; preds = %137
  %142 = load i8*, i8** %4, align 8
  %143 = load i32, i32* %5, align 4
  %144 = call i32 @get_str_class(i8* %142, i32 %143)
  store i32 %144, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %145

145:                                              ; preds = %235, %141
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @spellers, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %238

149:                                              ; preds = %145
  %150 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @SS, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %150, i64 %152
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  %156 = load i32**, i32*** %155, align 8
  %157 = getelementptr inbounds i32*, i32** %156, i64 1
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 4
  %162 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @SS, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %162, i64 %164
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i8*, i8** %4, align 8
  %170 = load i32, i32* %5, align 4
  %171 = call i32* @aspell_speller_suggest(i32 %168, i8* %169, i32 %170)
  store i32* %171, i32** %10, align 8
  %172 = load i32*, i32** %10, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %222

174:                                              ; preds = %149
  %175 = load i32*, i32** %10, align 8
  %176 = call i32* @aspell_word_list_elements(i32* %175)
  store i32* %176, i32** %11, align 8
  store i32 0, i32* %13, align 4
  br label %177

177:                                              ; preds = %199, %174
  %178 = load i32*, i32** %11, align 8
  %179 = call i8* @aspell_string_enumeration_next(i32* %178)
  store i8* %179, i8** %12, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %203

181:                                              ; preds = %177
  %182 = load i8*, i8** %12, align 8
  %183 = load i32, i32* %5, align 4
  %184 = load i8*, i8** %4, align 8
  %185 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @SS, align 8
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %185, i64 %187
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = call i32 (i32, i8*, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %182, i32 %183, i8* %184, i32 %191)
  %193 = load i32, i32* %9, align 4
  %194 = load i8*, i8** %12, align 8
  %195 = load i8*, i8** %12, align 8
  %196 = call i32 @strlen(i8* %195)
  %197 = call i32 @get_str_class(i8* %194, i32 %196)
  %198 = icmp ne i32 %193, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %181
  br label %177

200:                                              ; preds = %181
  %201 = load i32, i32* %13, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %13, align 4
  br label %203

203:                                              ; preds = %200, %177
  %204 = load i32*, i32** %11, align 8
  %205 = call i32 @delete_aspell_string_enumeration(i32* %204)
  %206 = load i32, i32* %13, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %221

208:                                              ; preds = %203
  %209 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @SS, align 8
  %210 = load i32, i32* %6, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %209, i64 %211
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 1
  %215 = load i32**, i32*** %214, align 8
  %216 = getelementptr inbounds i32*, i32** %215, i64 1
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %218, align 4
  store i32 0, i32* %3, align 4
  br label %239

221:                                              ; preds = %203
  br label %234

222:                                              ; preds = %149
  %223 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @SS, align 8
  %224 = load i32, i32* %6, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %223, i64 %225
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @aspell_speller_error_message(i32 %229)
  %231 = sext i32 %230 to i64
  %232 = inttoptr i64 %231 to i8*
  %233 = call i32 (i32, i8*, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %232)
  br label %234

234:                                              ; preds = %222, %221
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %6, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %6, align 4
  br label %145

238:                                              ; preds = %145
  store i32 -1, i32* %3, align 4
  br label %239

239:                                              ; preds = %238, %208, %140, %114, %46
  %240 = load i32, i32* %3, align 4
  ret i32 %240
}

declare dso_local i32 @aspell_speller_check(i32, i8*, i32) #1

declare dso_local i32 @get_str_class(i8*, i32) #1

declare dso_local i32* @aspell_speller_suggest(i32, i8*, i32) #1

declare dso_local i32* @aspell_word_list_elements(i32*) #1

declare dso_local i8* @aspell_string_enumeration_next(i32*) #1

declare dso_local i32 @vkprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @delete_aspell_string_enumeration(i32*) #1

declare dso_local i32 @aspell_speller_error_message(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
