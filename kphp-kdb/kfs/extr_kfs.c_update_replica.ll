; ModuleID = '/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_update_replica.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_update_replica.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32, %struct.kfs_file_info**, %struct.kfs_file_info**, i32* }
%struct.kfs_file_info = type { i64, %struct.TYPE_6__* }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"finished reloading file list for replica %s: %d binlogs, %d snapshots (OLD: %d, %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @update_replica(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kfs_file_info*, align 8
  %10 = alloca %struct.kfs_file_info*, align 8
  %11 = alloca %struct.kfs_file_info**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %297

17:                                               ; preds = %2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.TYPE_6__* @open_replica(i8* %20, i32 %21)
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %6, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %297

26:                                               ; preds = %17
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = call i32 @replica_close_ctx_crypto(%struct.TYPE_6__* %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 5
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 5
  store i32* %31, i32** %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 5
  store i32* null, i32** %35, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %111, %26
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br label %48

48:                                               ; preds = %42, %36
  %49 = phi i1 [ false, %36 ], [ %47, %42 ]
  br i1 %49, label %50, label %112

50:                                               ; preds = %48
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 4
  %53 = load %struct.kfs_file_info**, %struct.kfs_file_info*** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.kfs_file_info*, %struct.kfs_file_info** %53, i64 %55
  %57 = load %struct.kfs_file_info*, %struct.kfs_file_info** %56, align 8
  store %struct.kfs_file_info* %57, %struct.kfs_file_info** %9, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 4
  %60 = load %struct.kfs_file_info**, %struct.kfs_file_info*** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.kfs_file_info*, %struct.kfs_file_info** %60, i64 %62
  %64 = load %struct.kfs_file_info*, %struct.kfs_file_info** %63, align 8
  store %struct.kfs_file_info* %64, %struct.kfs_file_info** %10, align 8
  %65 = load %struct.kfs_file_info*, %struct.kfs_file_info** %9, align 8
  %66 = load %struct.kfs_file_info*, %struct.kfs_file_info** %10, align 8
  %67 = call i32 @cmp_file_info(%struct.kfs_file_info* %65, %struct.kfs_file_info* %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %50
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %111

73:                                               ; preds = %50
  %74 = load i32, i32* %12, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %110

79:                                               ; preds = %73
  %80 = load %struct.kfs_file_info*, %struct.kfs_file_info** %10, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 4
  %83 = load %struct.kfs_file_info**, %struct.kfs_file_info*** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds %struct.kfs_file_info*, %struct.kfs_file_info** %83, i64 %86
  store %struct.kfs_file_info* %80, %struct.kfs_file_info** %87, align 8
  %88 = load %struct.kfs_file_info*, %struct.kfs_file_info** %9, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 4
  %91 = load %struct.kfs_file_info**, %struct.kfs_file_info*** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds %struct.kfs_file_info*, %struct.kfs_file_info** %91, i64 %94
  store %struct.kfs_file_info* %88, %struct.kfs_file_info** %95, align 8
  %96 = load %struct.kfs_file_info*, %struct.kfs_file_info** %10, align 8
  %97 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.kfs_file_info*, %struct.kfs_file_info** %9, align 8
  %100 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp sle i64 %98, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = load %struct.kfs_file_info*, %struct.kfs_file_info** %9, align 8
  %106 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.kfs_file_info*, %struct.kfs_file_info** %10, align 8
  %109 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %79, %76
  br label %111

111:                                              ; preds = %110, %70
  br label %36

112:                                              ; preds = %48
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %113

113:                                              ; preds = %188, %112
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %120, %123
  br label %125

125:                                              ; preds = %119, %113
  %126 = phi i1 [ false, %113 ], [ %124, %119 ]
  br i1 %126, label %127, label %189

127:                                              ; preds = %125
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 3
  %130 = load %struct.kfs_file_info**, %struct.kfs_file_info*** %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.kfs_file_info*, %struct.kfs_file_info** %130, i64 %132
  %134 = load %struct.kfs_file_info*, %struct.kfs_file_info** %133, align 8
  store %struct.kfs_file_info* %134, %struct.kfs_file_info** %9, align 8
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 3
  %137 = load %struct.kfs_file_info**, %struct.kfs_file_info*** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.kfs_file_info*, %struct.kfs_file_info** %137, i64 %139
  %141 = load %struct.kfs_file_info*, %struct.kfs_file_info** %140, align 8
  store %struct.kfs_file_info* %141, %struct.kfs_file_info** %10, align 8
  %142 = load %struct.kfs_file_info*, %struct.kfs_file_info** %9, align 8
  %143 = load %struct.kfs_file_info*, %struct.kfs_file_info** %10, align 8
  %144 = call i32 @cmp_file_info(%struct.kfs_file_info* %142, %struct.kfs_file_info* %143)
  store i32 %144, i32* %13, align 4
  %145 = load i32, i32* %13, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %127
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  br label %188

150:                                              ; preds = %127
  %151 = load i32, i32* %13, align 4
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %8, align 4
  br label %187

156:                                              ; preds = %150
  %157 = load %struct.kfs_file_info*, %struct.kfs_file_info** %10, align 8
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 3
  %160 = load %struct.kfs_file_info**, %struct.kfs_file_info*** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %7, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds %struct.kfs_file_info*, %struct.kfs_file_info** %160, i64 %163
  store %struct.kfs_file_info* %157, %struct.kfs_file_info** %164, align 8
  %165 = load %struct.kfs_file_info*, %struct.kfs_file_info** %9, align 8
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 3
  %168 = load %struct.kfs_file_info**, %struct.kfs_file_info*** %167, align 8
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %8, align 4
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds %struct.kfs_file_info*, %struct.kfs_file_info** %168, i64 %171
  store %struct.kfs_file_info* %165, %struct.kfs_file_info** %172, align 8
  %173 = load %struct.kfs_file_info*, %struct.kfs_file_info** %10, align 8
  %174 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.kfs_file_info*, %struct.kfs_file_info** %9, align 8
  %177 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp sle i64 %175, %178
  %180 = zext i1 %179 to i32
  %181 = call i32 @assert(i32 %180)
  %182 = load %struct.kfs_file_info*, %struct.kfs_file_info** %9, align 8
  %183 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.kfs_file_info*, %struct.kfs_file_info** %10, align 8
  %186 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %185, i32 0, i32 0
  store i64 %184, i64* %186, align 8
  br label %187

187:                                              ; preds = %156, %153
  br label %188

188:                                              ; preds = %187, %147
  br label %113

189:                                              ; preds = %125
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  store i32 %192, i32* %7, align 4
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 8
  %198 = load i32, i32* %7, align 4
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 8
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 4
  %203 = load %struct.kfs_file_info**, %struct.kfs_file_info*** %202, align 8
  store %struct.kfs_file_info** %203, %struct.kfs_file_info*** %11, align 8
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 4
  %206 = load %struct.kfs_file_info**, %struct.kfs_file_info*** %205, align 8
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 4
  store %struct.kfs_file_info** %206, %struct.kfs_file_info*** %208, align 8
  %209 = load %struct.kfs_file_info**, %struct.kfs_file_info*** %11, align 8
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 4
  store %struct.kfs_file_info** %209, %struct.kfs_file_info*** %211, align 8
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %7, align 4
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 2
  store i32 %217, i32* %219, align 4
  %220 = load i32, i32* %7, align 4
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 4
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 3
  %225 = load %struct.kfs_file_info**, %struct.kfs_file_info*** %224, align 8
  store %struct.kfs_file_info** %225, %struct.kfs_file_info*** %11, align 8
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 3
  %228 = load %struct.kfs_file_info**, %struct.kfs_file_info*** %227, align 8
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 3
  store %struct.kfs_file_info** %228, %struct.kfs_file_info*** %230, align 8
  %231 = load %struct.kfs_file_info**, %struct.kfs_file_info*** %11, align 8
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 3
  store %struct.kfs_file_info** %231, %struct.kfs_file_info*** %233, align 8
  %234 = load i32, i32* @verbosity, align 4
  %235 = icmp sgt i32 %234, 1
  br i1 %235, label %236, label %254

236:                                              ; preds = %189
  %237 = load i32, i32* @stderr, align 4
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @fprintf(i32 %237, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i8* %240, i32 %243, i32 %246, i32 %249, i32 %252)
  br label %254

254:                                              ; preds = %236, %189
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %256 = call i32 @close_replica(%struct.TYPE_6__* %255)
  store i32 0, i32* %7, align 4
  br label %257

257:                                              ; preds = %273, %254
  %258 = load i32, i32* %7, align 4
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = icmp slt i32 %258, %261
  br i1 %262, label %263, label %276

263:                                              ; preds = %257
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 4
  %267 = load %struct.kfs_file_info**, %struct.kfs_file_info*** %266, align 8
  %268 = load i32, i32* %7, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.kfs_file_info*, %struct.kfs_file_info** %267, i64 %269
  %271 = load %struct.kfs_file_info*, %struct.kfs_file_info** %270, align 8
  %272 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %271, i32 0, i32 1
  store %struct.TYPE_6__* %264, %struct.TYPE_6__** %272, align 8
  br label %273

273:                                              ; preds = %263
  %274 = load i32, i32* %7, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %7, align 4
  br label %257

276:                                              ; preds = %257
  store i32 0, i32* %7, align 4
  br label %277

277:                                              ; preds = %293, %276
  %278 = load i32, i32* %7, align 4
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  %282 = icmp slt i32 %278, %281
  br i1 %282, label %283, label %296

283:                                              ; preds = %277
  %284 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 3
  %287 = load %struct.kfs_file_info**, %struct.kfs_file_info*** %286, align 8
  %288 = load i32, i32* %7, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.kfs_file_info*, %struct.kfs_file_info** %287, i64 %289
  %291 = load %struct.kfs_file_info*, %struct.kfs_file_info** %290, align 8
  %292 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %291, i32 0, i32 1
  store %struct.TYPE_6__* %284, %struct.TYPE_6__** %292, align 8
  br label %293

293:                                              ; preds = %283
  %294 = load i32, i32* %7, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %7, align 4
  br label %277

296:                                              ; preds = %277
  store i32 1, i32* %3, align 4
  br label %297

297:                                              ; preds = %296, %25, %16
  %298 = load i32, i32* %3, align 4
  ret i32 %298
}

declare dso_local %struct.TYPE_6__* @open_replica(i8*, i32) #1

declare dso_local i32 @replica_close_ctx_crypto(%struct.TYPE_6__*) #1

declare dso_local i32 @cmp_file_info(%struct.kfs_file_info*, %struct.kfs_file_info*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @close_replica(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
