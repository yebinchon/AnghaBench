; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-settings.c_blk_stack_limits.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-settings.c_blk_stack_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_stack_limits(%struct.queue_limits* %0, %struct.queue_limits* %1, i32 %2) #0 {
  %4 = alloca %struct.queue_limits*, align 8
  %5 = alloca %struct.queue_limits*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.queue_limits* %0, %struct.queue_limits** %4, align 8
  store %struct.queue_limits* %1, %struct.queue_limits** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %12 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %11, i32 0, i32 24
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %15 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %14, i32 0, i32 24
  %16 = load i8*, i8** %15, align 8
  %17 = call i8* @min_not_zero(i8* %13, i8* %16)
  %18 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %19 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %18, i32 0, i32 24
  store i8* %17, i8** %19, align 8
  %20 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %21 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %20, i32 0, i32 23
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %24 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %23, i32 0, i32 23
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @min_not_zero(i8* %22, i8* %25)
  %27 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %28 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %27, i32 0, i32 23
  store i8* %26, i8** %28, align 8
  %29 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %30 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %29, i32 0, i32 22
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %33 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %32, i32 0, i32 22
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @min_not_zero(i8* %31, i8* %34)
  %36 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %37 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %36, i32 0, i32 22
  store i8* %35, i8** %37, align 8
  %38 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %39 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %42 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @min(i32 %40, i32 %43)
  %45 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %46 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %48 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %51 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @min(i32 %49, i32 %52)
  %54 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %55 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %57 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %56, i32 0, i32 21
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %60 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %59, i32 0, i32 21
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @min_not_zero(i8* %58, i8* %61)
  %63 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %64 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %63, i32 0, i32 21
  store i8* %62, i8** %64, align 8
  %65 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %66 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %65, i32 0, i32 20
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %69 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %68, i32 0, i32 20
  %70 = load i8*, i8** %69, align 8
  %71 = call i8* @min_not_zero(i8* %67, i8* %70)
  %72 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %73 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %72, i32 0, i32 20
  store i8* %71, i8** %73, align 8
  %74 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %75 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %74, i32 0, i32 19
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %78 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %77, i32 0, i32 19
  %79 = load i8*, i8** %78, align 8
  %80 = call i8* @min_not_zero(i8* %76, i8* %79)
  %81 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %82 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %81, i32 0, i32 19
  store i8* %80, i8** %82, align 8
  %83 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %84 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %83, i32 0, i32 18
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %87 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %86, i32 0, i32 18
  %88 = load i8*, i8** %87, align 8
  %89 = call i8* @min_not_zero(i8* %85, i8* %88)
  %90 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %91 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %90, i32 0, i32 18
  store i8* %89, i8** %91, align 8
  %92 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %93 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %92, i32 0, i32 17
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %96 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %95, i32 0, i32 17
  %97 = load i8*, i8** %96, align 8
  %98 = call i8* @min_not_zero(i8* %94, i8* %97)
  %99 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %100 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %99, i32 0, i32 17
  store i8* %98, i8** %100, align 8
  %101 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %102 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %101, i32 0, i32 16
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %105 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %104, i32 0, i32 16
  %106 = load i8*, i8** %105, align 8
  %107 = call i8* @min_not_zero(i8* %103, i8* %106)
  %108 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %109 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %108, i32 0, i32 16
  store i8* %107, i8** %109, align 8
  %110 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %111 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %110, i32 0, i32 15
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %114 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %113, i32 0, i32 15
  %115 = load i8*, i8** %114, align 8
  %116 = call i8* @min_not_zero(i8* %112, i8* %115)
  %117 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %118 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %117, i32 0, i32 15
  store i8* %116, i8** %118, align 8
  %119 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %120 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %123 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  %126 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @queue_limit_alignment_offset(%struct.queue_limits* %126, i32 %127)
  store i32 %128, i32* %9, align 4
  %129 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %130 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %167

134:                                              ; preds = %3
  %135 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %136 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %139 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @max(i32 %137, i32 %140)
  %142 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %143 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = add i32 %141, %144
  store i32 %145, i32* %7, align 4
  %146 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %147 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %150 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @max(i32 %148, i32 %151)
  %153 = load i32, i32* %9, align 4
  %154 = add i32 %152, %153
  store i32 %154, i32* %8, align 4
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @max(i32 %155, i32 %156)
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @min(i32 %158, i32 %159)
  %161 = srem i32 %157, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %134
  %164 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %165 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %164, i32 0, i32 2
  store i32 1, i32* %165, align 8
  store i32 -1, i32* %10, align 4
  br label %166

166:                                              ; preds = %163, %134
  br label %167

167:                                              ; preds = %166, %3
  %168 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %169 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %172 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %171, i32 0, i32 6
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @max(i32 %170, i32 %173)
  %175 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %176 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %175, i32 0, i32 6
  store i32 %174, i32* %176, align 8
  %177 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %178 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %181 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @max(i32 %179, i32 %182)
  %184 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %185 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %184, i32 0, i32 4
  store i32 %183, i32* %185, align 8
  %186 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %187 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %190 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @max(i32 %188, i32 %191)
  %193 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %194 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %193, i32 0, i32 5
  store i32 %192, i32* %194, align 4
  %195 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %196 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %199 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %198, i32 0, i32 7
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @lcm_not_zero(i32 %197, i32 %200)
  %202 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %203 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %202, i32 0, i32 7
  store i32 %201, i32* %203, align 4
  %204 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %205 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %208 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 8
  %210 = sub nsw i32 %209, 1
  %211 = and i32 %206, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %167
  %214 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %215 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %218 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %217, i32 0, i32 4
  store i32 %216, i32* %218, align 8
  %219 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %220 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %219, i32 0, i32 2
  store i32 1, i32* %220, align 8
  store i32 -1, i32* %10, align 4
  br label %221

221:                                              ; preds = %213, %167
  %222 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %223 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %226 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = sub i32 %227, 1
  %229 = and i32 %224, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %239

231:                                              ; preds = %221
  %232 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %233 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %236 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %235, i32 0, i32 5
  store i32 %234, i32* %236, align 4
  %237 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %238 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %237, i32 0, i32 2
  store i32 1, i32* %238, align 8
  store i32 -1, i32* %10, align 4
  br label %239

239:                                              ; preds = %231, %221
  %240 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %241 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %240, i32 0, i32 7
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %244 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 8
  %246 = sub i32 %245, 1
  %247 = and i32 %242, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %239
  %250 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %251 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %250, i32 0, i32 7
  store i32 0, i32* %251, align 4
  %252 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %253 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %252, i32 0, i32 2
  store i32 1, i32* %253, align 8
  store i32 -1, i32* %10, align 4
  br label %254

254:                                              ; preds = %249, %239
  %255 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %256 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %255, i32 0, i32 8
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %259 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %258, i32 0, i32 8
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @max(i32 %257, i32 %260)
  %262 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %263 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %262, i32 0, i32 8
  store i32 %261, i32* %263, align 8
  %264 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %265 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %9, align 4
  %268 = call i32 @lcm_not_zero(i32 %266, i32 %267)
  %269 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %270 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %273 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %272, i32 0, i32 5
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @max(i32 %271, i32 %274)
  %276 = srem i32 %268, %275
  %277 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %278 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %277, i32 0, i32 3
  store i32 %276, i32* %278, align 4
  %279 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %280 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %283 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %282, i32 0, i32 6
  %284 = load i32, i32* %283, align 8
  %285 = sub nsw i32 %284, 1
  %286 = and i32 %281, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %254
  %289 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %290 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %289, i32 0, i32 2
  store i32 1, i32* %290, align 8
  store i32 -1, i32* %10, align 4
  br label %291

291:                                              ; preds = %288, %254
  %292 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %293 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %292, i32 0, i32 9
  %294 = load i32, i32* %293, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %374

296:                                              ; preds = %291
  %297 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %298 = load i32, i32* %6, align 4
  %299 = call i32 @queue_limit_discard_alignment(%struct.queue_limits* %297, i32 %298)
  store i32 %299, i32* %9, align 4
  %300 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %301 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %300, i32 0, i32 9
  %302 = load i32, i32* %301, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %335

304:                                              ; preds = %296
  %305 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %306 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %305, i32 0, i32 10
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* %9, align 4
  %309 = icmp ne i32 %307, %308
  br i1 %309, label %310, label %335

310:                                              ; preds = %304
  %311 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %312 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %311, i32 0, i32 9
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %315 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %314, i32 0, i32 10
  %316 = load i32, i32* %315, align 8
  %317 = add i32 %313, %316
  store i32 %317, i32* %7, align 4
  %318 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %319 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %318, i32 0, i32 9
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* %9, align 4
  %322 = add i32 %320, %321
  store i32 %322, i32* %8, align 4
  %323 = load i32, i32* %7, align 4
  %324 = load i32, i32* %8, align 4
  %325 = call i32 @max(i32 %323, i32 %324)
  %326 = load i32, i32* %7, align 4
  %327 = load i32, i32* %8, align 4
  %328 = call i32 @min(i32 %326, i32 %327)
  %329 = srem i32 %325, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %310
  %332 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %333 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %332, i32 0, i32 11
  store i32 1, i32* %333, align 4
  br label %334

334:                                              ; preds = %331, %310
  br label %335

335:                                              ; preds = %334, %304, %296
  %336 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %337 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %336, i32 0, i32 14
  %338 = load i8*, i8** %337, align 8
  %339 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %340 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %339, i32 0, i32 14
  %341 = load i8*, i8** %340, align 8
  %342 = call i8* @min_not_zero(i8* %338, i8* %341)
  %343 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %344 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %343, i32 0, i32 14
  store i8* %342, i8** %344, align 8
  %345 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %346 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %345, i32 0, i32 13
  %347 = load i8*, i8** %346, align 8
  %348 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %349 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %348, i32 0, i32 13
  %350 = load i8*, i8** %349, align 8
  %351 = call i8* @min_not_zero(i8* %347, i8* %350)
  %352 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %353 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %352, i32 0, i32 13
  store i8* %351, i8** %353, align 8
  %354 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %355 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %354, i32 0, i32 9
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %358 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %357, i32 0, i32 9
  %359 = load i32, i32* %358, align 4
  %360 = call i32 @max(i32 %356, i32 %359)
  %361 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %362 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %361, i32 0, i32 9
  store i32 %360, i32* %362, align 4
  %363 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %364 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %363, i32 0, i32 10
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* %9, align 4
  %367 = call i32 @lcm_not_zero(i32 %365, i32 %366)
  %368 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %369 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %368, i32 0, i32 9
  %370 = load i32, i32* %369, align 4
  %371 = srem i32 %367, %370
  %372 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %373 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %372, i32 0, i32 10
  store i32 %371, i32* %373, align 8
  br label %374

374:                                              ; preds = %335, %291
  %375 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %376 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %375, i32 0, i32 12
  %377 = load i8*, i8** %376, align 8
  %378 = icmp ne i8* %377, null
  br i1 %378, label %379, label %389

379:                                              ; preds = %374
  %380 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %381 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %380, i32 0, i32 12
  %382 = load i8*, i8** %381, align 8
  %383 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %384 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %383, i32 0, i32 12
  %385 = load i8*, i8** %384, align 8
  %386 = call i8* @min_not_zero(i8* %382, i8* %385)
  %387 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %388 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %387, i32 0, i32 12
  store i8* %386, i8** %388, align 8
  br label %389

389:                                              ; preds = %379, %374
  %390 = load i32, i32* %10, align 4
  ret i32 %390
}

declare dso_local i8* @min_not_zero(i8*, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @queue_limit_alignment_offset(%struct.queue_limits*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @lcm_not_zero(i32, i32) #1

declare dso_local i32 @queue_limit_discard_alignment(%struct.queue_limits*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
