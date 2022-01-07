; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg.c_rwm_process_encrypt_decrypt.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg.c_rwm_process_encrypt_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rwm_encrypt_decrypt_tmp = type { i32, i64, i32, i8*, i32, i32, i32 (i32, i8*, i64, i32, i32)*, %struct.raw_message* }
%struct.raw_message = type { i32, i64, %struct.msg_part* }
%struct.msg_part = type { i32, %struct.TYPE_4__*, %struct.msg_part* }
%struct.TYPE_4__ = type { i64 }
%struct.msg_buffer = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MSG_STD_BUFFER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rwm_process_encrypt_decrypt(%struct.rwm_encrypt_decrypt_tmp* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.rwm_encrypt_decrypt_tmp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.raw_message*, align 8
  %8 = alloca %struct.msg_buffer*, align 8
  %9 = alloca %struct.msg_part*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.msg_buffer*, align 8
  %12 = alloca %struct.msg_part*, align 8
  %13 = alloca i32, align 4
  store %struct.rwm_encrypt_decrypt_tmp* %0, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %15 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %14, i32 0, i32 7
  %16 = load %struct.raw_message*, %struct.raw_message** %15, align 8
  store %struct.raw_message* %16, %struct.raw_message** %7, align 8
  %17 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %18 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %63, label %21

21:                                               ; preds = %3
  %22 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %23 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %22, i32 0, i32 2
  %24 = load %struct.msg_part*, %struct.msg_part** %23, align 8
  %25 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %28 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MSG_STD_BUFFER, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i64, i64* @MSG_STD_BUFFER, align 8
  br label %38

34:                                               ; preds = %21
  %35 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %36 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  br label %38

38:                                               ; preds = %34, %32
  %39 = phi i64 [ %33, %32 ], [ %37, %34 ]
  %40 = call %struct.msg_buffer* @alloc_msg_buffer(%struct.TYPE_4__* %26, i64 %39)
  store %struct.msg_buffer* %40, %struct.msg_buffer** %8, align 8
  %41 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %42 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %41, i32 0, i32 2
  %43 = load %struct.msg_part*, %struct.msg_part** %42, align 8
  %44 = load %struct.msg_buffer*, %struct.msg_buffer** %8, align 8
  %45 = call %struct.msg_part* @new_msg_part(%struct.msg_part* %43, %struct.msg_buffer* %44)
  store %struct.msg_part* %45, %struct.msg_part** %9, align 8
  %46 = load %struct.msg_part*, %struct.msg_part** %9, align 8
  %47 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %48 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %47, i32 0, i32 2
  %49 = load %struct.msg_part*, %struct.msg_part** %48, align 8
  %50 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %49, i32 0, i32 2
  store %struct.msg_part* %46, %struct.msg_part** %50, align 8
  %51 = load %struct.msg_part*, %struct.msg_part** %9, align 8
  %52 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %53 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %52, i32 0, i32 2
  store %struct.msg_part* %51, %struct.msg_part** %53, align 8
  %54 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %55 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.msg_buffer*, %struct.msg_buffer** %8, align 8
  %57 = getelementptr inbounds %struct.msg_buffer, %struct.msg_buffer* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %62 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %38, %3
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %67 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %68, %65
  store i64 %69, i64* %67, align 8
  %70 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %71 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %171

74:                                               ; preds = %63
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %77 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 16, %78
  %80 = icmp sge i32 %75, %79
  br i1 %80, label %81, label %153

81:                                               ; preds = %74
  %82 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %83 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %82, i32 0, i32 3
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %86 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = getelementptr i8, i8* %84, i64 %88
  %90 = load i8*, i8** %5, align 8
  %91 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %92 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 16, %93
  %95 = call i32 @memcpy(i8* %89, i8* %90, i32 %94)
  %96 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %97 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 16, %98
  %100 = load i32, i32* %6, align 4
  %101 = sub nsw i32 %100, %99
  store i32 %101, i32* %6, align 4
  %102 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %103 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = sub nsw i32 16, %104
  %106 = load i8*, i8** %5, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr i8, i8* %106, i64 %107
  store i8* %108, i8** %5, align 8
  %109 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %110 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %109, i32 0, i32 2
  store i32 0, i32* %110, align 8
  %111 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %112 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %111, i32 0, i32 6
  %113 = load i32 (i32, i8*, i64, i32, i32)*, i32 (i32, i8*, i64, i32, i32)** %112, align 8
  %114 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %115 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %118 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %117, i32 0, i32 3
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %121 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %120, i32 0, i32 2
  %122 = load %struct.msg_part*, %struct.msg_part** %121, align 8
  %123 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %122, i32 0, i32 1
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %128 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %126, %129
  %131 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %132 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = call i32 %113(i32 %116, i8* %119, i64 %130, i32 16, i32 %133)
  %135 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %136 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %135, i32 0, i32 2
  %137 = load %struct.msg_part*, %struct.msg_part** %136, align 8
  %138 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 16
  store i32 %140, i32* %138, align 8
  %141 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %142 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %143, 16
  store i64 %144, i64* %142, align 8
  %145 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %146 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 16
  store i32 %148, i32* %146, align 8
  %149 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %150 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sub nsw i32 %151, 16
  store i32 %152, i32* %150, align 8
  br label %170

153:                                              ; preds = %74
  %154 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %155 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %154, i32 0, i32 3
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %158 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = getelementptr i8, i8* %156, i64 %160
  %162 = load i8*, i8** %5, align 8
  %163 = load i32, i32* %6, align 4
  %164 = call i32 @memcpy(i8* %161, i8* %162, i32 %163)
  %165 = load i32, i32* %6, align 4
  %166 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %167 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %168, %165
  store i32 %169, i32* %167, align 8
  br label %360

170:                                              ; preds = %81
  br label %171

171:                                              ; preds = %170, %63
  %172 = load i32, i32* %6, align 4
  %173 = and i32 %172, 15
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %195

175:                                              ; preds = %171
  %176 = load i32, i32* %6, align 4
  %177 = and i32 %176, -16
  store i32 %177, i32* %10, align 4
  %178 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %179 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %178, i32 0, i32 3
  %180 = load i8*, i8** %179, align 8
  %181 = load i8*, i8** %5, align 8
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr i8, i8* %181, i64 %183
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* %10, align 4
  %187 = sub nsw i32 %185, %186
  %188 = call i32 @memcpy(i8* %180, i8* %184, i32 %187)
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* %10, align 4
  %191 = sub nsw i32 %189, %190
  %192 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %193 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %192, i32 0, i32 2
  store i32 %191, i32* %193, align 8
  %194 = load i32, i32* %10, align 4
  store i32 %194, i32* %6, align 4
  br label %195

195:                                              ; preds = %175, %171
  br label %196

196:                                              ; preds = %195, %359
  %197 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %198 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %249, label %201

201:                                              ; preds = %196
  %202 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %203 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %202, i32 0, i32 2
  %204 = load %struct.msg_part*, %struct.msg_part** %203, align 8
  %205 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %204, i32 0, i32 1
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %205, align 8
  %207 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %208 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load i32, i32* %6, align 4
  %211 = sext i32 %210 to i64
  %212 = add nsw i64 %209, %211
  %213 = load i64, i64* @MSG_STD_BUFFER, align 8
  %214 = icmp sge i64 %212, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %201
  %216 = load i64, i64* @MSG_STD_BUFFER, align 8
  br label %224

217:                                              ; preds = %201
  %218 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %219 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = load i32, i32* %6, align 4
  %222 = sext i32 %221 to i64
  %223 = add nsw i64 %220, %222
  br label %224

224:                                              ; preds = %217, %215
  %225 = phi i64 [ %216, %215 ], [ %223, %217 ]
  %226 = call %struct.msg_buffer* @alloc_msg_buffer(%struct.TYPE_4__* %206, i64 %225)
  store %struct.msg_buffer* %226, %struct.msg_buffer** %11, align 8
  %227 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %228 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %227, i32 0, i32 2
  %229 = load %struct.msg_part*, %struct.msg_part** %228, align 8
  %230 = load %struct.msg_buffer*, %struct.msg_buffer** %11, align 8
  %231 = call %struct.msg_part* @new_msg_part(%struct.msg_part* %229, %struct.msg_buffer* %230)
  store %struct.msg_part* %231, %struct.msg_part** %12, align 8
  %232 = load %struct.msg_part*, %struct.msg_part** %12, align 8
  %233 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %234 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %233, i32 0, i32 2
  %235 = load %struct.msg_part*, %struct.msg_part** %234, align 8
  %236 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %235, i32 0, i32 2
  store %struct.msg_part* %232, %struct.msg_part** %236, align 8
  %237 = load %struct.msg_part*, %struct.msg_part** %12, align 8
  %238 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %239 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %238, i32 0, i32 2
  store %struct.msg_part* %237, %struct.msg_part** %239, align 8
  %240 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %241 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %240, i32 0, i32 1
  store i64 0, i64* %241, align 8
  %242 = load %struct.msg_buffer*, %struct.msg_buffer** %11, align 8
  %243 = getelementptr inbounds %struct.msg_buffer, %struct.msg_buffer* %242, i32 0, i32 0
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %248 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %247, i32 0, i32 0
  store i32 %246, i32* %248, align 8
  br label %249

249:                                              ; preds = %224, %196
  %250 = load i32, i32* %6, align 4
  %251 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %252 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = icmp sle i32 %250, %253
  br i1 %254, label %255, label %302

255:                                              ; preds = %249
  %256 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %257 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %256, i32 0, i32 6
  %258 = load i32 (i32, i8*, i64, i32, i32)*, i32 (i32, i8*, i64, i32, i32)** %257, align 8
  %259 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %260 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %259, i32 0, i32 5
  %261 = load i32, i32* %260, align 4
  %262 = load i8*, i8** %5, align 8
  %263 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %264 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %263, i32 0, i32 2
  %265 = load %struct.msg_part*, %struct.msg_part** %264, align 8
  %266 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %265, i32 0, i32 1
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %271 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = add nsw i64 %269, %272
  %274 = load i32, i32* %6, align 4
  %275 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %276 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %275, i32 0, i32 4
  %277 = load i32, i32* %276, align 8
  %278 = call i32 %258(i32 %261, i8* %262, i64 %273, i32 %274, i32 %277)
  %279 = load i32, i32* %6, align 4
  %280 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %281 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %280, i32 0, i32 2
  %282 = load %struct.msg_part*, %struct.msg_part** %281, align 8
  %283 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = add nsw i32 %284, %279
  store i32 %285, i32* %283, align 8
  %286 = load i32, i32* %6, align 4
  %287 = sext i32 %286 to i64
  %288 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %289 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = add nsw i64 %290, %287
  store i64 %291, i64* %289, align 8
  %292 = load i32, i32* %6, align 4
  %293 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %294 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = add nsw i32 %295, %292
  store i32 %296, i32* %294, align 8
  %297 = load i32, i32* %6, align 4
  %298 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %299 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = sub nsw i32 %300, %297
  store i32 %301, i32* %299, align 8
  br label %360

302:                                              ; preds = %249
  %303 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %304 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  store i32 %305, i32* %13, align 4
  %306 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %307 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %306, i32 0, i32 6
  %308 = load i32 (i32, i8*, i64, i32, i32)*, i32 (i32, i8*, i64, i32, i32)** %307, align 8
  %309 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %310 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %309, i32 0, i32 5
  %311 = load i32, i32* %310, align 4
  %312 = load i8*, i8** %5, align 8
  %313 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %314 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %313, i32 0, i32 2
  %315 = load %struct.msg_part*, %struct.msg_part** %314, align 8
  %316 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %315, i32 0, i32 1
  %317 = load %struct.TYPE_4__*, %struct.TYPE_4__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %321 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = add nsw i64 %319, %322
  %324 = load i32, i32* %13, align 4
  %325 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %326 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %325, i32 0, i32 4
  %327 = load i32, i32* %326, align 8
  %328 = call i32 %308(i32 %311, i8* %312, i64 %323, i32 %324, i32 %327)
  %329 = load i32, i32* %13, align 4
  %330 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %331 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %330, i32 0, i32 2
  %332 = load %struct.msg_part*, %struct.msg_part** %331, align 8
  %333 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = add nsw i32 %334, %329
  store i32 %335, i32* %333, align 8
  %336 = load i32, i32* %13, align 4
  %337 = sext i32 %336 to i64
  %338 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %339 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %338, i32 0, i32 1
  %340 = load i64, i64* %339, align 8
  %341 = add nsw i64 %340, %337
  store i64 %341, i64* %339, align 8
  %342 = load i32, i32* %13, align 4
  %343 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %344 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = add nsw i32 %345, %342
  store i32 %346, i32* %344, align 8
  %347 = load i32, i32* %13, align 4
  %348 = load i8*, i8** %5, align 8
  %349 = sext i32 %347 to i64
  %350 = getelementptr i8, i8* %348, i64 %349
  store i8* %350, i8** %5, align 8
  %351 = load i32, i32* %13, align 4
  %352 = load i32, i32* %6, align 4
  %353 = sub nsw i32 %352, %351
  store i32 %353, i32* %6, align 4
  %354 = load i32, i32* %13, align 4
  %355 = load %struct.rwm_encrypt_decrypt_tmp*, %struct.rwm_encrypt_decrypt_tmp** %4, align 8
  %356 = getelementptr inbounds %struct.rwm_encrypt_decrypt_tmp, %struct.rwm_encrypt_decrypt_tmp* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = sub nsw i32 %357, %354
  store i32 %358, i32* %356, align 8
  br label %359

359:                                              ; preds = %302
  br label %196

360:                                              ; preds = %255, %153
  ret void
}

declare dso_local %struct.msg_buffer* @alloc_msg_buffer(%struct.TYPE_4__*, i64) #1

declare dso_local %struct.msg_part* @new_msg_part(%struct.msg_part*, %struct.msg_buffer*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
