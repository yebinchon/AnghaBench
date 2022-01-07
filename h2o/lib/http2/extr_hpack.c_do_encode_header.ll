; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_hpack.c_do_encode_header.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_hpack.c_do_encode_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64, %struct.st_h2o_hpack_header_table_entry_t* }
%struct.st_h2o_hpack_header_table_entry_t = type { %struct.TYPE_12__*, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i8*, i64 }
%struct.TYPE_14__ = type { i8*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@HEADER_TABLE_OFFSET = common dso_local global i64 0, align 8
@HEADER_TABLE_ENTRY_SIZE_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_15__*, i32*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32)* @do_encode_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @do_encode_header(%struct.TYPE_15__* %0, i32* %1, %struct.TYPE_14__* %2, %struct.TYPE_14__* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.st_h2o_hpack_header_table_entry_t*, align 8
  %17 = alloca %struct.st_h2o_hpack_header_table_entry_t*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %9, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %19 = call i32 @h2o_iovec_is_token(%struct.TYPE_14__* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %5
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %24 = bitcast %struct.TYPE_14__* %23 to %struct.TYPE_13__*
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  br label %29

28:                                               ; preds = %5
  br label %29

29:                                               ; preds = %28, %22
  %30 = phi i32 [ %27, %22 ], [ 0, %28 ]
  store i32 %30, i32* %13, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %14, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %15, align 8
  br label %37

37:                                               ; preds = %133, %29
  %38 = load i64, i64* %15, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %136

40:                                               ; preds = %37
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 3
  %43 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %42, align 8
  %44 = load i64, i64* %14, align 8
  %45 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %43, i64 %44
  store %struct.st_h2o_hpack_header_table_entry_t* %45, %struct.st_h2o_hpack_header_table_entry_t** %16, align 8
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %50 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %16, align 8
  %51 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %50, i32 0, i32 1
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = icmp ne %struct.TYPE_14__* %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %123

55:                                               ; preds = %48
  br label %90

56:                                               ; preds = %40
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %16, align 8
  %64 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %63, i32 0, i32 1
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %16, align 8
  %69 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %68, i32 0, i32 1
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = call i32 @h2o_memis(i8* %59, i32 %62, i8* %67, i64 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %56
  br label %123

77:                                               ; preds = %56
  %78 = load i32, i32* %13, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %15, align 8
  %85 = sub i64 %83, %84
  %86 = load i64, i64* @HEADER_TABLE_OFFSET, align 8
  %87 = add i64 %85, %86
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %13, align 4
  br label %89

89:                                               ; preds = %80, %77
  br label %90

90:                                               ; preds = %89, %55
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %16, align 8
  %98 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %97, i32 0, i32 0
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %16, align 8
  %103 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %102, i32 0, i32 0
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @h2o_memis(i8* %93, i32 %96, i8* %101, i64 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %90
  br label %123

110:                                              ; preds = %90
  %111 = load i32*, i32** %8, align 8
  store i32 128, i32* %111, align 4
  %112 = load i32*, i32** %8, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %15, align 8
  %117 = sub i64 %115, %116
  %118 = load i64, i64* @HEADER_TABLE_OFFSET, align 8
  %119 = add i64 %117, %118
  %120 = trunc i64 %119 to i32
  %121 = call i32* @h2o_hpack_encode_int(i32* %112, i32 %120, i32 7)
  store i32* %121, i32** %8, align 8
  %122 = load i32*, i32** %8, align 8
  store i32* %122, i32** %6, align 8
  br label %300

123:                                              ; preds = %109, %76, %54
  %124 = load i64, i64* %14, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %14, align 8
  %126 = load i64, i64* %14, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %126, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  store i64 0, i64* %14, align 8
  br label %132

132:                                              ; preds = %131, %123
  br label %133

133:                                              ; preds = %132
  %134 = load i64, i64* %15, align 8
  %135 = add i64 %134, -1
  store i64 %135, i64* %15, align 8
  br label %37

136:                                              ; preds = %37
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %148, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %12, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %144 = bitcast %struct.TYPE_14__* %143 to %struct.TYPE_13__*
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %11, align 4
  br label %148

148:                                              ; preds = %142, %139, %136
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %148
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = icmp slt i32 %154, 20
  %156 = zext i1 %155 to i32
  store i32 %156, i32* %11, align 4
  br label %157

157:                                              ; preds = %151, %148
  %158 = load i32, i32* %13, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %174

160:                                              ; preds = %157
  %161 = load i32, i32* %11, align 4
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %168

163:                                              ; preds = %160
  %164 = load i32*, i32** %8, align 8
  store i32 16, i32* %164, align 4
  %165 = load i32*, i32** %8, align 8
  %166 = load i32, i32* %13, align 4
  %167 = call i32* @h2o_hpack_encode_int(i32* %165, i32 %166, i32 4)
  store i32* %167, i32** %8, align 8
  br label %173

168:                                              ; preds = %160
  %169 = load i32*, i32** %8, align 8
  store i32 64, i32* %169, align 4
  %170 = load i32*, i32** %8, align 8
  %171 = load i32, i32* %13, align 4
  %172 = call i32* @h2o_hpack_encode_int(i32* %170, i32 %171, i32 6)
  store i32* %172, i32** %8, align 8
  br label %173

173:                                              ; preds = %168, %163
  br label %188

174:                                              ; preds = %157
  %175 = load i32*, i32** %8, align 8
  %176 = getelementptr inbounds i32, i32* %175, i32 1
  store i32* %176, i32** %8, align 8
  store i32 64, i32* %175, align 4
  %177 = load i32*, i32** %8, align 8
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @h2o_hpack_encode_string(i32* %177, i8* %180, i32 %183)
  %185 = load i32*, i32** %8, align 8
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  store i32* %187, i32** %8, align 8
  br label %188

188:                                              ; preds = %174, %173
  %189 = load i32, i32* %11, align 4
  %190 = icmp eq i32 %189, 1
  br i1 %190, label %191, label %203

191:                                              ; preds = %188
  %192 = load i32*, i32** %8, align 8
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @encode_as_is(i32* %192, i8* %195, i32 %198)
  %200 = load i32*, i32** %8, align 8
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  store i32* %202, i32** %8, align 8
  br label %298

203:                                              ; preds = %188
  %204 = load i32*, i32** %8, align 8
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @h2o_hpack_encode_string(i32* %204, i8* %207, i32 %210)
  %212 = load i32*, i32** %8, align 8
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i32, i32* %212, i64 %213
  store i32* %214, i32** %8, align 8
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = add nsw i32 %218, %221
  %223 = load i32, i32* @HEADER_TABLE_ENTRY_SIZE_OFFSET, align 4
  %224 = add nsw i32 %222, %223
  %225 = call %struct.st_h2o_hpack_header_table_entry_t* @header_table_add(%struct.TYPE_15__* %215, i32 %224, i32 32)
  store %struct.st_h2o_hpack_header_table_entry_t* %225, %struct.st_h2o_hpack_header_table_entry_t** %17, align 8
  %226 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %17, align 8
  %227 = icmp ne %struct.st_h2o_hpack_header_table_entry_t* %226, null
  br i1 %227, label %228, label %297

228:                                              ; preds = %203
  %229 = load i32, i32* %12, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %228
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %233 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %17, align 8
  %234 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %233, i32 0, i32 1
  store %struct.TYPE_14__* %232, %struct.TYPE_14__** %234, align 8
  br label %266

235:                                              ; preds = %228
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = call i8* @alloc_buf(i32* null, i32 %238)
  %240 = bitcast i8* %239 to %struct.TYPE_14__*
  %241 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %17, align 8
  %242 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %241, i32 0, i32 1
  store %struct.TYPE_14__* %240, %struct.TYPE_14__** %242, align 8
  %243 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %17, align 8
  %244 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %243, i32 0, i32 1
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 0
  %247 = load i8*, i8** %246, align 8
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, i8* %247, i64 %251
  store i8 0, i8* %252, align 1
  %253 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %17, align 8
  %254 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %253, i32 0, i32 1
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 0
  %257 = load i8*, i8** %256, align 8
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 0
  %260 = load i8*, i8** %259, align 8
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = sext i32 %263 to i64
  %265 = call i32 @memcpy(i8* %257, i8* %260, i64 %264)
  br label %266

266:                                              ; preds = %235, %231
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = call i8* @alloc_buf(i32* null, i32 %269)
  %271 = bitcast i8* %270 to %struct.TYPE_12__*
  %272 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %17, align 8
  %273 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %272, i32 0, i32 0
  store %struct.TYPE_12__* %271, %struct.TYPE_12__** %273, align 8
  %274 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %17, align 8
  %275 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %274, i32 0, i32 0
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 0
  %278 = load i8*, i8** %277, align 8
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i8, i8* %278, i64 %282
  store i8 0, i8* %283, align 1
  %284 = load %struct.st_h2o_hpack_header_table_entry_t*, %struct.st_h2o_hpack_header_table_entry_t** %17, align 8
  %285 = getelementptr inbounds %struct.st_h2o_hpack_header_table_entry_t, %struct.st_h2o_hpack_header_table_entry_t* %284, i32 0, i32 0
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 0
  %288 = load i8*, i8** %287, align 8
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 0
  %291 = load i8*, i8** %290, align 8
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = sext i32 %294 to i64
  %296 = call i32 @memcpy(i8* %288, i8* %291, i64 %295)
  br label %297

297:                                              ; preds = %266, %203
  br label %298

298:                                              ; preds = %297, %191
  %299 = load i32*, i32** %8, align 8
  store i32* %299, i32** %6, align 8
  br label %300

300:                                              ; preds = %298, %110
  %301 = load i32*, i32** %6, align 8
  ret i32* %301
}

declare dso_local i32 @h2o_iovec_is_token(%struct.TYPE_14__*) #1

declare dso_local i32 @h2o_memis(i8*, i32, i8*, i64) #1

declare dso_local i32* @h2o_hpack_encode_int(i32*, i32, i32) #1

declare dso_local i32 @h2o_hpack_encode_string(i32*, i8*, i32) #1

declare dso_local i32 @encode_as_is(i32*, i8*, i32) #1

declare dso_local %struct.st_h2o_hpack_header_table_entry_t* @header_table_add(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i8* @alloc_buf(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
