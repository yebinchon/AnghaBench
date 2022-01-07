; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-search-extension.c_hints_merge_end_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-search-extension.c_hints_merge_end_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.gather_entry = type { i64 }
%struct.hints_gather_extra = type { i32, i64 }

@hints_merge_end_query.buff = internal global [2048 x i8] zeroinitializer, align 16
@Q_limit = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Using result %d (num = %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Dropping result %d (num = %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"result = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"VALUE \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c" 0 .........\0D\0A\00", align 1
@HINTS_MERGE_EXTENSION = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"%d%c%d\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%c%.6lf\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"% 9d\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hints_merge_end_query(%struct.connection* %0, i8* %1, i32 %2, i8* %3, %struct.gather_entry* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.connection*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.gather_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.hints_gather_extra*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  store %struct.connection* %0, %struct.connection** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store %struct.gather_entry* %4, %struct.gather_entry** %12, align 8
  store i32 %5, i32* %13, align 4
  %25 = load i8*, i8** %11, align 8
  %26 = bitcast i8* %25 to %struct.hints_gather_extra*
  store %struct.hints_gather_extra* %26, %struct.hints_gather_extra** %14, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = icmp ne i8* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  store i32 0, i32* %17, align 4
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %21, align 4
  %32 = load %struct.hints_gather_extra*, %struct.hints_gather_extra** %14, align 8
  %33 = getelementptr inbounds %struct.hints_gather_extra, %struct.hints_gather_extra* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* @Q_limit, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %21, align 4
  %37 = call i32 @eat_at(i8* %35, i32 %36)
  store i32 %37, i32* %22, align 4
  %38 = load i32, i32* %22, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %9, align 8
  %42 = load i32, i32* %22, align 4
  %43 = load i32, i32* %21, align 4
  %44 = sub nsw i32 %43, %42
  store i32 %44, i32* %21, align 4
  %45 = call i32 @clear_gather_heap(i32 0)
  store i32 0, i32* %16, align 4
  br label %46

46:                                               ; preds = %111, %6
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %114

50:                                               ; preds = %46
  %51 = load %struct.gather_entry*, %struct.gather_entry** %12, align 8
  %52 = load i32, i32* %16, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %51, i64 %53
  %55 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sge i64 %56, 0
  br i1 %57, label %58, label %96

58:                                               ; preds = %50
  %59 = load %struct.gather_entry*, %struct.gather_entry** %12, align 8
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %59, i64 %61
  %63 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %17, align 4
  %69 = load %struct.gather_entry*, %struct.gather_entry** %12, align 8
  %70 = load i32, i32* %16, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %69, i64 %71
  %73 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sge i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load i32, i32* @verbosity, align 4
  %79 = icmp sge i32 %78, 4
  br i1 %79, label %80, label %90

80:                                               ; preds = %58
  %81 = load i32, i32* @stderr, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load %struct.gather_entry*, %struct.gather_entry** %12, align 8
  %84 = load i32, i32* %16, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %83, i64 %85
  %87 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %82, i64 %88)
  br label %90

90:                                               ; preds = %80, %58
  %91 = load %struct.gather_entry*, %struct.gather_entry** %12, align 8
  %92 = load i32, i32* %16, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %91, i64 %93
  %95 = call i32 @gather_heap_insert(%struct.gather_entry* %94)
  br label %110

96:                                               ; preds = %50
  %97 = load i32, i32* @verbosity, align 4
  %98 = icmp sge i32 %97, 4
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = load i32, i32* @stderr, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load %struct.gather_entry*, %struct.gather_entry** %12, align 8
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %102, i64 %104
  %106 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %101, i64 %107)
  br label %109

109:                                              ; preds = %99, %96
  br label %110

110:                                              ; preds = %109, %90
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %16, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %16, align 4
  br label %46

114:                                              ; preds = %46
  %115 = load i32, i32* @verbosity, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i32, i32* @stderr, align 4
  %119 = load i32, i32* %17, align 4
  %120 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %117, %114
  %122 = load i32, i32* @Q_limit, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* %17, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %124, %121
  %128 = load i32, i32* %17, align 4
  %129 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @hints_merge_end_query.buff, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %15, align 4
  %131 = load %struct.connection*, %struct.connection** %8, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = load i32, i32* %15, align 4
  %134 = call i32 @return_one_key(%struct.connection* %131, i8* %132, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @hints_merge_end_query.buff, i64 0, i64 0), i32 %133)
  store i32 %134, i32* %7, align 4
  br label %268

135:                                              ; preds = %124
  %136 = load %struct.connection*, %struct.connection** %8, align 8
  %137 = getelementptr inbounds %struct.connection, %struct.connection* %136, i32 0, i32 0
  %138 = call i32 @write_out(i32* %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %139 = load %struct.connection*, %struct.connection** %8, align 8
  %140 = getelementptr inbounds %struct.connection, %struct.connection* %139, i32 0, i32 0
  %141 = load i8*, i8** %9, align 8
  %142 = load i32, i32* %21, align 4
  %143 = call i32 @write_out(i32* %140, i8* %141, i32 %142)
  %144 = load %struct.connection*, %struct.connection** %8, align 8
  %145 = getelementptr inbounds %struct.connection, %struct.connection* %144, i32 0, i32 0
  %146 = call i8* @get_write_ptr(i32* %145, i32 512)
  store i8* %146, i8** %18, align 8
  %147 = load i8*, i8** %18, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %135
  store i32 -1, i32* %7, align 4
  br label %268

150:                                              ; preds = %135
  %151 = load i8*, i8** %18, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 448
  store i8* %152, i8** %20, align 8
  %153 = load i8*, i8** %18, align 8
  %154 = call i32 @memcpy(i8* %153, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 14)
  %155 = load i8*, i8** %18, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 3
  store i8* %156, i8** %19, align 8
  %157 = load i8*, i8** %18, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 14
  store i8* %158, i8** %18, align 8
  %159 = load i8*, i8** %18, align 8
  %160 = load i32, i32* %17, align 4
  %161 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %159, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %160)
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %15, align 4
  %163 = load i8*, i8** %18, align 8
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i8, i8* %163, i64 %164
  store i8* %165, i8** %18, align 8
  %166 = load i64, i64* @HINTS_MERGE_EXTENSION, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %150
  br label %171

169:                                              ; preds = %150
  %170 = call i32 @assert(i32 0)
  br label %171

171:                                              ; preds = %169, %168
  store i32 0, i32* %16, align 4
  br label %172

172:                                              ; preds = %244, %171
  %173 = load i32, i32* %16, align 4
  %174 = load i32, i32* @Q_limit, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %248

176:                                              ; preds = %172
  %177 = call i32* (...) @get_gather_heap_head()
  store i32* %177, i32** %24, align 8
  %178 = load i32*, i32** %24, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %181, label %180

180:                                              ; preds = %176
  br label %248

181:                                              ; preds = %176
  %182 = load i8*, i8** %18, align 8
  %183 = load i8*, i8** %20, align 8
  %184 = icmp uge i8* %182, %183
  br i1 %184, label %185, label %205

185:                                              ; preds = %181
  %186 = load %struct.connection*, %struct.connection** %8, align 8
  %187 = getelementptr inbounds %struct.connection, %struct.connection* %186, i32 0, i32 0
  %188 = load i8*, i8** %18, align 8
  %189 = load i8*, i8** %20, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 -448
  %191 = ptrtoint i8* %188 to i64
  %192 = ptrtoint i8* %190 to i64
  %193 = sub i64 %191, %192
  %194 = trunc i64 %193 to i32
  %195 = call i32 @advance_write_ptr(i32* %187, i32 %194)
  %196 = load %struct.connection*, %struct.connection** %8, align 8
  %197 = getelementptr inbounds %struct.connection, %struct.connection* %196, i32 0, i32 0
  %198 = call i8* @get_write_ptr(i32* %197, i32 512)
  store i8* %198, i8** %18, align 8
  %199 = load i8*, i8** %18, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %202, label %201

201:                                              ; preds = %185
  store i32 -1, i32* %7, align 4
  br label %268

202:                                              ; preds = %185
  %203 = load i8*, i8** %18, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 448
  store i8* %204, i8** %20, align 8
  br label %205

205:                                              ; preds = %202, %181
  %206 = load i8*, i8** %18, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %18, align 8
  store i8 44, i8* %206, align 1
  %208 = load i32, i32* %15, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %15, align 4
  %210 = load i8*, i8** %18, align 8
  %211 = load i32*, i32** %24, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %24, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 1
  %216 = load i32, i32* %215, align 4
  %217 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %210, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %213, i32 44, i32 %216)
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %23, align 4
  %219 = load i32, i32* %15, align 4
  %220 = add nsw i32 %219, %218
  store i32 %220, i32* %15, align 4
  %221 = load i32, i32* %23, align 4
  %222 = load i8*, i8** %18, align 8
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds i8, i8* %222, i64 %223
  store i8* %224, i8** %18, align 8
  %225 = load %struct.hints_gather_extra*, %struct.hints_gather_extra** %14, align 8
  %226 = getelementptr inbounds %struct.hints_gather_extra, %struct.hints_gather_extra* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %244

229:                                              ; preds = %205
  %230 = load i8*, i8** %18, align 8
  %231 = load i32*, i32** %24, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 2
  %233 = bitcast i32* %232 to float*
  %234 = load float, float* %233, align 4
  %235 = fpext float %234 to double
  %236 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %230, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 44, double %235)
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %23, align 4
  %238 = load i32, i32* %15, align 4
  %239 = add nsw i32 %238, %237
  store i32 %239, i32* %15, align 4
  %240 = load i32, i32* %23, align 4
  %241 = load i8*, i8** %18, align 8
  %242 = sext i32 %240 to i64
  %243 = getelementptr inbounds i8, i8* %241, i64 %242
  store i8* %243, i8** %18, align 8
  br label %244

244:                                              ; preds = %229, %205
  %245 = call i32 (...) @gather_heap_advance()
  %246 = load i32, i32* %16, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %16, align 4
  br label %172

248:                                              ; preds = %180, %172
  %249 = load i8*, i8** %19, align 8
  %250 = load i8*, i8** %19, align 8
  %251 = load i32, i32* %15, align 4
  %252 = call i64 (i8*, i8*, i32, ...) @sprintf(i8* %250, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %251)
  %253 = getelementptr inbounds i8, i8* %249, i64 %252
  store i8 13, i8* %253, align 1
  %254 = load i8*, i8** %18, align 8
  %255 = call i32 @memcpy(i8* %254, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 2)
  %256 = load i8*, i8** %18, align 8
  %257 = getelementptr inbounds i8, i8* %256, i64 2
  store i8* %257, i8** %18, align 8
  %258 = load %struct.connection*, %struct.connection** %8, align 8
  %259 = getelementptr inbounds %struct.connection, %struct.connection* %258, i32 0, i32 0
  %260 = load i8*, i8** %18, align 8
  %261 = load i8*, i8** %20, align 8
  %262 = getelementptr inbounds i8, i8* %261, i64 -448
  %263 = ptrtoint i8* %260 to i64
  %264 = ptrtoint i8* %262 to i64
  %265 = sub i64 %263, %264
  %266 = trunc i64 %265 to i32
  %267 = call i32 @advance_write_ptr(i32* %259, i32 %266)
  store i32 0, i32* %7, align 4
  br label %268

268:                                              ; preds = %248, %201, %149, %127
  %269 = load i32, i32* %7, align 4
  ret i32 %269
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @eat_at(i8*, i32) #1

declare dso_local i32 @clear_gather_heap(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @gather_heap_insert(%struct.gather_entry*) #1

declare dso_local i64 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i8*, i32) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local i8* @get_write_ptr(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32* @get_gather_heap_head(...) #1

declare dso_local i32 @advance_write_ptr(i32*, i32) #1

declare dso_local i32 @gather_heap_advance(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
