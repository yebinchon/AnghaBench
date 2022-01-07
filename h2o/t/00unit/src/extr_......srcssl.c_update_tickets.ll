; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/src/extr_......srcssl.c_update_tickets.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/src/extr_......srcssl.c_update_tickets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.st_session_ticket_t** }
%struct.st_session_ticket_t = type { i64, i64*, i64 }

@.str = private unnamed_addr constant [40 x i8] c"no space for unique QUIC key identifier\00", align 1
@conf = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i64)* @update_tickets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_tickets(%struct.TYPE_12__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.st_session_ticket_t*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.st_session_ticket_t*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %35, %2
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %13
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load %struct.st_session_ticket_t**, %struct.st_session_ticket_t*** %20, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %21, i64 %26
  %28 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %27, align 8
  store %struct.st_session_ticket_t* %28, %struct.st_session_ticket_t** %7, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %7, align 8
  %31 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %18
  br label %47

35:                                               ; preds = %18
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load %struct.st_session_ticket_t**, %struct.st_session_ticket_t*** %37, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %38, i64 %43
  store %struct.st_session_ticket_t* null, %struct.st_session_ticket_t** %44, align 8
  %45 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %7, align 8
  %46 = call i32 @free_ticket(%struct.st_session_ticket_t* %45)
  store i32 1, i32* %5, align 4
  br label %13

47:                                               ; preds = %34, %13
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %50, 1
  br i1 %51, label %52, label %143

52:                                               ; preds = %47
  store i64 0, i64* %8, align 8
  br label %53

53:                                               ; preds = %134, %52
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %9, align 8
  br label %56

56:                                               ; preds = %87, %53
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = icmp ult i64 %57, %61
  br i1 %62, label %63, label %90

63:                                               ; preds = %56
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load %struct.st_session_ticket_t**, %struct.st_session_ticket_t*** %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %66, i64 %67
  %69 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %68, align 8
  %70 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load %struct.st_session_ticket_t**, %struct.st_session_ticket_t*** %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %76, i64 %77
  %79 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %78, align 8
  %80 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %73, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %63
  br label %90

86:                                               ; preds = %63
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %9, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %9, align 8
  br label %56

90:                                               ; preds = %85, %56
  %91 = load i64, i64* %9, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = icmp ult i64 %91, %95
  br i1 %96, label %97, label %130

97:                                               ; preds = %90
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load %struct.st_session_ticket_t**, %struct.st_session_ticket_t*** %99, align 8
  %101 = load i64, i64* %8, align 8
  %102 = getelementptr inbounds %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %100, i64 %101
  %103 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %102, align 8
  %104 = call i32 @free_ticket(%struct.st_session_ticket_t* %103)
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load %struct.st_session_ticket_t**, %struct.st_session_ticket_t*** %106, align 8
  %108 = load i64, i64* %8, align 8
  %109 = getelementptr inbounds %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %107, i64 %108
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load %struct.st_session_ticket_t**, %struct.st_session_ticket_t*** %111, align 8
  %113 = load i64, i64* %8, align 8
  %114 = getelementptr inbounds %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %112, i64 %113
  %115 = getelementptr inbounds %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %114, i64 1
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* %8, align 8
  %121 = sub i64 %119, %120
  %122 = sub i64 %121, 1
  %123 = mul i64 8, %122
  %124 = trunc i64 %123 to i32
  %125 = call i32 @memmove(%struct.st_session_ticket_t** %109, %struct.st_session_ticket_t** %115, i32 %124)
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, -1
  store i32 %129, i32* %127, align 8
  br label %133

130:                                              ; preds = %90
  %131 = load i64, i64* %8, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %8, align 8
  br label %133

133:                                              ; preds = %130, %97
  br label %134

134:                                              ; preds = %133
  %135 = load i64, i64* %8, align 8
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sub nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = icmp ult i64 %135, %140
  br i1 %141, label %53, label %142

142:                                              ; preds = %134
  br label %143

143:                                              ; preds = %142, %47
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp sge i32 %146, 256
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = call i32 @h2o_fatal(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %143
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %152 = load i64, i64* %4, align 8
  %153 = call i32* @find_ticket_for_encryption(%struct.TYPE_12__* %151, i64 %152)
  %154 = icmp ne i32* %153, null
  %155 = zext i1 %154 to i32
  store i32 %155, i32* %6, align 4
  %156 = load i32, i32* %6, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %150
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  %161 = load %struct.st_session_ticket_t**, %struct.st_session_ticket_t*** %160, align 8
  %162 = getelementptr inbounds %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %161, i64 0
  %163 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %162, align 8
  %164 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @conf, i32 0, i32 0), align 4
  %167 = sdiv i32 %166, 4
  %168 = sext i32 %167 to i64
  %169 = add nsw i64 %165, %168
  %170 = load i64, i64* %4, align 8
  %171 = icmp slt i64 %169, %170
  br i1 %171, label %172, label %266

172:                                              ; preds = %158, %150
  %173 = load i32, i32* %6, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i64, i64* %4, align 8
  %177 = add nsw i64 %176, 60
  br label %180

178:                                              ; preds = %172
  %179 = load i64, i64* %4, align 8
  br label %180

180:                                              ; preds = %178, %175
  %181 = phi i64 [ %177, %175 ], [ %179, %178 ]
  store i64 %181, i64* %10, align 8
  %182 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @conf, i32 0, i32 1, i32 0, i32 0, i32 1), align 4
  %183 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @conf, i32 0, i32 1, i32 0, i32 0, i32 0), align 4
  %184 = load i64, i64* %10, align 8
  %185 = load i64, i64* %10, align 8
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @conf, i32 0, i32 0), align 4
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %185, %187
  %189 = sub nsw i64 %188, 1
  %190 = call %struct.st_session_ticket_t* @new_ticket(i32 %182, i32 %183, i64 %184, i64 %189, i32 1)
  store %struct.st_session_ticket_t* %190, %struct.st_session_ticket_t** %11, align 8
  br label %191

191:                                              ; preds = %180, %229
  store i64 0, i64* %12, align 8
  br label %192

192:                                              ; preds = %218, %191
  %193 = load i64, i64* %12, align 8
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = sext i32 %196 to i64
  %198 = icmp ult i64 %193, %197
  br i1 %198, label %199, label %221

199:                                              ; preds = %192
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 1
  %202 = load %struct.st_session_ticket_t**, %struct.st_session_ticket_t*** %201, align 8
  %203 = load i64, i64* %12, align 8
  %204 = getelementptr inbounds %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %202, i64 %203
  %205 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %204, align 8
  %206 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %205, i32 0, i32 1
  %207 = load i64*, i64** %206, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 0
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %11, align 8
  %211 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %210, i32 0, i32 1
  %212 = load i64*, i64** %211, align 8
  %213 = getelementptr inbounds i64, i64* %212, i64 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp eq i64 %209, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %199
  br label %221

217:                                              ; preds = %199
  br label %218

218:                                              ; preds = %217
  %219 = load i64, i64* %12, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %12, align 8
  br label %192

221:                                              ; preds = %216, %192
  %222 = load i64, i64* %12, align 8
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = sext i32 %225 to i64
  %227 = icmp eq i64 %222, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %221
  br label %236

229:                                              ; preds = %221
  %230 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %11, align 8
  %231 = getelementptr inbounds %struct.st_session_ticket_t, %struct.st_session_ticket_t* %230, i32 0, i32 1
  %232 = load i64*, i64** %231, align 8
  %233 = getelementptr inbounds i64, i64* %232, i64 0
  %234 = load i64, i64* %233, align 8
  %235 = add nsw i64 %234, 1
  store i64 %235, i64* %233, align 8
  br label %191

236:                                              ; preds = %228
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = add nsw i32 %240, 1
  %242 = call i32 @h2o_vector_reserve(i32* null, %struct.TYPE_12__* %237, i32 %241)
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 1
  %245 = load %struct.st_session_ticket_t**, %struct.st_session_ticket_t*** %244, align 8
  %246 = getelementptr inbounds %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %245, i64 1
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 1
  %249 = load %struct.st_session_ticket_t**, %struct.st_session_ticket_t*** %248, align 8
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = sext i32 %252 to i64
  %254 = mul i64 8, %253
  %255 = trunc i64 %254 to i32
  %256 = call i32 @memmove(%struct.st_session_ticket_t** %246, %struct.st_session_ticket_t** %249, i32 %255)
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %258, align 8
  %261 = load %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %11, align 8
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 1
  %264 = load %struct.st_session_ticket_t**, %struct.st_session_ticket_t*** %263, align 8
  %265 = getelementptr inbounds %struct.st_session_ticket_t*, %struct.st_session_ticket_t** %264, i64 0
  store %struct.st_session_ticket_t* %261, %struct.st_session_ticket_t** %265, align 8
  store i32 1, i32* %5, align 4
  br label %266

266:                                              ; preds = %236, %158
  %267 = load i32, i32* %5, align 4
  ret i32 %267
}

declare dso_local i32 @free_ticket(%struct.st_session_ticket_t*) #1

declare dso_local i32 @memmove(%struct.st_session_ticket_t**, %struct.st_session_ticket_t**, i32) #1

declare dso_local i32 @h2o_fatal(i8*) #1

declare dso_local i32* @find_ticket_for_encryption(%struct.TYPE_12__*, i64) #1

declare dso_local %struct.st_session_ticket_t* @new_ticket(i32, i32, i64, i64, i32) #1

declare dso_local i32 @h2o_vector_reserve(i32*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
