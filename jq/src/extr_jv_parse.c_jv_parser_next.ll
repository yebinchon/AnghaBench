; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_parse.c_jv_parser_next.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_parse.c_jv_parser_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jv_parser = type { i32, i8*, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64 }

@JV_PARSE_SEQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Malformed BOM\00", align 1
@JV_PARSER_WAITING_FOR_RS = common dso_local global i64 0, align 8
@JV_PARSE_STREAMING = common dso_local global i32 0, align 4
@JV_PARSER_NORMAL = common dso_local global i64 0, align 8
@OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"%s at line %d, column %d (need RS to resync)\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%s at line %d, column %d\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"Unfinished abandoned text at EOF at line %d, column %d\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Unfinished string at EOF at line %d, column %d\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%s at EOF at line %d, column %d\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Unfinished JSON term at EOF at line %d, column %d\00", align 1
@JV_KIND_NUMBER = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [75 x i8] c"Potentially truncated top-level numeric value at EOF at line %d, column %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jv_parser_next(%struct.jv_parser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jv_parser*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store %struct.jv_parser* %0, %struct.jv_parser** %3, align 8
  %7 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %8 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (...) @jv_invalid()
  store i32 %12, i32* %2, align 4
  br label %366

13:                                               ; preds = %1
  %14 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %15 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = call i32 (...) @jv_invalid()
  store i32 %19, i32* %2, align 4
  br label %366

20:                                               ; preds = %13
  %21 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %22 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 255
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %27 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @JV_PARSE_SEQ, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = call i32 @jv_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 @jv_invalid_with_msg(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %366

35:                                               ; preds = %25
  %36 = load i64, i64* @JV_PARSER_WAITING_FOR_RS, align 8
  %37 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %38 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %37, i32 0, i32 4
  store i64 %36, i64* %38, align 8
  %39 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %40 = call i32 @parser_reset(%struct.jv_parser* %39)
  br label %41

41:                                               ; preds = %35, %20
  %42 = call i32 (...) @jv_invalid()
  store i32 %42, i32* %4, align 4
  %43 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %44 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @JV_PARSE_STREAMING, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %51 = call i64 @stream_check_done(%struct.jv_parser* %50, i32* %4)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %366

55:                                               ; preds = %49, %41
  store i64 0, i64* %6, align 8
  br label %56

56:                                               ; preds = %109, %108, %55
  %57 = load i64, i64* %6, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %56
  %60 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %61 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %64 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br label %67

67:                                               ; preds = %59, %56
  %68 = phi i1 [ false, %56 ], [ %66, %59 ]
  br i1 %68, label %69, label %113

69:                                               ; preds = %67
  %70 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %71 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %74 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %74, align 8
  %77 = getelementptr inbounds i8, i8* %72, i64 %75
  %78 = load i8, i8* %77, align 1
  store i8 %78, i8* %5, align 1
  %79 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %80 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @JV_PARSER_WAITING_FOR_RS, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %109

84:                                               ; preds = %69
  %85 = load i8, i8* %5, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 10
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %90 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %89, i32 0, i32 10
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  %93 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %94 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %93, i32 0, i32 9
  store i64 0, i64* %94, align 8
  br label %100

95:                                               ; preds = %84
  %96 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %97 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %96, i32 0, i32 9
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %97, align 8
  br label %100

100:                                              ; preds = %95, %88
  %101 = load i8, i8* %5, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 30
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i64, i64* @JV_PARSER_NORMAL, align 8
  %106 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %107 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %106, i32 0, i32 4
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %104, %100
  br label %56

109:                                              ; preds = %69
  %110 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %111 = load i8, i8* %5, align 1
  %112 = call i64 @scan(%struct.jv_parser* %110, i8 signext %111, i32* %4)
  store i64 %112, i64* %6, align 8
  br label %56

113:                                              ; preds = %67
  %114 = load i64, i64* %6, align 8
  %115 = load i64, i64* @OK, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i32, i32* %4, align 4
  store i32 %118, i32* %2, align 4
  br label %366

119:                                              ; preds = %113
  %120 = load i64, i64* %6, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %178

122:                                              ; preds = %119
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @jv_free(i32 %123)
  %125 = load i8, i8* %5, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 30
  br i1 %127, label %128, label %152

128:                                              ; preds = %122
  %129 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %130 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @JV_PARSE_SEQ, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %152

135:                                              ; preds = %128
  %136 = load i64, i64* @JV_PARSER_WAITING_FOR_RS, align 8
  %137 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %138 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %137, i32 0, i32 4
  store i64 %136, i64* %138, align 8
  %139 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %140 = load i64, i64* %6, align 8
  %141 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %142 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %141, i32 0, i32 10
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %146 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %145, i32 0, i32 9
  %147 = load i64, i64* %146, align 8
  %148 = call i32 (%struct.jv_parser*, i8*, i64, i64, ...) @make_error(%struct.jv_parser* %139, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %140, i64 %144, i64 %147)
  store i32 %148, i32* %4, align 4
  %149 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %150 = call i32 @parser_reset(%struct.jv_parser* %149)
  %151 = load i32, i32* %4, align 4
  store i32 %151, i32* %2, align 4
  br label %366

152:                                              ; preds = %128, %122
  %153 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %154 = load i64, i64* %6, align 8
  %155 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %156 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %155, i32 0, i32 10
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  %159 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %160 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %159, i32 0, i32 9
  %161 = load i64, i64* %160, align 8
  %162 = call i32 (%struct.jv_parser*, i8*, i64, i64, ...) @make_error(%struct.jv_parser* %153, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %154, i64 %158, i64 %161)
  store i32 %162, i32* %4, align 4
  %163 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %164 = call i32 @parser_reset(%struct.jv_parser* %163)
  %165 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %166 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @JV_PARSE_SEQ, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %152
  %172 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %173 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %172, i32 0, i32 1
  store i8* null, i8** %173, align 8
  %174 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %175 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %174, i32 0, i32 5
  store i64 0, i64* %175, align 8
  br label %176

176:                                              ; preds = %171, %152
  %177 = load i32, i32* %4, align 4
  store i32 %177, i32* %2, align 4
  br label %366

178:                                              ; preds = %119
  %179 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %180 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %179, i32 0, i32 14
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %178
  %184 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %185 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %184, i32 0, i32 5
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %188 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %187, i32 0, i32 6
  %189 = load i64, i64* %188, align 8
  %190 = icmp eq i64 %186, %189
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert(i32 %191)
  %193 = call i32 (...) @jv_invalid()
  store i32 %193, i32* %2, align 4
  br label %366

194:                                              ; preds = %178
  %195 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %196 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %195, i32 0, i32 0
  store i32 1, i32* %196, align 8
  %197 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %198 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %197, i32 0, i32 5
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %201 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %200, i32 0, i32 6
  %202 = load i64, i64* %201, align 8
  %203 = icmp eq i64 %199, %202
  %204 = zext i1 %203 to i32
  %205 = call i32 @assert(i32 %204)
  %206 = load i32, i32* %4, align 4
  %207 = call i32 @jv_free(i32 %206)
  %208 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %209 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %208, i32 0, i32 4
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @JV_PARSER_WAITING_FOR_RS, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %223

213:                                              ; preds = %194
  %214 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %215 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %216 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %215, i32 0, i32 10
  %217 = load i32, i32* %216, align 8
  %218 = sext i32 %217 to i64
  %219 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %220 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %219, i32 0, i32 9
  %221 = load i64, i64* %220, align 8
  %222 = call i32 (%struct.jv_parser*, i8*, i64, i64, ...) @make_error(%struct.jv_parser* %214, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i64 %218, i64 %221)
  store i32 %222, i32* %2, align 4
  br label %366

223:                                              ; preds = %194
  %224 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %225 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %224, i32 0, i32 4
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @JV_PARSER_NORMAL, align 8
  %228 = icmp ne i64 %226, %227
  br i1 %228, label %229, label %245

229:                                              ; preds = %223
  %230 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %231 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %232 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %231, i32 0, i32 10
  %233 = load i32, i32* %232, align 8
  %234 = sext i32 %233 to i64
  %235 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %236 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %235, i32 0, i32 9
  %237 = load i64, i64* %236, align 8
  %238 = call i32 (%struct.jv_parser*, i8*, i64, i64, ...) @make_error(%struct.jv_parser* %230, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 %234, i64 %237)
  store i32 %238, i32* %4, align 4
  %239 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %240 = call i32 @parser_reset(%struct.jv_parser* %239)
  %241 = load i64, i64* @JV_PARSER_WAITING_FOR_RS, align 8
  %242 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %243 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %242, i32 0, i32 4
  store i64 %241, i64* %243, align 8
  %244 = load i32, i32* %4, align 4
  store i32 %244, i32* %2, align 4
  br label %366

245:                                              ; preds = %223
  %246 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %247 = call i64 @check_literal(%struct.jv_parser* %246)
  store i64 %247, i64* %6, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %266

249:                                              ; preds = %245
  %250 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %251 = load i64, i64* %6, align 8
  %252 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %253 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %252, i32 0, i32 10
  %254 = load i32, i32* %253, align 8
  %255 = sext i32 %254 to i64
  %256 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %257 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %256, i32 0, i32 9
  %258 = load i64, i64* %257, align 8
  %259 = call i32 (%struct.jv_parser*, i8*, i64, i64, ...) @make_error(%struct.jv_parser* %250, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %251, i64 %255, i64 %258)
  store i32 %259, i32* %4, align 4
  %260 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %261 = call i32 @parser_reset(%struct.jv_parser* %260)
  %262 = load i64, i64* @JV_PARSER_WAITING_FOR_RS, align 8
  %263 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %264 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %263, i32 0, i32 4
  store i64 %262, i64* %264, align 8
  %265 = load i32, i32* %4, align 4
  store i32 %265, i32* %2, align 4
  br label %366

266:                                              ; preds = %245
  %267 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %268 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @JV_PARSE_STREAMING, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %266
  %274 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %275 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %274, i32 0, i32 7
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %290, label %278

278:                                              ; preds = %273, %266
  %279 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %280 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @JV_PARSE_STREAMING, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %306, label %285

285:                                              ; preds = %278
  %286 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %287 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %286, i32 0, i32 8
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %306

290:                                              ; preds = %285, %273
  %291 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %292 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %293 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %292, i32 0, i32 10
  %294 = load i32, i32* %293, align 8
  %295 = sext i32 %294 to i64
  %296 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %297 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %296, i32 0, i32 9
  %298 = load i64, i64* %297, align 8
  %299 = call i32 (%struct.jv_parser*, i8*, i64, i64, ...) @make_error(%struct.jv_parser* %291, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i64 %295, i64 %298)
  store i32 %299, i32* %4, align 4
  %300 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %301 = call i32 @parser_reset(%struct.jv_parser* %300)
  %302 = load i64, i64* @JV_PARSER_WAITING_FOR_RS, align 8
  %303 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %304 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %303, i32 0, i32 4
  store i64 %302, i64* %304, align 8
  %305 = load i32, i32* %4, align 4
  store i32 %305, i32* %2, align 4
  br label %366

306:                                              ; preds = %285, %278
  %307 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %308 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @JV_PARSE_STREAMING, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %328

313:                                              ; preds = %306
  %314 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %315 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %314, i32 0, i32 12
  %316 = load i32, i32* %315, align 8
  %317 = call i64 @jv_is_valid(i32 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %328

319:                                              ; preds = %313
  %320 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %321 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %320, i32 0, i32 13
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @jv_copy(i32 %322)
  %324 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %325 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %324, i32 0, i32 12
  %326 = load i32, i32* %325, align 8
  %327 = call i32 @JV_ARRAY(i32 %323, i32 %326)
  store i32 %327, i32* %4, align 4
  br label %332

328:                                              ; preds = %313, %306
  %329 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %330 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %329, i32 0, i32 12
  %331 = load i32, i32* %330, align 8
  store i32 %331, i32* %4, align 4
  br label %332

332:                                              ; preds = %328, %319
  %333 = call i32 (...) @jv_invalid()
  %334 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %335 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %334, i32 0, i32 12
  store i32 %333, i32* %335, align 8
  %336 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %337 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* @JV_PARSE_SEQ, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %364

342:                                              ; preds = %332
  %343 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %344 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %343, i32 0, i32 11
  %345 = load i32, i32* %344, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %364, label %347

347:                                              ; preds = %342
  %348 = load i32, i32* %4, align 4
  %349 = call i64 @jv_get_kind(i32 %348)
  %350 = load i64, i64* @JV_KIND_NUMBER, align 8
  %351 = icmp eq i64 %349, %350
  br i1 %351, label %352, label %364

352:                                              ; preds = %347
  %353 = load i32, i32* %4, align 4
  %354 = call i32 @jv_free(i32 %353)
  %355 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %356 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %357 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %356, i32 0, i32 10
  %358 = load i32, i32* %357, align 8
  %359 = sext i32 %358 to i64
  %360 = load %struct.jv_parser*, %struct.jv_parser** %3, align 8
  %361 = getelementptr inbounds %struct.jv_parser, %struct.jv_parser* %360, i32 0, i32 9
  %362 = load i64, i64* %361, align 8
  %363 = call i32 (%struct.jv_parser*, i8*, i64, i64, ...) @make_error(%struct.jv_parser* %355, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.7, i64 0, i64 0), i64 %359, i64 %362)
  store i32 %363, i32* %2, align 4
  br label %366

364:                                              ; preds = %347, %342, %332
  %365 = load i32, i32* %4, align 4
  store i32 %365, i32* %2, align 4
  br label %366

366:                                              ; preds = %364, %352, %290, %249, %229, %213, %183, %176, %135, %117, %53, %32, %18, %11
  %367 = load i32, i32* %2, align 4
  ret i32 %367
}

declare dso_local i32 @jv_invalid(...) #1

declare dso_local i32 @jv_invalid_with_msg(i32) #1

declare dso_local i32 @jv_string(i8*) #1

declare dso_local i32 @parser_reset(%struct.jv_parser*) #1

declare dso_local i64 @stream_check_done(%struct.jv_parser*, i32*) #1

declare dso_local i64 @scan(%struct.jv_parser*, i8 signext, i32*) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @make_error(%struct.jv_parser*, i8*, i64, i64, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @check_literal(%struct.jv_parser*) #1

declare dso_local i64 @jv_is_valid(i32) #1

declare dso_local i32 @JV_ARRAY(i32, i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i64 @jv_get_kind(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
