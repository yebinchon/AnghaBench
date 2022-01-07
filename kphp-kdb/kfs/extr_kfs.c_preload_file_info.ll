; ModuleID = '/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_preload_file_info.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/kfs/extr_kfs.c_preload_file_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfs_file_info = type { i32, i8*, i32, i32, i64, i32, i64, i64, i64, i64, %struct.TYPE_3__*, %struct.kfs_file_header*, i64 }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i8*, i8*, i32, i64, i64)* }
%struct.kfs_file_header = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.lev_start = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Cannot open %s file %s: %m\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"snapshot\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"binlog\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"Cannot compute AES initialization vector for %s file %s.\0A\00", align 1
@START_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Cannot read %s file %s: %m\0A\00", align 1
@KFS_MAGIC = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"bad kfs header #0\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"bad kfs header #1\0A\00", align 1
@kfs_binlog = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [74 x i8] c"error: zipped binlog file '%s' starts from LEV_START or LEV_ROTATE_FROM.\0A\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"error: zipped binlog file '%s' contains KFS headers\0A\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"error: not zipped binlog file '%s' contains KFS_BINLOG_ZIP_MAGIC\0A\00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"warning: binlog file %s begins with wrong entry type %08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [101 x i8] c"warning: binlog file %s has different starting position in header (%lld) and starting record (%lld)\0A\00", align 1
@.str.12 = private unnamed_addr constant [77 x i8] c"warning: binlog file %s starts from position %lld (should be in %lld..%lld)\0A\00", align 1
@verbosity = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [113 x i8] c"preloaded binlog file info for %s (%lld bytes, %d headers), covering %lld..%lld, name corresponds to %lld..%lld\0A\00", align 1
@.str.14 = private unnamed_addr constant [60 x i8] c"warning: binlog file %s has zero replica_id_hash, skipping\0A\00", align 1
@.str.15 = private unnamed_addr constant [74 x i8] c"warning: binlog file %s has incorrect replica_id_hash %016llx != %016llx\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @preload_file_info(%struct.kfs_file_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kfs_file_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.kfs_file_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.lev_start*, align 8
  store %struct.kfs_file_info* %0, %struct.kfs_file_info** %3, align 8
  %10 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %11 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %584, label %14

14:                                               ; preds = %1
  %15 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %16 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* @O_RDONLY, align 4
  %19 = call i32 @open(i8* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %14
  %23 = load i32, i32* @stderr, align 4
  %24 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %25 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %31 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %32 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %33)
  store i32 -2, i32* %2, align 4
  br label %585

35:                                               ; preds = %14
  %36 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %37 = call i64 @kfs_file_compute_initialization_vector(%struct.kfs_file_info* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load i32, i32* @stderr, align 4
  %41 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %42 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %48 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %49 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i8* %47, i8* %50)
  store i32 -2, i32* %2, align 4
  br label %585

52:                                               ; preds = %35
  %53 = load i32, i32* @START_BUFFER_SIZE, align 4
  %54 = call i32 @malloc(i32 %53)
  %55 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %56 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %58 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @assert(i32 %59)
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %63 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @START_BUFFER_SIZE, align 4
  %66 = call i32 @read(i32 %61, i32 %64, i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %93

69:                                               ; preds = %52
  %70 = load i32, i32* @stderr, align 4
  %71 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %72 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, 1
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %78 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %79 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %77, i8* %80)
  %82 = load i32, i32* %4, align 4
  %83 = call i64 @close(i32 %82)
  %84 = icmp sge i64 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %88 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @free(i32 %89)
  %91 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %92 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  store i32 -2, i32* %2, align 4
  br label %585

93:                                               ; preds = %52
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %96 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %98 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %97, i32 0, i32 12
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %139

101:                                              ; preds = %93
  %102 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %103 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %102, i32 0, i32 10
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  store %struct.TYPE_3__* %104, %struct.TYPE_3__** %6, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %106 = icmp ne %struct.TYPE_3__* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = icmp ne %struct.TYPE_4__* %110, null
  br label %112

112:                                              ; preds = %107, %101
  %113 = phi i1 [ false, %101 ], [ %111, %107 ]
  %114 = zext i1 %113 to i32
  %115 = call i32 @assert(i32 %114)
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32 (%struct.TYPE_4__*, i8*, i8*, i32, i64, i64)*, i32 (%struct.TYPE_4__*, i8*, i8*, i32, i64, i64)** %119, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %125 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to i8*
  %129 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %130 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = inttoptr i64 %132 to i8*
  %134 = load i32, i32* %5, align 4
  %135 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %136 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %135, i32 0, i32 12
  %137 = load i64, i64* %136, align 8
  %138 = call i32 %120(%struct.TYPE_4__* %123, i8* %128, i8* %133, i32 %134, i64 %137, i64 0)
  br label %139

139:                                              ; preds = %112, %93
  %140 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %141 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = inttoptr i64 %143 to %struct.kfs_file_header*
  store %struct.kfs_file_header* %144, %struct.kfs_file_header** %7, align 8
  store i32 0, i32* %8, align 4
  %145 = load i32, i32* %5, align 4
  %146 = icmp sge i32 %145, 4096
  br i1 %146, label %147, label %226

147:                                              ; preds = %139
  %148 = load %struct.kfs_file_header*, %struct.kfs_file_header** %7, align 8
  %149 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %148, i64 0
  %150 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @KFS_MAGIC, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %226

154:                                              ; preds = %147
  %155 = load %struct.kfs_file_header*, %struct.kfs_file_header** %7, align 8
  %156 = call i64 @check_kfs_header_basic(%struct.kfs_file_header* %155)
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %154
  %159 = load i32, i32* @stderr, align 4
  %160 = call i32 (i32, i8*, ...) @fprintf(i32 %159, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %161 = load i32, i32* %4, align 4
  %162 = call i64 @close(i32 %161)
  %163 = icmp sge i64 %162, 0
  %164 = zext i1 %163 to i32
  %165 = call i32 @assert(i32 %164)
  %166 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %167 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @free(i32 %168)
  %170 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %171 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %170, i32 0, i32 0
  store i32 0, i32* %171, align 8
  store i32 -2, i32* %2, align 4
  br label %585

172:                                              ; preds = %154
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %5, align 4
  %176 = icmp sge i32 %175, 8192
  br i1 %176, label %177, label %225

177:                                              ; preds = %172
  %178 = load %struct.kfs_file_header*, %struct.kfs_file_header** %7, align 8
  %179 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %178, i64 1
  %180 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @KFS_MAGIC, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %225

184:                                              ; preds = %177
  %185 = load %struct.kfs_file_header*, %struct.kfs_file_header** %7, align 8
  %186 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %185, i64 1
  %187 = call i64 @check_kfs_header_basic(%struct.kfs_file_header* %186)
  %188 = icmp slt i64 %187, 0
  br i1 %188, label %189, label %203

189:                                              ; preds = %184
  %190 = load i32, i32* @stderr, align 4
  %191 = call i32 (i32, i8*, ...) @fprintf(i32 %190, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %192 = load i32, i32* %4, align 4
  %193 = call i64 @close(i32 %192)
  %194 = icmp sge i64 %193, 0
  %195 = zext i1 %194 to i32
  %196 = call i32 @assert(i32 %195)
  %197 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %198 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @free(i32 %199)
  %201 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %202 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %201, i32 0, i32 0
  store i32 0, i32* %202, align 8
  store i32 -2, i32* %2, align 4
  br label %585

203:                                              ; preds = %184
  %204 = load i32, i32* %8, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %8, align 4
  %206 = load %struct.kfs_file_header*, %struct.kfs_file_header** %7, align 8
  %207 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %206, i64 1
  %208 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.kfs_file_header*, %struct.kfs_file_header** %7, align 8
  %211 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %210, i64 0
  %212 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp eq i64 %209, %213
  br i1 %214, label %215, label %224

215:                                              ; preds = %203
  %216 = load %struct.kfs_file_header*, %struct.kfs_file_header** %7, align 8
  %217 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %216, i64 1
  %218 = load %struct.kfs_file_header*, %struct.kfs_file_header** %7, align 8
  %219 = call i32 @memcmp(%struct.kfs_file_header* %217, %struct.kfs_file_header* %218, i32 4096)
  %220 = icmp ne i32 %219, 0
  %221 = xor i1 %220, true
  %222 = zext i1 %221 to i32
  %223 = call i32 @assert(i32 %222)
  br label %224

224:                                              ; preds = %215, %203
  br label %225

225:                                              ; preds = %224, %177, %172
  br label %226

226:                                              ; preds = %225, %147, %139
  %227 = load i32, i32* %8, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %226
  %230 = load %struct.kfs_file_header*, %struct.kfs_file_header** %7, align 8
  br label %232

231:                                              ; preds = %226
  br label %232

232:                                              ; preds = %231, %229
  %233 = phi %struct.kfs_file_header* [ %230, %229 ], [ null, %231 ]
  %234 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %235 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %234, i32 0, i32 11
  store %struct.kfs_file_header* %233, %struct.kfs_file_header** %235, align 8
  %236 = load i32, i32* %8, align 4
  %237 = icmp sgt i32 %236, 1
  br i1 %237, label %238, label %253

238:                                              ; preds = %232
  %239 = load %struct.kfs_file_header*, %struct.kfs_file_header** %7, align 8
  %240 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %239, i64 1
  %241 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.kfs_file_header*, %struct.kfs_file_header** %7, align 8
  %244 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %243, i64 0
  %245 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = icmp sgt i64 %242, %246
  br i1 %247, label %248, label %253

248:                                              ; preds = %238
  %249 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %250 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %249, i32 0, i32 11
  %251 = load %struct.kfs_file_header*, %struct.kfs_file_header** %250, align 8
  %252 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %251, i32 1
  store %struct.kfs_file_header* %252, %struct.kfs_file_header** %250, align 8
  br label %253

253:                                              ; preds = %248, %238, %232
  %254 = load i32, i32* %8, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %272

256:                                              ; preds = %253
  %257 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %258 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %257, i32 0, i32 11
  %259 = load %struct.kfs_file_header*, %struct.kfs_file_header** %258, align 8
  %260 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = load i32, i32* %8, align 4
  %263 = mul nsw i32 %262, 4096
  %264 = sext i32 %263 to i64
  %265 = add nsw i64 %261, %264
  %266 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %267 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %266, i32 0, i32 11
  %268 = load %struct.kfs_file_header*, %struct.kfs_file_header** %267, align 8
  %269 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %268, i32 0, i32 3
  %270 = load i64, i64* %269, align 8
  %271 = icmp eq i64 %265, %270
  br label %272

272:                                              ; preds = %256, %253
  %273 = phi i1 [ true, %253 ], [ %271, %256 ]
  %274 = zext i1 %273 to i32
  %275 = call i32 @assert(i32 %274)
  %276 = load i32, i32* %8, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %288

278:                                              ; preds = %272
  %279 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %280 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %279, i32 0, i32 11
  %281 = load %struct.kfs_file_header*, %struct.kfs_file_header** %280, align 8
  %282 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %281, i32 0, i32 4
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %285 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %284, i32 0, i32 4
  %286 = load i64, i64* %285, align 8
  %287 = icmp eq i64 %283, %286
  br label %288

288:                                              ; preds = %278, %272
  %289 = phi i1 [ true, %272 ], [ %287, %278 ]
  %290 = zext i1 %289 to i32
  %291 = call i32 @assert(i32 %290)
  %292 = load i32, i32* %8, align 4
  %293 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %294 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %293, i32 0, i32 5
  store i32 %292, i32* %294, align 8
  %295 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %296 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %295, i32 0, i32 4
  %297 = load i64, i64* %296, align 8
  %298 = load i64, i64* @kfs_binlog, align 8
  %299 = icmp eq i64 %297, %298
  br i1 %299, label %300, label %497

300:                                              ; preds = %288
  %301 = load %struct.kfs_file_header*, %struct.kfs_file_header** %7, align 8
  %302 = load i32, i32* %8, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %301, i64 %303
  %305 = bitcast %struct.kfs_file_header* %304 to %struct.lev_start*
  store %struct.lev_start* %305, %struct.lev_start** %9, align 8
  %306 = load i32, i32* %8, align 4
  %307 = mul nsw i32 4096, %306
  %308 = load i32, i32* %5, align 4
  %309 = sub nsw i32 %308, %307
  store i32 %309, i32* %5, align 4
  %310 = load %struct.lev_start*, %struct.lev_start** %9, align 8
  %311 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  switch i32 %312, label %379 [
    i32 128, label %313
    i32 129, label %313
    i32 130, label %339
  ]

313:                                              ; preds = %300, %300
  %314 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %315 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = and i32 %316, 16
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %330

319:                                              ; preds = %313
  %320 = load i32, i32* @stderr, align 4
  %321 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %322 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %321, i32 0, i32 1
  %323 = load i8*, i8** %322, align 8
  %324 = call i32 (i32, i8*, ...) @fprintf(i32 %320, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.7, i64 0, i64 0), i8* %323)
  %325 = load i32, i32* %4, align 4
  %326 = call i64 @close(i32 %325)
  %327 = icmp sge i64 %326, 0
  %328 = zext i1 %327 to i32
  %329 = call i32 @assert(i32 %328)
  store i32 -2, i32* %2, align 4
  br label %585

330:                                              ; preds = %313
  %331 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %332 = load i32, i32* %4, align 4
  %333 = load i32, i32* %5, align 4
  %334 = load %struct.lev_start*, %struct.lev_start** %9, align 8
  %335 = call i32 @process_first36_bytes(%struct.kfs_file_info* %331, i32 %332, i32 %333, %struct.lev_start* %334)
  %336 = icmp slt i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %330
  store i32 -2, i32* %2, align 4
  br label %585

338:                                              ; preds = %330
  br label %393

339:                                              ; preds = %300
  %340 = load i32, i32* %8, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %353

342:                                              ; preds = %339
  %343 = load i32, i32* @stderr, align 4
  %344 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %345 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %344, i32 0, i32 1
  %346 = load i8*, i8** %345, align 8
  %347 = call i32 (i32, i8*, ...) @fprintf(i32 %343, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i8* %346)
  %348 = load i32, i32* %4, align 4
  %349 = call i64 @close(i32 %348)
  %350 = icmp sge i64 %349, 0
  %351 = zext i1 %350 to i32
  %352 = call i32 @assert(i32 %351)
  store i32 -2, i32* %2, align 4
  br label %585

353:                                              ; preds = %339
  %354 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %355 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 8
  %357 = and i32 %356, 16
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %370, label %359

359:                                              ; preds = %353
  %360 = load i32, i32* @stderr, align 4
  %361 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %362 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %361, i32 0, i32 1
  %363 = load i8*, i8** %362, align 8
  %364 = call i32 (i32, i8*, ...) @fprintf(i32 %360, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.9, i64 0, i64 0), i8* %363)
  %365 = load i32, i32* %4, align 4
  %366 = call i64 @close(i32 %365)
  %367 = icmp sge i64 %366, 0
  %368 = zext i1 %367 to i32
  %369 = call i32 @assert(i32 %368)
  store i32 -2, i32* %2, align 4
  br label %585

370:                                              ; preds = %353
  %371 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %372 = load i32, i32* %4, align 4
  %373 = load %struct.lev_start*, %struct.lev_start** %9, align 8
  %374 = bitcast %struct.lev_start* %373 to i32*
  %375 = call i32 @process_binlog_zip_header(%struct.kfs_file_info* %371, i32 %372, i32* %374)
  %376 = icmp slt i32 %375, 0
  br i1 %376, label %377, label %378

377:                                              ; preds = %370
  store i32 -2, i32* %2, align 4
  br label %585

378:                                              ; preds = %370
  br label %393

379:                                              ; preds = %300
  %380 = load i32, i32* @stderr, align 4
  %381 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %382 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %381, i32 0, i32 1
  %383 = load i8*, i8** %382, align 8
  %384 = load %struct.lev_start*, %struct.lev_start** %9, align 8
  %385 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  %387 = call i32 (i32, i8*, ...) @fprintf(i32 %380, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0), i8* %383, i32 %386)
  %388 = load i32, i32* %4, align 4
  %389 = call i64 @close(i32 %388)
  %390 = icmp sge i64 %389, 0
  %391 = zext i1 %390 to i32
  %392 = call i32 @assert(i32 %391)
  store i32 -2, i32* %2, align 4
  br label %585

393:                                              ; preds = %378, %338
  %394 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %395 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %394, i32 0, i32 11
  %396 = load %struct.kfs_file_header*, %struct.kfs_file_header** %395, align 8
  %397 = icmp ne %struct.kfs_file_header* %396, null
  br i1 %397, label %398, label %427

398:                                              ; preds = %393
  %399 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %400 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %399, i32 0, i32 11
  %401 = load %struct.kfs_file_header*, %struct.kfs_file_header** %400, align 8
  %402 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %401, i32 0, i32 5
  %403 = load i64, i64* %402, align 8
  %404 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %405 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %404, i32 0, i32 6
  %406 = load i64, i64* %405, align 8
  %407 = icmp ne i64 %403, %406
  br i1 %407, label %408, label %427

408:                                              ; preds = %398
  %409 = load i32, i32* @stderr, align 4
  %410 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %411 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %410, i32 0, i32 1
  %412 = load i8*, i8** %411, align 8
  %413 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %414 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %413, i32 0, i32 11
  %415 = load %struct.kfs_file_header*, %struct.kfs_file_header** %414, align 8
  %416 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %415, i32 0, i32 5
  %417 = load i64, i64* %416, align 8
  %418 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %419 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %418, i32 0, i32 6
  %420 = load i64, i64* %419, align 8
  %421 = call i32 (i32, i8*, ...) @fprintf(i32 %409, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.11, i64 0, i64 0), i8* %412, i64 %417, i64 %420)
  %422 = load i32, i32* %4, align 4
  %423 = call i64 @close(i32 %422)
  %424 = icmp sge i64 %423, 0
  %425 = zext i1 %424 to i32
  %426 = call i32 @assert(i32 %425)
  store i32 -2, i32* %2, align 4
  br label %585

427:                                              ; preds = %398, %393
  %428 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %429 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %428, i32 0, i32 6
  %430 = load i64, i64* %429, align 8
  %431 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %432 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %431, i32 0, i32 7
  %433 = load i64, i64* %432, align 8
  %434 = icmp slt i64 %430, %433
  br i1 %434, label %443, label %435

435:                                              ; preds = %427
  %436 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %437 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %436, i32 0, i32 6
  %438 = load i64, i64* %437, align 8
  %439 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %440 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %439, i32 0, i32 8
  %441 = load i64, i64* %440, align 8
  %442 = icmp sgt i64 %438, %441
  br i1 %442, label %443, label %463

443:                                              ; preds = %435, %427
  %444 = load i32, i32* @stderr, align 4
  %445 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %446 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %445, i32 0, i32 1
  %447 = load i8*, i8** %446, align 8
  %448 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %449 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %448, i32 0, i32 6
  %450 = load i64, i64* %449, align 8
  %451 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %452 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %451, i32 0, i32 7
  %453 = load i64, i64* %452, align 8
  %454 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %455 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %454, i32 0, i32 8
  %456 = load i64, i64* %455, align 8
  %457 = call i32 (i32, i8*, ...) @fprintf(i32 %444, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.12, i64 0, i64 0), i8* %447, i64 %450, i64 %453, i64 %456)
  %458 = load i32, i32* %4, align 4
  %459 = call i64 @close(i32 %458)
  %460 = icmp sge i64 %459, 0
  %461 = zext i1 %460 to i32
  %462 = call i32 @assert(i32 %461)
  store i32 -2, i32* %2, align 4
  br label %585

463:                                              ; preds = %435
  %464 = load i32, i32* @verbosity, align 4
  %465 = icmp sgt i32 %464, 1
  br i1 %465, label %466, label %496

466:                                              ; preds = %463
  %467 = load i32, i32* @stderr, align 4
  %468 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %469 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %468, i32 0, i32 1
  %470 = load i8*, i8** %469, align 8
  %471 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %472 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %471, i32 0, i32 9
  %473 = load i64, i64* %472, align 8
  %474 = load i32, i32* %8, align 4
  %475 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %476 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %475, i32 0, i32 6
  %477 = load i64, i64* %476, align 8
  %478 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %479 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %478, i32 0, i32 6
  %480 = load i64, i64* %479, align 8
  %481 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %482 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %481, i32 0, i32 9
  %483 = load i64, i64* %482, align 8
  %484 = add nsw i64 %480, %483
  %485 = load i32, i32* %8, align 4
  %486 = mul nsw i32 4096, %485
  %487 = sext i32 %486 to i64
  %488 = sub nsw i64 %484, %487
  %489 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %490 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %489, i32 0, i32 7
  %491 = load i64, i64* %490, align 8
  %492 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %493 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %492, i32 0, i32 8
  %494 = load i64, i64* %493, align 8
  %495 = call i32 (i32, i8*, ...) @fprintf(i32 %467, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.13, i64 0, i64 0), i8* %470, i64 %473, i32 %474, i64 %477, i64 %488, i64 %491, i64 %494)
  br label %496

496:                                              ; preds = %466, %463
  br label %497

497:                                              ; preds = %496, %288
  %498 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %499 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %498, i32 0, i32 11
  %500 = load %struct.kfs_file_header*, %struct.kfs_file_header** %499, align 8
  %501 = icmp ne %struct.kfs_file_header* %500, null
  br i1 %501, label %502, label %572

502:                                              ; preds = %497
  %503 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %504 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %503, i32 0, i32 10
  %505 = load %struct.TYPE_3__*, %struct.TYPE_3__** %504, align 8
  %506 = icmp ne %struct.TYPE_3__* %505, null
  br i1 %506, label %507, label %572

507:                                              ; preds = %502
  %508 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %509 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %508, i32 0, i32 11
  %510 = load %struct.kfs_file_header*, %struct.kfs_file_header** %509, align 8
  %511 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %510, i32 0, i32 6
  %512 = load i64, i64* %511, align 8
  %513 = icmp ne i64 %512, 0
  br i1 %513, label %525, label %514

514:                                              ; preds = %507
  %515 = load i32, i32* @stderr, align 4
  %516 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %517 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %516, i32 0, i32 1
  %518 = load i8*, i8** %517, align 8
  %519 = call i32 (i32, i8*, ...) @fprintf(i32 %515, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.14, i64 0, i64 0), i8* %518)
  %520 = load i32, i32* %4, align 4
  %521 = call i64 @close(i32 %520)
  %522 = icmp sge i64 %521, 0
  %523 = zext i1 %522 to i32
  %524 = call i32 @assert(i32 %523)
  store i32 -2, i32* %2, align 4
  br label %585

525:                                              ; preds = %507
  %526 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %527 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %526, i32 0, i32 10
  %528 = load %struct.TYPE_3__*, %struct.TYPE_3__** %527, align 8
  %529 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %528, i32 0, i32 0
  %530 = load i64, i64* %529, align 8
  %531 = icmp ne i64 %530, 0
  br i1 %531, label %542, label %532

532:                                              ; preds = %525
  %533 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %534 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %533, i32 0, i32 11
  %535 = load %struct.kfs_file_header*, %struct.kfs_file_header** %534, align 8
  %536 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %535, i32 0, i32 6
  %537 = load i64, i64* %536, align 8
  %538 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %539 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %538, i32 0, i32 10
  %540 = load %struct.TYPE_3__*, %struct.TYPE_3__** %539, align 8
  %541 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %540, i32 0, i32 0
  store i64 %537, i64* %541, align 8
  br label %571

542:                                              ; preds = %525
  %543 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %544 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %543, i32 0, i32 10
  %545 = load %struct.TYPE_3__*, %struct.TYPE_3__** %544, align 8
  %546 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %545, i32 0, i32 0
  %547 = load i64, i64* %546, align 8
  %548 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %549 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %548, i32 0, i32 11
  %550 = load %struct.kfs_file_header*, %struct.kfs_file_header** %549, align 8
  %551 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %550, i32 0, i32 6
  %552 = load i64, i64* %551, align 8
  %553 = icmp ne i64 %547, %552
  br i1 %553, label %554, label %570

554:                                              ; preds = %542
  %555 = load i32, i32* @stderr, align 4
  %556 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %557 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %556, i32 0, i32 1
  %558 = load i8*, i8** %557, align 8
  %559 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %560 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %559, i32 0, i32 11
  %561 = load %struct.kfs_file_header*, %struct.kfs_file_header** %560, align 8
  %562 = getelementptr inbounds %struct.kfs_file_header, %struct.kfs_file_header* %561, i32 0, i32 6
  %563 = load i64, i64* %562, align 8
  %564 = load %struct.kfs_file_info*, %struct.kfs_file_info** %3, align 8
  %565 = getelementptr inbounds %struct.kfs_file_info, %struct.kfs_file_info* %564, i32 0, i32 10
  %566 = load %struct.TYPE_3__*, %struct.TYPE_3__** %565, align 8
  %567 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %566, i32 0, i32 0
  %568 = load i64, i64* %567, align 8
  %569 = call i32 (i32, i8*, ...) @fprintf(i32 %555, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.15, i64 0, i64 0), i8* %558, i64 %563, i64 %568)
  br label %570

570:                                              ; preds = %554, %542
  br label %571

571:                                              ; preds = %570, %532
  br label %572

572:                                              ; preds = %571, %502, %497
  %573 = load i32, i32* %4, align 4
  %574 = load i32, i32* %8, align 4
  %575 = mul nsw i32 4096, %574
  %576 = load i32, i32* @SEEK_SET, align 4
  %577 = call i32 @lseek(i32 %573, i32 %575, i32 %576)
  %578 = load i32, i32* %8, align 4
  %579 = mul nsw i32 4096, %578
  %580 = icmp eq i32 %577, %579
  %581 = zext i1 %580 to i32
  %582 = call i32 @assert(i32 %581)
  %583 = load i32, i32* %4, align 4
  store i32 %583, i32* %2, align 4
  br label %585

584:                                              ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %585

585:                                              ; preds = %584, %572, %514, %443, %408, %379, %377, %359, %342, %337, %319, %189, %158, %69, %39, %22
  %586 = load i32, i32* %2, align 4
  ret i32 %586
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @kfs_file_compute_initialization_vector(%struct.kfs_file_info*) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read(i32, i32, i32) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i64 @check_kfs_header_basic(%struct.kfs_file_header*) #1

declare dso_local i32 @memcmp(%struct.kfs_file_header*, %struct.kfs_file_header*, i32) #1

declare dso_local i32 @process_first36_bytes(%struct.kfs_file_info*, i32, i32, %struct.lev_start*) #1

declare dso_local i32 @process_binlog_zip_header(%struct.kfs_file_info*, i32, i32*) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
