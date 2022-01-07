; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-import-dump.c_process_inbox_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-import-dump.c_process_inbox_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_add_message = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i64 }

@I = common dso_local global i32* null, align 8
@ib_from_id = common dso_local global i64 0, align 8
@ib_to_id = common dso_local global i64 0, align 8
@list_id = common dso_local global i32 0, align 4
@ib_date = common dso_local global i64 0, align 8
@force_read_threshold = common dso_local global i32 0, align 4
@ib_read_state = common dso_local global i64 0, align 8
@L = common dso_local global i32* null, align 8
@ib_title = common dso_local global i64 0, align 8
@S = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [3 x i8] c"\\N\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@ib_message = common dso_local global i64 0, align 8
@LEV_TX_ADD_MESSAGE = common dso_local global i64 0, align 8
@TXF_UNREAD = common dso_local global i64 0, align 8
@ib_to_shown = common dso_local global i64 0, align 8
@TXF_SPAM = common dso_local global i32 0, align 4
@TXF_FRIENDS = common dso_local global i32 0, align 4
@ib_id = common dso_local global i64 0, align 8
@ib_read_date = common dso_local global i64 0, align 8
@ib_ip = common dso_local global i64 0, align 8
@ib_port = common dso_local global i64 0, align 8
@ib_front = common dso_local global i64 0, align 8
@ib_ua_hash = common dso_local global i64 0, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_inbox_row() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lev_add_message*, align 8
  %7 = load i32*, i32** @I, align 8
  %8 = load i64, i64* @ib_from_id, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %1, align 4
  %11 = load i32*, i32** @I, align 8
  %12 = load i64, i64* @ib_to_id, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* @list_id, align 4
  %15 = load i32, i32* @list_id, align 4
  %16 = call i64 @conv_uid(i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %0
  %19 = load i32, i32* @list_id, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %1, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18, %0
  br label %299

25:                                               ; preds = %21
  %26 = load i32*, i32** @I, align 8
  %27 = load i64, i64* @ib_date, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load i32*, i32** @I, align 8
  %33 = load i64, i64* @ib_date, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @force_read_threshold, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32*, i32** @I, align 8
  %40 = load i64, i64* @ib_read_state, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %31, %25
  %43 = load i32*, i32** @L, align 8
  %44 = load i64, i64* @ib_title, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %64

48:                                               ; preds = %42
  %49 = load i8**, i8*** @S, align 8
  %50 = load i64, i64* @ib_title, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %48
  %56 = load i32*, i32** @L, align 8
  %57 = load i64, i64* @ib_title, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32 3, i32* %58, align 4
  %59 = load i8**, i8*** @S, align 8
  %60 = load i64, i64* @ib_title, align 8
  %61 = getelementptr inbounds i8*, i8** %59, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @strcpy(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %55, %48, %42
  %65 = load i32*, i32** @L, align 8
  %66 = load i64, i64* @ib_message, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %86

70:                                               ; preds = %64
  %71 = load i8**, i8*** @S, align 8
  %72 = load i64, i64* @ib_message, align 8
  %73 = getelementptr inbounds i8*, i8** %71, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %70
  %78 = load i32*, i32** @L, align 8
  %79 = load i64, i64* @ib_message, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32 0, i32* %80, align 4
  %81 = load i8**, i8*** @S, align 8
  %82 = load i64, i64* @ib_message, align 8
  %83 = getelementptr inbounds i8*, i8** %81, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  store i8 0, i8* %85, align 1
  br label %86

86:                                               ; preds = %77, %70, %64
  %87 = load i32*, i32** @L, align 8
  %88 = load i64, i64* @ib_title, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = add i64 64, %91
  %93 = load i32*, i32** @L, align 8
  %94 = load i64, i64* @ib_message, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = add i64 %92, %97
  %99 = add i64 %98, 2
  %100 = trunc i64 %99 to i32
  %101 = call %struct.lev_add_message* @write_alloc(i32 %100)
  store %struct.lev_add_message* %101, %struct.lev_add_message** %6, align 8
  %102 = load i64, i64* @LEV_TX_ADD_MESSAGE, align 8
  %103 = load i32*, i32** @I, align 8
  %104 = load i64, i64* @ib_read_state, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %86
  br label %111

109:                                              ; preds = %86
  %110 = load i64, i64* @TXF_UNREAD, align 8
  br label %111

111:                                              ; preds = %109, %108
  %112 = phi i64 [ 0, %108 ], [ %110, %109 ]
  %113 = add nsw i64 %102, %112
  %114 = load i32*, i32** @I, align 8
  %115 = load i64, i64* @ib_to_shown, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %111
  %120 = load i32, i32* @TXF_SPAM, align 4
  br label %122

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121, %119
  %123 = phi i32 [ %120, %119 ], [ 0, %121 ]
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %113, %124
  %126 = load i32, i32* @list_id, align 4
  %127 = load i32, i32* %1, align 4
  %128 = call i64 @is_friend(i32 %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %122
  %131 = load i32, i32* @TXF_FRIENDS, align 4
  br label %133

132:                                              ; preds = %122
  br label %133

133:                                              ; preds = %132, %130
  %134 = phi i32 [ %131, %130 ], [ 0, %132 ]
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %125, %135
  %137 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %138 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %137, i32 0, i32 11
  store i64 %136, i64* %138, align 8
  %139 = load i32, i32* @list_id, align 4
  %140 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %141 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load i32*, i32** @I, align 8
  %143 = load i64, i64* @ib_id, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %147 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* %1, align 4
  %149 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %150 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  %151 = load i32*, i32** @I, align 8
  %152 = load i64, i64* @ib_read_state, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %133
  br label %163

157:                                              ; preds = %133
  %158 = load i32*, i32** @I, align 8
  %159 = load i64, i64* @ib_read_date, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = sub nsw i32 0, %161
  br label %163

163:                                              ; preds = %157, %156
  %164 = phi i32 [ 0, %156 ], [ %162, %157 ]
  %165 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %166 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 4
  %167 = load i32*, i32** @I, align 8
  %168 = load i64, i64* @ib_date, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %172 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %171, i32 0, i32 4
  store i32 %170, i32* %172, align 8
  %173 = load i32*, i32** @I, align 8
  %174 = load i64, i64* @ib_ip, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %178 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %177, i32 0, i32 5
  store i32 %176, i32* %178, align 4
  %179 = load i32*, i32** @I, align 8
  %180 = load i64, i64* @ib_port, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %184 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %183, i32 0, i32 6
  store i32 %182, i32* %184, align 8
  %185 = load i32*, i32** @I, align 8
  %186 = load i64, i64* @ib_front, align 8
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %190 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %189, i32 0, i32 7
  store i32 %188, i32* %190, align 4
  %191 = load i8**, i8*** @S, align 8
  %192 = load i64, i64* @ib_ua_hash, align 8
  %193 = getelementptr inbounds i8*, i8** %191, i64 %192
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @strtoull(i8* %194, i32 0, i32 10)
  %196 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %197 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %196, i32 0, i32 10
  store i32 %195, i32* %197, align 8
  %198 = load i32*, i32** @L, align 8
  %199 = load i64, i64* @ib_title, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, 1
  %203 = load i32*, i32** @L, align 8
  %204 = load i64, i64* @ib_message, align 8
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %202, %206
  %208 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %209 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %208, i32 0, i32 8
  store i32 %207, i32* %209, align 8
  %210 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %211 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %210, i32 0, i32 9
  %212 = load i8*, i8** %211, align 8
  store i8* %212, i8** %4, align 8
  %213 = load i32*, i32** @L, align 8
  %214 = load i64, i64* @ib_title, align 8
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %3, align 4
  %217 = load i8**, i8*** @S, align 8
  %218 = load i64, i64* @ib_title, align 8
  %219 = getelementptr inbounds i8*, i8** %217, i64 %218
  %220 = load i8*, i8** %219, align 8
  store i8* %220, i8** %5, align 8
  store i32 0, i32* %2, align 4
  br label %221

221:                                              ; preds = %245, %163
  %222 = load i32, i32* %2, align 4
  %223 = load i32, i32* %3, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %248

225:                                              ; preds = %221
  %226 = load i8*, i8** %5, align 8
  %227 = load i32, i32* %2, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %226, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = zext i8 %230 to i32
  %232 = icmp slt i32 %231, 32
  br i1 %232, label %233, label %236

233:                                              ; preds = %225
  %234 = load i8*, i8** %4, align 8
  %235 = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %235, i8** %4, align 8
  store i8 32, i8* %234, align 1
  br label %244

236:                                              ; preds = %225
  %237 = load i8*, i8** %5, align 8
  %238 = load i32, i32* %2, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8, i8* %237, i64 %239
  %241 = load i8, i8* %240, align 1
  %242 = load i8*, i8** %4, align 8
  %243 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %243, i8** %4, align 8
  store i8 %241, i8* %242, align 1
  br label %244

244:                                              ; preds = %236, %233
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %2, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %2, align 4
  br label %221

248:                                              ; preds = %221
  %249 = load i8*, i8** %4, align 8
  %250 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %250, i8** %4, align 8
  store i8 9, i8* %249, align 1
  %251 = load i32*, i32** @L, align 8
  %252 = load i64, i64* @ib_message, align 8
  %253 = getelementptr inbounds i32, i32* %251, i64 %252
  %254 = load i32, i32* %253, align 4
  store i32 %254, i32* %3, align 4
  %255 = load i8**, i8*** @S, align 8
  %256 = load i64, i64* @ib_message, align 8
  %257 = getelementptr inbounds i8*, i8** %255, i64 %256
  %258 = load i8*, i8** %257, align 8
  store i8* %258, i8** %5, align 8
  store i32 0, i32* %2, align 4
  br label %259

259:                                              ; preds = %291, %248
  %260 = load i32, i32* %2, align 4
  %261 = load i32, i32* %3, align 4
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %263, label %294

263:                                              ; preds = %259
  %264 = load i8*, i8** %5, align 8
  %265 = load i32, i32* %2, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %264, i64 %266
  %268 = load i8, i8* %267, align 1
  %269 = zext i8 %268 to i32
  %270 = icmp slt i32 %269, 32
  br i1 %270, label %271, label %282

271:                                              ; preds = %263
  %272 = load i8*, i8** %5, align 8
  %273 = load i32, i32* %2, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* %272, i64 %274
  %276 = load i8, i8* %275, align 1
  %277 = sext i8 %276 to i32
  %278 = icmp ne i32 %277, 9
  br i1 %278, label %279, label %282

279:                                              ; preds = %271
  %280 = load i8*, i8** %4, align 8
  %281 = getelementptr inbounds i8, i8* %280, i32 1
  store i8* %281, i8** %4, align 8
  store i8 32, i8* %280, align 1
  br label %290

282:                                              ; preds = %271, %263
  %283 = load i8*, i8** %5, align 8
  %284 = load i32, i32* %2, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i8, i8* %283, i64 %285
  %287 = load i8, i8* %286, align 1
  %288 = load i8*, i8** %4, align 8
  %289 = getelementptr inbounds i8, i8* %288, i32 1
  store i8* %289, i8** %4, align 8
  store i8 %287, i8* %288, align 1
  br label %290

290:                                              ; preds = %282, %279
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %2, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %2, align 4
  br label %259

294:                                              ; preds = %259
  %295 = load i8*, i8** %4, align 8
  %296 = getelementptr inbounds i8, i8* %295, i32 1
  store i8* %296, i8** %4, align 8
  store i8 0, i8* %295, align 1
  %297 = load i32, i32* @adj_rec, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* @adj_rec, align 4
  br label %299

299:                                              ; preds = %294, %24
  ret void
}

declare dso_local i64 @conv_uid(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local %struct.lev_add_message* @write_alloc(i32) #1

declare dso_local i64 @is_friend(i32, i32) #1

declare dso_local i32 @strtoull(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
