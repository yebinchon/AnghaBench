; ModuleID = '/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-data.c_load_user_metafile.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-data.c_load_user_metafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aio_connection = type { i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.aio_connection*, i32* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.connection = type { i32 }

@load_user_metafile.empty_aio_conn = internal global %struct.aio_connection zeroinitializer, align 8
@WaitAio = common dso_local global %struct.aio_connection* null, align 8
@header = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@EMPTY__METAFILE = common dso_local global i32* null, align 8
@ct_aio = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Previous AIO query failed for user at %p, scheduling a new one\0A\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"no space to load metafile - cannot allocate %d bytes (%lld currently used)\0A\00", align 1
@allocated_metafile_bytes = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [87 x i8] c"*** Scheduled reading user data from index %d at position %lld, %d bytes, no_aio = %d\0A\00", align 1
@fd = common dso_local global i32* null, align 8
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [89 x i8] c"error reading user %d from index file: read %d bytes instead of %d at position %lld: %m\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"  disk time = %.6lf\0A\00", align 1
@ct_metafile_aio = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_user_metafile(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.aio_connection* null, %struct.aio_connection** @WaitAio, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = call i64 @user_loaded(%struct.TYPE_8__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %249

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 0), align 8
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 1), align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sle i32 %25, 4
  br i1 %26, label %27, label %41

27:                                               ; preds = %19, %15
  %28 = load i32*, i32** @EMPTY__METAFILE, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  store i32* %28, i32** %30, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** getelementptr inbounds (%struct.aio_connection, %struct.aio_connection* @load_user_metafile.empty_aio_conn, i32 0, i32 1), align 8
  %34 = load i8*, i8** @ct_aio, align 8
  store i8* %34, i8** getelementptr inbounds (%struct.aio_connection, %struct.aio_connection* @load_user_metafile.empty_aio_conn, i32 0, i32 0), align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  store %struct.aio_connection* @load_user_metafile.empty_aio_conn, %struct.aio_connection** %36, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @onload_user_metafile(%struct.connection* bitcast (%struct.aio_connection* @load_user_metafile.empty_aio_conn to %struct.connection*), i32 %39)
  br label %249

41:                                               ; preds = %19
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load %struct.aio_connection*, %struct.aio_connection** %43, align 8
  %45 = icmp ne %struct.aio_connection* %44, null
  br i1 %45, label %46, label %70

46:                                               ; preds = %41
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load %struct.aio_connection*, %struct.aio_connection** %48, align 8
  %50 = call i32 @check_aio_completion(%struct.aio_connection* %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load %struct.aio_connection*, %struct.aio_connection** %52, align 8
  %54 = icmp ne %struct.aio_connection* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load %struct.aio_connection*, %struct.aio_connection** %57, align 8
  store %struct.aio_connection* %58, %struct.aio_connection** @WaitAio, align 8
  br label %249

59:                                               ; preds = %46
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %249

65:                                               ; preds = %59
  %66 = load i32, i32* @stderr, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %67)
  br label %69

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %69, %41
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 1), align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32* @dl_malloc(i32 %81)
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  store i32* %82, i32** %84, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %70
  %90 = load i32, i32* @stderr, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (...) @dl_get_memory_used()
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %90, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %94)
  %96 = call i32 @assert(i32 0)
  br label %97

97:                                               ; preds = %89, %70
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @allocated_metafile_bytes, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* @allocated_metafile_bytes, align 4
  %103 = load i32, i32* @verbosity, align 4
  %104 = icmp sgt i32 %103, 2
  br i1 %104, label %105, label %121

105:                                              ; preds = %97
  %106 = load i32, i32* @stderr, align 4
  %107 = load i32*, i32** @fd, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 1), align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call i32 (i32, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0), i32 %109, i64 %115, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %105, %97
  %122 = load i32, i32* %5, align 4
  %123 = icmp sle i32 1, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 0), align 8
  %127 = icmp sle i32 %125, %126
  br label %128

128:                                              ; preds = %124, %121
  %129 = phi i1 [ false, %121 ], [ %127, %124 ]
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %219

134:                                              ; preds = %128
  %135 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %136 = call double @get_utime(i32 %135)
  %137 = fneg double %136
  store double %137, double* %7, align 8
  %138 = load i32*, i32** @fd, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 1), align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* @SEEK_SET, align 4
  %148 = call i64 @lseek(i32 %140, i64 %146, i32 %147)
  store i64 %148, i64* %8, align 8
  %149 = load i64, i64* %8, align 8
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 1), align 8
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %149, %155
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 1), align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  store i32 %164, i32* %9, align 4
  %165 = load i32*, i32** @fd, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @read(i32 %167, i32* %170, i32 %171)
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %193

176:                                              ; preds = %134
  %177 = load i32, i32* @stderr, align 4
  %178 = load i32, i32* %5, align 4
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %9, align 4
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 1), align 8
  %182 = load i32, i32* %5, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = call i32 (i32, i8*, ...) @fprintf(i32 %177, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.3, i64 0, i64 0), i32 %178, i32 %179, i32 %180, i64 %186)
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* %9, align 4
  %190 = icmp eq i32 %188, %189
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert(i32 %191)
  br label %193

193:                                              ; preds = %176, %134
  %194 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %195 = call double @get_utime(i32 %194)
  %196 = load double, double* %7, align 8
  %197 = fadd double %196, %195
  store double %197, double* %7, align 8
  %198 = load i32, i32* @verbosity, align 4
  %199 = icmp sgt i32 %198, 2
  br i1 %199, label %200, label %204

200:                                              ; preds = %193
  %201 = load i32, i32* @stderr, align 4
  %202 = load double, double* %7, align 8
  %203 = call i32 (i32, i8*, ...) @fprintf(i32 %201, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), double %202)
  br label %204

204:                                              ; preds = %200, %193
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %205, %struct.TYPE_8__** getelementptr inbounds (%struct.aio_connection, %struct.aio_connection* @load_user_metafile.empty_aio_conn, i32 0, i32 1), align 8
  %206 = load i8*, i8** @ct_aio, align 8
  store i8* %206, i8** getelementptr inbounds (%struct.aio_connection, %struct.aio_connection* @load_user_metafile.empty_aio_conn, i32 0, i32 0), align 8
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 1
  store %struct.aio_connection* @load_user_metafile.empty_aio_conn, %struct.aio_connection** %208, align 8
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 1
  %211 = load %struct.aio_connection*, %struct.aio_connection** %210, align 8
  %212 = icmp ne %struct.aio_connection* %211, null
  %213 = zext i1 %212 to i32
  %214 = call i32 @assert(i32 %213)
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @onload_user_metafile(%struct.connection* bitcast (%struct.aio_connection* @load_user_metafile.empty_aio_conn to %struct.connection*), i32 %217)
  br label %248

219:                                              ; preds = %128
  %220 = load i32*, i32** @fd, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 1), align 8
  %227 = load i32, i32* %5, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %236 = call %struct.aio_connection* @create_aio_read_connection(i32 %222, i32* %225, i64 %231, i32 %234, i32* @ct_metafile_aio, %struct.TYPE_8__* %235)
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 1
  store %struct.aio_connection* %236, %struct.aio_connection** %238, align 8
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 1
  %241 = load %struct.aio_connection*, %struct.aio_connection** %240, align 8
  %242 = icmp ne %struct.aio_connection* %241, null
  %243 = zext i1 %242 to i32
  %244 = call i32 @assert(i32 %243)
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 1
  %247 = load %struct.aio_connection*, %struct.aio_connection** %246, align 8
  store %struct.aio_connection* %247, %struct.aio_connection** @WaitAio, align 8
  br label %248

248:                                              ; preds = %219, %204
  br label %249

249:                                              ; preds = %248, %64, %55, %27, %14
  ret void
}

declare dso_local i64 @user_loaded(%struct.TYPE_8__*) #1

declare dso_local i32 @onload_user_metafile(%struct.connection*, i32) #1

declare dso_local i32 @check_aio_completion(%struct.aio_connection*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @dl_malloc(i32) #1

declare dso_local i32 @dl_get_memory_used(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local double @get_utime(i32) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local %struct.aio_connection* @create_aio_read_connection(i32, i32*, i64, i32, i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
