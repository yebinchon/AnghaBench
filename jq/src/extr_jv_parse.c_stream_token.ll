; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_parse.c_stream_token.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_parse.c_stream_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jv_parser = type { i8*, i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [36 x i8] c"Expected a separator between values\00", align 1
@JV_LAST_OPEN_ARRAY = common dso_local global i8* null, align 8
@JV_LAST_VALUE = common dso_local global i8* null, align 8
@JV_LAST_OPEN_OBJECT = common dso_local global i8* null, align 8
@JV_KIND_NUMBER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"':' not as part of an object\00", align 1
@JV_LAST_NONE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Expected string key before ':'\00", align 1
@JV_KIND_STRING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Object keys must be strings\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"':' should follow a key\00", align 1
@JV_LAST_COLON = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"Expected value before ','\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"',' not as part of an object or array\00", align 1
@JV_LAST_COMMA = common dso_local global i8* null, align 8
@JV_KIND_NULL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"Objects must consist of key:value pairs\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Unmatched ']' at the top-level\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Expected another array element\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Unmatched ']' in the middle of an object\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Unmatched '}' at the top-level\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Expected another key:value pair\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"Unmatched '}' in the middle of an array\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"Missing value in key:value pair\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"Expected another key-value pair\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Unmatched '}'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.jv_parser*, i8)* @stream_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stream_token(%struct.jv_parser* %0, i8 signext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.jv_parser*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.jv_parser* %0, %struct.jv_parser** %4, align 8
  store i8 %1, i8* %5, align 1
  %9 = load i8, i8* %5, align 1
  %10 = sext i8 %9 to i32
  switch i32 %10, label %540 [
    i32 91, label %11
    i32 123, label %33
    i32 58, label %55
    i32 44, label %127
    i32 93, label %245
    i32 125, label %373
  ]

11:                                               ; preds = %2
  %12 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %13 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %12, i32 0, i32 4
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @jv_is_valid(i8* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %541

18:                                               ; preds = %11
  %19 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %20 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = call i8* @jv_number(i32 0)
  %23 = call i8* @jv_array_append(i8* %21, i8* %22)
  %24 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %25 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** @JV_LAST_OPEN_ARRAY, align 8
  %27 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %28 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %30 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  br label %540

33:                                               ; preds = %2
  %34 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %35 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** @JV_LAST_VALUE, align 8
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %541

40:                                               ; preds = %33
  %41 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %42 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* (...) @jv_null()
  %45 = call i8* @jv_array_append(i8* %43, i8* %44)
  %46 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %47 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** @JV_LAST_OPEN_OBJECT, align 8
  %49 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %50 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %52 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  br label %540

55:                                               ; preds = %2
  %56 = call i8* (...) @jv_invalid()
  store i8* %56, i8** %7, align 8
  %57 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %58 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %74, label %61

61:                                               ; preds = %55
  %62 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %63 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @jv_copy(i8* %64)
  %66 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %67 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %68, 1
  %70 = call i8* @jv_array_get(i32 %65, i32 %69)
  store i8* %70, i8** %7, align 8
  %71 = call i32 @jv_get_kind(i8* %70)
  %72 = load i32, i32* @JV_KIND_NUMBER, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %61, %55
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @jv_free(i8* %75)
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %541

77:                                               ; preds = %61
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @jv_free(i8* %78)
  %80 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %81 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %80, i32 0, i32 4
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @jv_is_valid(i8* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %77
  %86 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %87 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i8*, i8** @JV_LAST_NONE, align 8
  %90 = icmp eq i8* %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85, %77
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %541

92:                                               ; preds = %85
  %93 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %94 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %93, i32 0, i32 4
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @jv_get_kind(i8* %95)
  %97 = load i32, i32* @JV_KIND_STRING, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %541

100:                                              ; preds = %92
  %101 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %102 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i8*, i8** @JV_LAST_VALUE, align 8
  %105 = icmp ne i8* %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8** %3, align 8
  br label %541

107:                                              ; preds = %100
  %108 = load i8*, i8** @JV_LAST_COLON, align 8
  %109 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %110 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %109, i32 0, i32 0
  store i8* %108, i8** %110, align 8
  %111 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %112 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %111, i32 0, i32 2
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %115 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %116, 1
  %118 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %119 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %118, i32 0, i32 4
  %120 = load i8*, i8** %119, align 8
  %121 = call i8* @jv_array_set(i8* %113, i32 %117, i8* %120)
  %122 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %123 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %122, i32 0, i32 2
  store i8* %121, i8** %123, align 8
  %124 = call i8* (...) @jv_invalid()
  %125 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %126 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %125, i32 0, i32 4
  store i8* %124, i8** %126, align 8
  br label %540

127:                                              ; preds = %2
  %128 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %129 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load i8*, i8** @JV_LAST_VALUE, align 8
  %132 = icmp ne i8* %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8** %3, align 8
  br label %541

134:                                              ; preds = %127
  %135 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %136 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %134
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8** %3, align 8
  br label %541

140:                                              ; preds = %134
  %141 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %142 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %141, i32 0, i32 2
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @jv_copy(i8* %143)
  %145 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %146 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = sub nsw i32 %147, 1
  %149 = call i8* @jv_array_get(i32 %144, i32 %148)
  store i8* %149, i8** %7, align 8
  %150 = load i8*, i8** %7, align 8
  %151 = call i32 @jv_get_kind(i8* %150)
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* @JV_KIND_NUMBER, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %194

155:                                              ; preds = %140
  %156 = load i8*, i8** %7, align 8
  %157 = call i32 @jv_number_value(i8* %156)
  store i32 %157, i32* %8, align 4
  %158 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %159 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %158, i32 0, i32 4
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @jv_is_valid(i8* %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %177

163:                                              ; preds = %155
  %164 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %165 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %164, i32 0, i32 2
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @jv_copy(i8* %166)
  %168 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %169 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %168, i32 0, i32 4
  %170 = load i8*, i8** %169, align 8
  %171 = call i8* (i32, ...) @JV_ARRAY(i32 %167, i8* %170)
  %172 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %173 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %172, i32 0, i32 3
  store i8* %171, i8** %173, align 8
  %174 = call i8* (...) @jv_invalid()
  %175 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %176 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %175, i32 0, i32 4
  store i8* %174, i8** %176, align 8
  br label %177

177:                                              ; preds = %163, %155
  %178 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %179 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %178, i32 0, i32 2
  %180 = load i8*, i8** %179, align 8
  %181 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %182 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = sub nsw i32 %183, 1
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %185, 1
  %187 = call i8* @jv_number(i32 %186)
  %188 = call i8* @jv_array_set(i8* %180, i32 %184, i8* %187)
  %189 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %190 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %189, i32 0, i32 2
  store i8* %188, i8** %190, align 8
  %191 = load i8*, i8** @JV_LAST_COMMA, align 8
  %192 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %193 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %192, i32 0, i32 0
  store i8* %191, i8** %193, align 8
  br label %242

194:                                              ; preds = %140
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* @JV_KIND_STRING, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %233

198:                                              ; preds = %194
  %199 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %200 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %199, i32 0, i32 4
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 @jv_is_valid(i8* %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %218

204:                                              ; preds = %198
  %205 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %206 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %205, i32 0, i32 2
  %207 = load i8*, i8** %206, align 8
  %208 = call i32 @jv_copy(i8* %207)
  %209 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %210 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %209, i32 0, i32 4
  %211 = load i8*, i8** %210, align 8
  %212 = call i8* (i32, ...) @JV_ARRAY(i32 %208, i8* %211)
  %213 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %214 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %213, i32 0, i32 3
  store i8* %212, i8** %214, align 8
  %215 = call i8* (...) @jv_invalid()
  %216 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %217 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %216, i32 0, i32 4
  store i8* %215, i8** %217, align 8
  br label %218

218:                                              ; preds = %204, %198
  %219 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %220 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %219, i32 0, i32 2
  %221 = load i8*, i8** %220, align 8
  %222 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %223 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = sub nsw i32 %224, 1
  %226 = call i8* (...) @jv_true()
  %227 = call i8* @jv_array_set(i8* %221, i32 %225, i8* %226)
  %228 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %229 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %228, i32 0, i32 2
  store i8* %227, i8** %229, align 8
  %230 = load i8*, i8** @JV_LAST_COMMA, align 8
  %231 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %232 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %231, i32 0, i32 0
  store i8* %230, i8** %232, align 8
  br label %241

233:                                              ; preds = %194
  %234 = load i32, i32* %6, align 4
  %235 = load i32, i32* @JV_KIND_NULL, align 4
  %236 = icmp eq i32 %234, %235
  %237 = zext i1 %236 to i32
  %238 = call i32 @assert(i32 %237)
  %239 = load i8*, i8** %7, align 8
  %240 = call i32 @jv_free(i8* %239)
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %541

241:                                              ; preds = %218
  br label %242

242:                                              ; preds = %241, %177
  %243 = load i8*, i8** %7, align 8
  %244 = call i32 @jv_free(i8* %243)
  br label %540

245:                                              ; preds = %2
  %246 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %247 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %245
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8** %3, align 8
  br label %541

251:                                              ; preds = %245
  %252 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %253 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %252, i32 0, i32 0
  %254 = load i8*, i8** %253, align 8
  %255 = load i8*, i8** @JV_LAST_COMMA, align 8
  %256 = icmp eq i8* %254, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %251
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8** %3, align 8
  br label %541

258:                                              ; preds = %251
  %259 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %260 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %259, i32 0, i32 0
  %261 = load i8*, i8** %260, align 8
  %262 = load i8*, i8** @JV_LAST_OPEN_ARRAY, align 8
  %263 = icmp eq i8* %261, %262
  br i1 %263, label %264, label %273

264:                                              ; preds = %258
  %265 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %266 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %265, i32 0, i32 4
  %267 = load i8*, i8** %266, align 8
  %268 = call i32 @jv_is_valid(i8* %267)
  %269 = icmp ne i32 %268, 0
  %270 = xor i1 %269, true
  %271 = zext i1 %270 to i32
  %272 = call i32 @assert(i32 %271)
  br label %273

273:                                              ; preds = %264, %258
  %274 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %275 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %274, i32 0, i32 2
  %276 = load i8*, i8** %275, align 8
  %277 = call i32 @jv_copy(i8* %276)
  %278 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %279 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = sub nsw i32 %280, 1
  %282 = call i8* @jv_array_get(i32 %277, i32 %281)
  store i8* %282, i8** %7, align 8
  %283 = load i8*, i8** %7, align 8
  %284 = call i32 @jv_get_kind(i8* %283)
  store i32 %284, i32* %6, align 4
  %285 = load i8*, i8** %7, align 8
  %286 = call i32 @jv_free(i8* %285)
  %287 = load i32, i32* %6, align 4
  %288 = load i32, i32* @JV_KIND_NUMBER, align 4
  %289 = icmp ne i32 %287, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %273
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8** %3, align 8
  br label %541

291:                                              ; preds = %273
  %292 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %293 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %292, i32 0, i32 4
  %294 = load i8*, i8** %293, align 8
  %295 = call i32 @jv_is_valid(i8* %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %312

297:                                              ; preds = %291
  %298 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %299 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %298, i32 0, i32 2
  %300 = load i8*, i8** %299, align 8
  %301 = call i32 @jv_copy(i8* %300)
  %302 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %303 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %302, i32 0, i32 4
  %304 = load i8*, i8** %303, align 8
  %305 = call i8* (...) @jv_true()
  %306 = call i8* (i32, ...) @JV_ARRAY(i32 %301, i8* %304, i8* %305)
  %307 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %308 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %307, i32 0, i32 3
  store i8* %306, i8** %308, align 8
  %309 = call i8* (...) @jv_invalid()
  %310 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %311 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %310, i32 0, i32 4
  store i8* %309, i8** %311, align 8
  br label %327

312:                                              ; preds = %291
  %313 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %314 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %313, i32 0, i32 0
  %315 = load i8*, i8** %314, align 8
  %316 = load i8*, i8** @JV_LAST_OPEN_ARRAY, align 8
  %317 = icmp ne i8* %315, %316
  br i1 %317, label %318, label %326

318:                                              ; preds = %312
  %319 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %320 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %319, i32 0, i32 2
  %321 = load i8*, i8** %320, align 8
  %322 = call i32 @jv_copy(i8* %321)
  %323 = call i8* (i32, ...) @JV_ARRAY(i32 %322)
  %324 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %325 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %324, i32 0, i32 3
  store i8* %323, i8** %325, align 8
  br label %326

326:                                              ; preds = %318, %312
  br label %327

327:                                              ; preds = %326, %297
  %328 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %329 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %328, i32 0, i32 2
  %330 = load i8*, i8** %329, align 8
  %331 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %332 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 8
  %334 = add nsw i32 %333, -1
  store i32 %334, i32* %332, align 8
  %335 = call i8* @jv_array_slice(i8* %330, i32 0, i32 %334)
  %336 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %337 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %336, i32 0, i32 2
  store i8* %335, i8** %337, align 8
  %338 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %339 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %338, i32 0, i32 4
  %340 = load i8*, i8** %339, align 8
  %341 = call i32 @jv_free(i8* %340)
  %342 = call i8* (...) @jv_invalid()
  %343 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %344 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %343, i32 0, i32 4
  store i8* %342, i8** %344, align 8
  %345 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %346 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %345, i32 0, i32 0
  %347 = load i8*, i8** %346, align 8
  %348 = load i8*, i8** @JV_LAST_OPEN_ARRAY, align 8
  %349 = icmp eq i8* %347, %348
  br i1 %349, label %350, label %359

350:                                              ; preds = %327
  %351 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %352 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %351, i32 0, i32 2
  %353 = load i8*, i8** %352, align 8
  %354 = call i32 @jv_copy(i8* %353)
  %355 = call i8* (...) @jv_array()
  %356 = call i8* (i32, ...) @JV_ARRAY(i32 %354, i8* %355)
  %357 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %358 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %357, i32 0, i32 3
  store i8* %356, i8** %358, align 8
  br label %359

359:                                              ; preds = %350, %327
  %360 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %361 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 8
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %368

364:                                              ; preds = %359
  %365 = load i8*, i8** @JV_LAST_NONE, align 8
  %366 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %367 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %366, i32 0, i32 0
  store i8* %365, i8** %367, align 8
  br label %372

368:                                              ; preds = %359
  %369 = load i8*, i8** @JV_LAST_VALUE, align 8
  %370 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %371 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %370, i32 0, i32 0
  store i8* %369, i8** %371, align 8
  br label %372

372:                                              ; preds = %368, %364
  br label %540

373:                                              ; preds = %2
  %374 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %375 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 8
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %373
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i8** %3, align 8
  br label %541

379:                                              ; preds = %373
  %380 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %381 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %380, i32 0, i32 0
  %382 = load i8*, i8** %381, align 8
  %383 = load i8*, i8** @JV_LAST_COMMA, align 8
  %384 = icmp eq i8* %382, %383
  br i1 %384, label %385, label %386

385:                                              ; preds = %379
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i8** %3, align 8
  br label %541

386:                                              ; preds = %379
  %387 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %388 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %387, i32 0, i32 0
  %389 = load i8*, i8** %388, align 8
  %390 = load i8*, i8** @JV_LAST_OPEN_OBJECT, align 8
  %391 = icmp eq i8* %389, %390
  br i1 %391, label %392, label %401

392:                                              ; preds = %386
  %393 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %394 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %393, i32 0, i32 4
  %395 = load i8*, i8** %394, align 8
  %396 = call i32 @jv_is_valid(i8* %395)
  %397 = icmp ne i32 %396, 0
  %398 = xor i1 %397, true
  %399 = zext i1 %398 to i32
  %400 = call i32 @assert(i32 %399)
  br label %401

401:                                              ; preds = %392, %386
  %402 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %403 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %402, i32 0, i32 2
  %404 = load i8*, i8** %403, align 8
  %405 = call i32 @jv_copy(i8* %404)
  %406 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %407 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 8
  %409 = sub nsw i32 %408, 1
  %410 = call i8* @jv_array_get(i32 %405, i32 %409)
  store i8* %410, i8** %7, align 8
  %411 = load i8*, i8** %7, align 8
  %412 = call i32 @jv_get_kind(i8* %411)
  store i32 %412, i32* %6, align 4
  %413 = load i8*, i8** %7, align 8
  %414 = call i32 @jv_free(i8* %413)
  %415 = load i32, i32* %6, align 4
  %416 = load i32, i32* @JV_KIND_NUMBER, align 4
  %417 = icmp eq i32 %415, %416
  br i1 %417, label %418, label %419

418:                                              ; preds = %401
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %541

419:                                              ; preds = %401
  %420 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %421 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %420, i32 0, i32 4
  %422 = load i8*, i8** %421, align 8
  %423 = call i32 @jv_is_valid(i8* %422)
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %445

425:                                              ; preds = %419
  %426 = load i32, i32* %6, align 4
  %427 = load i32, i32* @JV_KIND_STRING, align 4
  %428 = icmp ne i32 %426, %427
  br i1 %428, label %429, label %430

429:                                              ; preds = %425
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8** %3, align 8
  br label %541

430:                                              ; preds = %425
  %431 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %432 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %431, i32 0, i32 2
  %433 = load i8*, i8** %432, align 8
  %434 = call i32 @jv_copy(i8* %433)
  %435 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %436 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %435, i32 0, i32 4
  %437 = load i8*, i8** %436, align 8
  %438 = call i8* (...) @jv_true()
  %439 = call i8* (i32, ...) @JV_ARRAY(i32 %434, i8* %437, i8* %438)
  %440 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %441 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %440, i32 0, i32 3
  store i8* %439, i8** %441, align 8
  %442 = call i8* (...) @jv_invalid()
  %443 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %444 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %443, i32 0, i32 4
  store i8* %442, i8** %444, align 8
  br label %494

445:                                              ; preds = %419
  %446 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %447 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %446, i32 0, i32 0
  %448 = load i8*, i8** %447, align 8
  %449 = load i8*, i8** @JV_LAST_COLON, align 8
  %450 = icmp eq i8* %448, %449
  br i1 %450, label %451, label %452

451:                                              ; preds = %445
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i8** %3, align 8
  br label %541

452:                                              ; preds = %445
  %453 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %454 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %453, i32 0, i32 0
  %455 = load i8*, i8** %454, align 8
  %456 = load i8*, i8** @JV_LAST_COMMA, align 8
  %457 = icmp eq i8* %455, %456
  br i1 %457, label %458, label %459

458:                                              ; preds = %452
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i8** %3, align 8
  br label %541

459:                                              ; preds = %452
  %460 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %461 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %460, i32 0, i32 0
  %462 = load i8*, i8** %461, align 8
  %463 = load i8*, i8** @JV_LAST_OPEN_ARRAY, align 8
  %464 = icmp eq i8* %462, %463
  br i1 %464, label %465, label %466

465:                                              ; preds = %459
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i8** %3, align 8
  br label %541

466:                                              ; preds = %459
  %467 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %468 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %467, i32 0, i32 0
  %469 = load i8*, i8** %468, align 8
  %470 = load i8*, i8** @JV_LAST_VALUE, align 8
  %471 = icmp ne i8* %469, %470
  br i1 %471, label %472, label %479

472:                                              ; preds = %466
  %473 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %474 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %473, i32 0, i32 0
  %475 = load i8*, i8** %474, align 8
  %476 = load i8*, i8** @JV_LAST_OPEN_OBJECT, align 8
  %477 = icmp ne i8* %475, %476
  br i1 %477, label %478, label %479

478:                                              ; preds = %472
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8** %3, align 8
  br label %541

479:                                              ; preds = %472, %466
  %480 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %481 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %480, i32 0, i32 0
  %482 = load i8*, i8** %481, align 8
  %483 = load i8*, i8** @JV_LAST_OPEN_OBJECT, align 8
  %484 = icmp ne i8* %482, %483
  br i1 %484, label %485, label %493

485:                                              ; preds = %479
  %486 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %487 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %486, i32 0, i32 2
  %488 = load i8*, i8** %487, align 8
  %489 = call i32 @jv_copy(i8* %488)
  %490 = call i8* (i32, ...) @JV_ARRAY(i32 %489)
  %491 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %492 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %491, i32 0, i32 3
  store i8* %490, i8** %492, align 8
  br label %493

493:                                              ; preds = %485, %479
  br label %494

494:                                              ; preds = %493, %430
  %495 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %496 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %495, i32 0, i32 2
  %497 = load i8*, i8** %496, align 8
  %498 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %499 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %498, i32 0, i32 1
  %500 = load i32, i32* %499, align 8
  %501 = add nsw i32 %500, -1
  store i32 %501, i32* %499, align 8
  %502 = call i8* @jv_array_slice(i8* %497, i32 0, i32 %501)
  %503 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %504 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %503, i32 0, i32 2
  store i8* %502, i8** %504, align 8
  %505 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %506 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %505, i32 0, i32 4
  %507 = load i8*, i8** %506, align 8
  %508 = call i32 @jv_free(i8* %507)
  %509 = call i8* (...) @jv_invalid()
  %510 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %511 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %510, i32 0, i32 4
  store i8* %509, i8** %511, align 8
  %512 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %513 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %512, i32 0, i32 0
  %514 = load i8*, i8** %513, align 8
  %515 = load i8*, i8** @JV_LAST_OPEN_OBJECT, align 8
  %516 = icmp eq i8* %514, %515
  br i1 %516, label %517, label %526

517:                                              ; preds = %494
  %518 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %519 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %518, i32 0, i32 2
  %520 = load i8*, i8** %519, align 8
  %521 = call i32 @jv_copy(i8* %520)
  %522 = call i8* (...) @jv_object()
  %523 = call i8* (i32, ...) @JV_ARRAY(i32 %521, i8* %522)
  %524 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %525 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %524, i32 0, i32 3
  store i8* %523, i8** %525, align 8
  br label %526

526:                                              ; preds = %517, %494
  %527 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %528 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %527, i32 0, i32 1
  %529 = load i32, i32* %528, align 8
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %531, label %535

531:                                              ; preds = %526
  %532 = load i8*, i8** @JV_LAST_NONE, align 8
  %533 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %534 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %533, i32 0, i32 0
  store i8* %532, i8** %534, align 8
  br label %539

535:                                              ; preds = %526
  %536 = load i8*, i8** @JV_LAST_VALUE, align 8
  %537 = load %struct.jv_parser*, %struct.jv_parser** %4, align 8
  %538 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %537, i32 0, i32 0
  store i8* %536, i8** %538, align 8
  br label %539

539:                                              ; preds = %535, %531
  br label %540

540:                                              ; preds = %2, %539, %372, %242, %107, %40, %18
  store i8* null, i8** %3, align 8
  br label %541

541:                                              ; preds = %540, %478, %465, %458, %451, %429, %418, %385, %378, %290, %257, %250, %233, %139, %133, %106, %99, %91, %74, %39, %17
  %542 = load i8*, i8** %3, align 8
  ret i8* %542
}

declare dso_local i32 @jv_is_valid(i8*) #1

declare dso_local i8* @jv_array_append(i8*, i8*) #1

declare dso_local i8* @jv_number(i32) #1

declare dso_local i8* @jv_null(...) #1

declare dso_local i8* @jv_invalid(...) #1

declare dso_local i32 @jv_get_kind(i8*) #1

declare dso_local i8* @jv_array_get(i32, i32) #1

declare dso_local i32 @jv_copy(i8*) #1

declare dso_local i32 @jv_free(i8*) #1

declare dso_local i8* @jv_array_set(i8*, i32, i8*) #1

declare dso_local i32 @jv_number_value(i8*) #1

declare dso_local i8* @JV_ARRAY(i32, ...) #1

declare dso_local i8* @jv_true(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @jv_array_slice(i8*, i32, i32) #1

declare dso_local i8* @jv_array(...) #1

declare dso_local i8* @jv_object(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
