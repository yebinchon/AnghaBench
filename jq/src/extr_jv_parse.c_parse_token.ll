; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_parse.c_parse_token.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_parse.c_parse_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jv_parser = type { i32, i8**, i8* }

@MAX_PARSING_DEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Exceeds depth limit for parsing\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Expected separator between values\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Expected string key before ':'\00", align 1
@JV_KIND_OBJECT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"':' not as part of an object\00", align 1
@JV_KIND_STRING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Object keys must be strings\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Expected value before ','\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"',' not as part of an object or array\00", align 1
@JV_KIND_ARRAY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"Objects must consist of key:value pairs\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Unmatched ']'\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Expected another array element\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Unmatched '}'\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Expected another key-value pair\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.jv_parser*, i8)* @parse_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_token(%struct.jv_parser* %0, i8 signext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.jv_parser*, align 8
  %5 = alloca i8, align 1
  store %struct.jv_parser* %0, %struct.jv_parser** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  switch i32 %7, label %446 [
    i32 91, label %8
    i32 123, label %26
    i32 58, label %44
    i32 44, label %88
    i32 93, label %222
    i32 125, label %308
  ]

8:                                                ; preds = %2
  %9 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %10 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MAX_PARSING_DEPTH, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %447

15:                                               ; preds = %8
  %16 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %17 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @jv_is_valid(i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %447

22:                                               ; preds = %15
  %23 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %24 = call i8* (...) @jv_array()
  %25 = call i32 @push(%struct.jv_parser* %23, i8* %24)
  br label %446

26:                                               ; preds = %2
  %27 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %28 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MAX_PARSING_DEPTH, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %447

33:                                               ; preds = %26
  %34 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %35 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @jv_is_valid(i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %447

40:                                               ; preds = %33
  %41 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %42 = call i8* (...) @jv_object()
  %43 = call i32 @push(%struct.jv_parser* %41, i8* %42)
  br label %446

44:                                               ; preds = %2
  %45 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %46 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @jv_is_valid(i8* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %447

51:                                               ; preds = %44
  %52 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %53 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %51
  %57 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %58 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %57, i32 0, i32 1
  %59 = load i8**, i8*** %58, align 8
  %60 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %61 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %59, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @jv_get_kind(i8* %66)
  %68 = load i32, i32* @JV_KIND_OBJECT, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %56, %51
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %447

71:                                               ; preds = %56
  %72 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %73 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @jv_get_kind(i8* %74)
  %76 = load i32, i32* @JV_KIND_STRING, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %447

79:                                               ; preds = %71
  %80 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %81 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %82 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @push(%struct.jv_parser* %80, i8* %83)
  %85 = call i8* (...) @jv_invalid()
  %86 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %87 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  br label %446

88:                                               ; preds = %2
  %89 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %90 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @jv_is_valid(i8* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %88
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %447

95:                                               ; preds = %88
  %96 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %97 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %447

101:                                              ; preds = %95
  %102 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %103 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %102, i32 0, i32 1
  %104 = load i8**, i8*** %103, align 8
  %105 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %106 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %104, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @jv_get_kind(i8* %111)
  %113 = load i32, i32* @JV_KIND_ARRAY, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %142

115:                                              ; preds = %101
  %116 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %117 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %116, i32 0, i32 1
  %118 = load i8**, i8*** %117, align 8
  %119 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %120 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %118, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %127 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %126, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = call i8* @jv_array_append(i8* %125, i8* %128)
  %130 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %131 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %130, i32 0, i32 1
  %132 = load i8**, i8*** %131, align 8
  %133 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %134 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %132, i64 %137
  store i8* %129, i8** %138, align 8
  %139 = call i8* (...) @jv_invalid()
  %140 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %141 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %140, i32 0, i32 2
  store i8* %139, i8** %141, align 8
  br label %221

142:                                              ; preds = %101
  %143 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %144 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %143, i32 0, i32 1
  %145 = load i8**, i8*** %144, align 8
  %146 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %147 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %145, i64 %150
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @jv_get_kind(i8* %152)
  %154 = load i32, i32* @JV_KIND_STRING, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %219

156:                                              ; preds = %142
  %157 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %158 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp sgt i32 %159, 1
  br i1 %160, label %161, label %175

161:                                              ; preds = %156
  %162 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %163 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %162, i32 0, i32 1
  %164 = load i8**, i8*** %163, align 8
  %165 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %166 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = sub nsw i32 %167, 2
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8*, i8** %164, i64 %169
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @jv_get_kind(i8* %171)
  %173 = load i32, i32* @JV_KIND_OBJECT, align 4
  %174 = icmp eq i32 %172, %173
  br label %175

175:                                              ; preds = %161, %156
  %176 = phi i1 [ false, %156 ], [ %174, %161 ]
  %177 = zext i1 %176 to i32
  %178 = call i32 @assert(i32 %177)
  %179 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %180 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %179, i32 0, i32 1
  %181 = load i8**, i8*** %180, align 8
  %182 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %183 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = sub nsw i32 %184, 2
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8*, i8** %181, i64 %186
  %188 = load i8*, i8** %187, align 8
  %189 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %190 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %189, i32 0, i32 1
  %191 = load i8**, i8*** %190, align 8
  %192 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %193 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = sub nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8*, i8** %191, i64 %196
  %198 = load i8*, i8** %197, align 8
  %199 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %200 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %199, i32 0, i32 2
  %201 = load i8*, i8** %200, align 8
  %202 = call i8* @jv_object_set(i8* %188, i8* %198, i8* %201)
  %203 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %204 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %203, i32 0, i32 1
  %205 = load i8**, i8*** %204, align 8
  %206 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %207 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = sub nsw i32 %208, 2
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8*, i8** %205, i64 %210
  store i8* %202, i8** %211, align 8
  %212 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %213 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = add nsw i32 %214, -1
  store i32 %215, i32* %213, align 8
  %216 = call i8* (...) @jv_invalid()
  %217 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %218 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %217, i32 0, i32 2
  store i8* %216, i8** %218, align 8
  br label %220

219:                                              ; preds = %142
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %447

220:                                              ; preds = %175
  br label %221

221:                                              ; preds = %220, %115
  br label %446

222:                                              ; preds = %2
  %223 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %224 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %241, label %227

227:                                              ; preds = %222
  %228 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %229 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %228, i32 0, i32 1
  %230 = load i8**, i8*** %229, align 8
  %231 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %232 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = sub nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8*, i8** %230, i64 %235
  %237 = load i8*, i8** %236, align 8
  %238 = call i32 @jv_get_kind(i8* %237)
  %239 = load i32, i32* @JV_KIND_ARRAY, align 4
  %240 = icmp ne i32 %238, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %227, %222
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %447

242:                                              ; preds = %227
  %243 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %244 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %243, i32 0, i32 2
  %245 = load i8*, i8** %244, align 8
  %246 = call i32 @jv_is_valid(i8* %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %275

248:                                              ; preds = %242
  %249 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %250 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %249, i32 0, i32 1
  %251 = load i8**, i8*** %250, align 8
  %252 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %253 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = sub nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8*, i8** %251, i64 %256
  %258 = load i8*, i8** %257, align 8
  %259 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %260 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %259, i32 0, i32 2
  %261 = load i8*, i8** %260, align 8
  %262 = call i8* @jv_array_append(i8* %258, i8* %261)
  %263 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %264 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %263, i32 0, i32 1
  %265 = load i8**, i8*** %264, align 8
  %266 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %267 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = sub nsw i32 %268, 1
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8*, i8** %265, i64 %270
  store i8* %262, i8** %271, align 8
  %272 = call i8* (...) @jv_invalid()
  %273 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %274 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %273, i32 0, i32 2
  store i8* %272, i8** %274, align 8
  br label %291

275:                                              ; preds = %242
  %276 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %277 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %276, i32 0, i32 1
  %278 = load i8**, i8*** %277, align 8
  %279 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %280 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = sub nsw i32 %281, 1
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i8*, i8** %278, i64 %283
  %285 = load i8*, i8** %284, align 8
  %286 = call i32 @jv_copy(i8* %285)
  %287 = call i32 @jv_array_length(i32 %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %275
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %447

290:                                              ; preds = %275
  br label %291

291:                                              ; preds = %290, %248
  %292 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %293 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %292, i32 0, i32 2
  %294 = load i8*, i8** %293, align 8
  %295 = call i32 @jv_free(i8* %294)
  %296 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %297 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %296, i32 0, i32 1
  %298 = load i8**, i8*** %297, align 8
  %299 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %300 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = add nsw i32 %301, -1
  store i32 %302, i32* %300, align 8
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8*, i8** %298, i64 %303
  %305 = load i8*, i8** %304, align 8
  %306 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %307 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %306, i32 0, i32 2
  store i8* %305, i8** %307, align 8
  br label %446

308:                                              ; preds = %2
  %309 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %310 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %308
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %447

314:                                              ; preds = %308
  %315 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %316 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %315, i32 0, i32 2
  %317 = load i8*, i8** %316, align 8
  %318 = call i32 @jv_is_valid(i8* %317)
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %398

320:                                              ; preds = %314
  %321 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %322 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %321, i32 0, i32 1
  %323 = load i8**, i8*** %322, align 8
  %324 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %325 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = sub nsw i32 %326, 1
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i8*, i8** %323, i64 %328
  %330 = load i8*, i8** %329, align 8
  %331 = call i32 @jv_get_kind(i8* %330)
  %332 = load i32, i32* @JV_KIND_STRING, align 4
  %333 = icmp ne i32 %331, %332
  br i1 %333, label %334, label %335

334:                                              ; preds = %320
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %447

335:                                              ; preds = %320
  %336 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %337 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = icmp sgt i32 %338, 1
  br i1 %339, label %340, label %354

340:                                              ; preds = %335
  %341 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %342 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %341, i32 0, i32 1
  %343 = load i8**, i8*** %342, align 8
  %344 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %345 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 8
  %347 = sub nsw i32 %346, 2
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i8*, i8** %343, i64 %348
  %350 = load i8*, i8** %349, align 8
  %351 = call i32 @jv_get_kind(i8* %350)
  %352 = load i32, i32* @JV_KIND_OBJECT, align 4
  %353 = icmp eq i32 %351, %352
  br label %354

354:                                              ; preds = %340, %335
  %355 = phi i1 [ false, %335 ], [ %353, %340 ]
  %356 = zext i1 %355 to i32
  %357 = call i32 @assert(i32 %356)
  %358 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %359 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %358, i32 0, i32 1
  %360 = load i8**, i8*** %359, align 8
  %361 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %362 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = sub nsw i32 %363, 2
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i8*, i8** %360, i64 %365
  %367 = load i8*, i8** %366, align 8
  %368 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %369 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %368, i32 0, i32 1
  %370 = load i8**, i8*** %369, align 8
  %371 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %372 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = sub nsw i32 %373, 1
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i8*, i8** %370, i64 %375
  %377 = load i8*, i8** %376, align 8
  %378 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %379 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %378, i32 0, i32 2
  %380 = load i8*, i8** %379, align 8
  %381 = call i8* @jv_object_set(i8* %367, i8* %377, i8* %380)
  %382 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %383 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %382, i32 0, i32 1
  %384 = load i8**, i8*** %383, align 8
  %385 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %386 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = sub nsw i32 %387, 2
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i8*, i8** %384, i64 %389
  store i8* %381, i8** %390, align 8
  %391 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %392 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = add nsw i32 %393, -1
  store i32 %394, i32* %392, align 8
  %395 = call i8* (...) @jv_invalid()
  %396 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %397 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %396, i32 0, i32 2
  store i8* %395, i8** %397, align 8
  br label %429

398:                                              ; preds = %314
  %399 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %400 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %399, i32 0, i32 1
  %401 = load i8**, i8*** %400, align 8
  %402 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %403 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = sub nsw i32 %404, 1
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i8*, i8** %401, i64 %406
  %408 = load i8*, i8** %407, align 8
  %409 = call i32 @jv_get_kind(i8* %408)
  %410 = load i32, i32* @JV_KIND_OBJECT, align 4
  %411 = icmp ne i32 %409, %410
  br i1 %411, label %412, label %413

412:                                              ; preds = %398
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %447

413:                                              ; preds = %398
  %414 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %415 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %414, i32 0, i32 1
  %416 = load i8**, i8*** %415, align 8
  %417 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %418 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = sub nsw i32 %419, 1
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i8*, i8** %416, i64 %421
  %423 = load i8*, i8** %422, align 8
  %424 = call i32 @jv_copy(i8* %423)
  %425 = call i32 @jv_object_length(i32 %424)
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %428

427:                                              ; preds = %413
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %447

428:                                              ; preds = %413
  br label %429

429:                                              ; preds = %428, %354
  %430 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %431 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %430, i32 0, i32 2
  %432 = load i8*, i8** %431, align 8
  %433 = call i32 @jv_free(i8* %432)
  %434 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %435 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %434, i32 0, i32 1
  %436 = load i8**, i8*** %435, align 8
  %437 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %438 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = add nsw i32 %439, -1
  store i32 %440, i32* %438, align 8
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i8*, i8** %436, i64 %441
  %443 = load i8*, i8** %442, align 8
  %444 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %445 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %444, i32 0, i32 2
  store i8* %443, i8** %445, align 8
  br label %446

446:                                              ; preds = %2, %429, %291, %221, %79, %40, %22
  store i8* null, i8** %3, align 8
  br label %447

447:                                              ; preds = %446, %427, %412, %334, %313, %289, %241, %219, %100, %94, %78, %70, %50, %39, %32, %21, %14
  %448 = load i8*, i8** %3, align 8
  ret i8* %448
}

declare dso_local i32 @jv_is_valid(i8*) #1

declare dso_local i32 @push(%struct.jv_parser*, i8*) #1

declare dso_local i8* @jv_array(...) #1

declare dso_local i8* @jv_object(...) #1

declare dso_local i32 @jv_get_kind(i8*) #1

declare dso_local i8* @jv_invalid(...) #1

declare dso_local i8* @jv_array_append(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @jv_object_set(i8*, i8*, i8*) #1

declare dso_local i32 @jv_array_length(i32) #1

declare dso_local i32 @jv_copy(i8*) #1

declare dso_local i32 @jv_free(i8*) #1

declare dso_local i32 @jv_object_length(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
