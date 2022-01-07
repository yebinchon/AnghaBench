; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-onig-regexp/src/extr_mruby_onig_regexp.c_append_replace_str.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-onig-regexp/src/extr_mruby_onig_regexp.c_append_replace_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32 }

@E_INDEX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"undefined group name reference: %S\00", align 1
@E_REGEXP_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"invalid replace expression: %S\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, %struct.TYPE_4__*)* @append_replace_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_replace_str(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_4__* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [2 x i8], align 1
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %12, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @mrb_hash_p(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %6
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %37, %42
  %44 = call i32 @mrb_str_substr(i32* %26, i32 %27, i32 %32, i32 %43)
  %45 = call i32 @mrb_hash_get(i32* %24, i32 %25, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @mrb_str_to_str(i32* %46, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @mrb_str_cat_str(i32* %49, i32 %50, i32 %51)
  br label %263

53:                                               ; preds = %6
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @mrb_string_p(i32 %54)
  %56 = call i32 @mrb_assert(i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = call i8* @RSTRING_PTR(i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @RSTRING_LEN(i32 %59)
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  store i8* %62, i8** %15, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i8* @RSTRING_PTR(i32 %63)
  store i8* %64, i8** %14, align 8
  br label %65

65:                                               ; preds = %249, %53
  %66 = load i8*, i8** %14, align 8
  %67 = load i8*, i8** %15, align 8
  %68 = icmp ult i8* %66, %67
  br i1 %68, label %69, label %252

69:                                               ; preds = %65
  %70 = load i8*, i8** %14, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 92
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load i8*, i8** %14, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8*, i8** %15, align 8
  %78 = icmp uge i8* %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %74, %69
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i8*, i8** %14, align 8
  %83 = call i32 @mrb_str_cat(i32* %80, i32 %81, i8* %82, i32 1)
  br label %249

84:                                               ; preds = %74
  %85 = load i8*, i8** %14, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %14, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  switch i32 %88, label %192 [
    i32 107, label %89
    i32 92, label %187
  ]

89:                                               ; preds = %84
  %90 = load i8*, i8** %14, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 2
  %92 = load i8*, i8** %15, align 8
  %93 = icmp uge i8* %91, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %89
  %95 = load i8*, i8** %14, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 60
  br i1 %99, label %100, label %101

100:                                              ; preds = %94, %89
  br label %258

101:                                              ; preds = %94
  %102 = load i8*, i8** %14, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 2
  store i8* %103, i8** %14, align 8
  store i8* %103, i8** %16, align 8
  br label %104

104:                                              ; preds = %115, %101
  %105 = load i8*, i8** %14, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 62
  br i1 %108, label %109, label %116

109:                                              ; preds = %104
  %110 = load i8*, i8** %14, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %14, align 8
  %112 = load i8*, i8** %15, align 8
  %113 = icmp eq i8* %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %258

115:                                              ; preds = %109
  br label %104

116:                                              ; preds = %104
  %117 = load i8*, i8** %14, align 8
  %118 = load i8*, i8** %15, align 8
  %119 = icmp ult i8* %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @mrb_assert(i32 %120)
  %122 = load i8*, i8** %14, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 62
  %126 = zext i1 %125 to i32
  %127 = call i32 @mrb_assert(i32 %126)
  %128 = load i32, i32* %11, align 4
  %129 = load i8*, i8** %16, align 8
  %130 = bitcast i8* %129 to i32*
  %131 = load i8*, i8** %14, align 8
  %132 = bitcast i8* %131 to i32*
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %134 = call i32 @onig_name_to_backref_number(i32 %128, i32* %130, i32* %132, %struct.TYPE_4__* %133)
  store i32 %134, i32* %17, align 4
  %135 = load i32, i32* %17, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %157

137:                                              ; preds = %116
  %138 = load i32*, i32** %7, align 8
  %139 = load i32, i32* @E_INDEX_ERROR, align 4
  %140 = load i32*, i32** %7, align 8
  %141 = load i32, i32* %9, align 4
  %142 = load i8*, i8** %16, align 8
  %143 = load i32, i32* %9, align 4
  %144 = call i8* @RSTRING_PTR(i32 %143)
  %145 = ptrtoint i8* %142 to i64
  %146 = ptrtoint i8* %144 to i64
  %147 = sub i64 %145, %146
  %148 = trunc i64 %147 to i32
  %149 = load i8*, i8** %14, align 8
  %150 = load i8*, i8** %16, align 8
  %151 = ptrtoint i8* %149 to i64
  %152 = ptrtoint i8* %150 to i64
  %153 = sub i64 %151, %152
  %154 = trunc i64 %153 to i32
  %155 = call i32 @str_substr(i32* %140, i32 %141, i32 %148, i32 %154)
  %156 = call i32 @mrb_raisef(i32* %138, i32 %139, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %137, %116
  %158 = load i32*, i32** %7, align 8
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %10, align 4
  %161 = call i8* @RSTRING_PTR(i32 %160)
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %17, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %161, i64 %169
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %17, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %17, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = sub nsw i32 %177, %184
  %186 = call i32 @mrb_str_cat(i32* %158, i32 %159, i8* %170, i32 %185)
  br label %248

187:                                              ; preds = %84
  %188 = load i32*, i32** %7, align 8
  %189 = load i32, i32* %8, align 4
  %190 = load i8*, i8** %14, align 8
  %191 = call i32 @mrb_str_cat(i32* %188, i32 %189, i8* %190, i32 1)
  br label %248

192:                                              ; preds = %84
  %193 = load i8*, i8** %14, align 8
  %194 = load i8, i8* %193, align 1
  %195 = call i32 @isdigit(i8 signext %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %238

197:                                              ; preds = %192
  %198 = load i8*, i8** %14, align 8
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = sub nsw i32 %200, 48
  store i32 %201, i32* %18, align 4
  %202 = load i32, i32* %18, align 4
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = icmp slt i32 %202, %205
  br i1 %206, label %207, label %237

207:                                              ; preds = %197
  %208 = load i32*, i32** %7, align 8
  %209 = load i32, i32* %8, align 4
  %210 = load i32, i32* %10, align 4
  %211 = call i8* @RSTRING_PTR(i32 %210)
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %18, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %211, i64 %219
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %18, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %18, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = sub nsw i32 %227, %234
  %236 = call i32 @mrb_str_cat(i32* %208, i32 %209, i8* %220, i32 %235)
  br label %237

237:                                              ; preds = %207, %197
  br label %247

238:                                              ; preds = %192
  %239 = getelementptr inbounds [2 x i8], [2 x i8]* %19, i64 0, i64 0
  store i8 92, i8* %239, align 1
  %240 = getelementptr inbounds i8, i8* %239, i64 1
  %241 = load i8*, i8** %14, align 8
  %242 = load i8, i8* %241, align 1
  store i8 %242, i8* %240, align 1
  %243 = load i32*, i32** %7, align 8
  %244 = load i32, i32* %8, align 4
  %245 = getelementptr inbounds [2 x i8], [2 x i8]* %19, i64 0, i64 0
  %246 = call i32 @mrb_str_cat(i32* %243, i32 %244, i8* %245, i32 2)
  br label %247

247:                                              ; preds = %238, %237
  br label %248

248:                                              ; preds = %247, %187, %157
  br label %249

249:                                              ; preds = %248, %79
  %250 = load i8*, i8** %14, align 8
  %251 = getelementptr inbounds i8, i8* %250, i32 1
  store i8* %251, i8** %14, align 8
  br label %65

252:                                              ; preds = %65
  %253 = load i8*, i8** %14, align 8
  %254 = load i8*, i8** %15, align 8
  %255 = icmp eq i8* %253, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %252
  br label %263

257:                                              ; preds = %252
  br label %258

258:                                              ; preds = %257, %114, %100
  %259 = load i32*, i32** %7, align 8
  %260 = load i32, i32* @E_REGEXP_ERROR, align 4
  %261 = load i32, i32* %9, align 4
  %262 = call i32 @mrb_raisef(i32* %259, i32 %260, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %261)
  br label %263

263:                                              ; preds = %258, %256, %23
  ret void
}

declare dso_local i64 @mrb_hash_p(i32) #1

declare dso_local i32 @mrb_hash_get(i32*, i32, i32) #1

declare dso_local i32 @mrb_str_substr(i32*, i32, i32, i32) #1

declare dso_local i32 @mrb_str_to_str(i32*, i32) #1

declare dso_local i32 @mrb_str_cat_str(i32*, i32, i32) #1

declare dso_local i32 @mrb_assert(i32) #1

declare dso_local i32 @mrb_string_p(i32) #1

declare dso_local i8* @RSTRING_PTR(i32) #1

declare dso_local i32 @RSTRING_LEN(i32) #1

declare dso_local i32 @mrb_str_cat(i32*, i32, i8*, i32) #1

declare dso_local i32 @onig_name_to_backref_number(i32, i32*, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32) #1

declare dso_local i32 @str_substr(i32*, i32, i32, i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
