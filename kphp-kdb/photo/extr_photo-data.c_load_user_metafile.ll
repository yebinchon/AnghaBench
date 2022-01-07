; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_load_user_metafile.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_load_user_metafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aio_connection = type { i8*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.aio_connection*, i32* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.connection = type { i32 }

@load_user_metafile.empty_aio_conn = internal global %struct.aio_connection zeroinitializer, align 8
@header = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@EMPTY__METAFILE = common dso_local global i32* null, align 8
@ct_aio = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Previous AIO query failed for user at %p, scheduling a new one\0A\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"no space to load metafile - cannot allocate %d bytes (%lld currently used)\0A\00", align 1
@allocated_metafile_bytes = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [86 x i8] c"*** Scheduled reading user data from index %d at position %lld, %d bytes, noaio = %d\0A\00", align 1
@fd = common dso_local global i32* null, align 8
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [89 x i8] c"error reading user %d from index file: read %d bytes instead of %d at position %lld: %m\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"  disk time = %.6lf\0A\00", align 1
@ct_metafile_aio = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_user_metafile(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = call i32 (...) @WaitAioArrClear()
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = call i64 @user_loaded(%struct.TYPE_10__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = call i32 @del_user_used(%struct.TYPE_10__* %15)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = call i32 @add_user_used(%struct.TYPE_10__* %17)
  br label %240

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @header, i32 0, i32 0), align 8
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @header, i32 0, i32 1), align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sle i32 %29, 4
  br i1 %30, label %31, label %45

31:                                               ; preds = %23, %19
  %32 = load i32*, i32** @EMPTY__METAFILE, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  store i32* %32, i32** %34, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** getelementptr inbounds (%struct.aio_connection, %struct.aio_connection* @load_user_metafile.empty_aio_conn, i32 0, i32 1), align 8
  %38 = load i8*, i8** @ct_aio, align 8
  store i8* %38, i8** getelementptr inbounds (%struct.aio_connection, %struct.aio_connection* @load_user_metafile.empty_aio_conn, i32 0, i32 0), align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  store %struct.aio_connection* @load_user_metafile.empty_aio_conn, %struct.aio_connection** %40, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @onload_user_metafile(%struct.connection* bitcast (%struct.aio_connection* @load_user_metafile.empty_aio_conn to %struct.connection*), i32 %43)
  br label %240

45:                                               ; preds = %23
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load %struct.aio_connection*, %struct.aio_connection** %47, align 8
  %49 = icmp ne %struct.aio_connection* %48, null
  br i1 %49, label %50, label %75

50:                                               ; preds = %45
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load %struct.aio_connection*, %struct.aio_connection** %52, align 8
  %54 = call i32 @check_aio_completion(%struct.aio_connection* %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load %struct.aio_connection*, %struct.aio_connection** %56, align 8
  %58 = icmp ne %struct.aio_connection* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load %struct.aio_connection*, %struct.aio_connection** %61, align 8
  %63 = call i32 @WaitAioArrAdd(%struct.aio_connection* %62)
  br label %240

64:                                               ; preds = %50
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %240

70:                                               ; preds = %64
  %71 = load i32, i32* @stderr, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %72)
  br label %74

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74, %45
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @header, i32 0, i32 1), align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32* @dl_malloc(i32 %86)
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  store i32* %87, i32** %89, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %102

94:                                               ; preds = %75
  %95 = load i32, i32* @stderr, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i64 (...) @dl_get_memory_used()
  %100 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %98, i64 %99)
  %101 = call i32 @assert(i32 0)
  br label %102

102:                                              ; preds = %94, %75
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @allocated_metafile_bytes, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* @allocated_metafile_bytes, align 4
  %108 = load i32, i32* @verbosity, align 4
  %109 = icmp sgt i32 %108, 2
  br i1 %109, label %110, label %126

110:                                              ; preds = %102
  %111 = load i32, i32* @stderr, align 4
  %112 = load i32*, i32** @fd, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @header, i32 0, i32 1), align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i32 (i32, i8*, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0), i32 %114, i32 %120, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %110, %102
  %127 = load i32, i32* %5, align 4
  %128 = icmp sle i32 1, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @header, i32 0, i32 0), align 8
  %132 = icmp sle i32 %130, %131
  br label %133

133:                                              ; preds = %129, %126
  %134 = phi i1 [ false, %126 ], [ %132, %129 ]
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %209

139:                                              ; preds = %133
  %140 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %141 = call double @get_utime(i32 %140)
  %142 = fneg double %141
  store double %142, double* %7, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @header, i32 0, i32 1), align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %8, align 4
  %149 = load i32*, i32** @fd, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @header, i32 0, i32 1), align 8
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @pread(i32 %151, i32* %154, i32 %155, i32 %161)
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %183

166:                                              ; preds = %139
  %167 = load i32, i32* @stderr, align 4
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* %8, align 4
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @header, i32 0, i32 1), align 8
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i32, i8*, ...) @fprintf(i32 %167, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.3, i64 0, i64 0), i32 %168, i32 %169, i32 %170, i32 %176)
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* %8, align 4
  %180 = icmp eq i32 %178, %179
  %181 = zext i1 %180 to i32
  %182 = call i32 @assert(i32 %181)
  br label %183

183:                                              ; preds = %166, %139
  %184 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %185 = call double @get_utime(i32 %184)
  %186 = load double, double* %7, align 8
  %187 = fadd double %186, %185
  store double %187, double* %7, align 8
  %188 = load i32, i32* @verbosity, align 4
  %189 = icmp sgt i32 %188, 2
  br i1 %189, label %190, label %194

190:                                              ; preds = %183
  %191 = load i32, i32* @stderr, align 4
  %192 = load double, double* %7, align 8
  %193 = call i32 (i32, i8*, ...) @fprintf(i32 %191, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), double %192)
  br label %194

194:                                              ; preds = %190, %183
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %195, %struct.TYPE_10__** getelementptr inbounds (%struct.aio_connection, %struct.aio_connection* @load_user_metafile.empty_aio_conn, i32 0, i32 1), align 8
  %196 = load i8*, i8** @ct_aio, align 8
  store i8* %196, i8** getelementptr inbounds (%struct.aio_connection, %struct.aio_connection* @load_user_metafile.empty_aio_conn, i32 0, i32 0), align 8
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 1
  store %struct.aio_connection* @load_user_metafile.empty_aio_conn, %struct.aio_connection** %198, align 8
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  %201 = load %struct.aio_connection*, %struct.aio_connection** %200, align 8
  %202 = icmp ne %struct.aio_connection* %201, null
  %203 = zext i1 %202 to i32
  %204 = call i32 @assert(i32 %203)
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @onload_user_metafile(%struct.connection* bitcast (%struct.aio_connection* @load_user_metafile.empty_aio_conn to %struct.connection*), i32 %207)
  br label %239

209:                                              ; preds = %133
  %210 = load i32*, i32** @fd, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 2
  %215 = load i32*, i32** %214, align 8
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @header, i32 0, i32 1), align 8
  %217 = load i32, i32* %5, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %226 = call %struct.aio_connection* @create_aio_read_connection(i32 %212, i32* %215, i32 %221, i32 %224, i32* @ct_metafile_aio, %struct.TYPE_10__* %225)
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 1
  store %struct.aio_connection* %226, %struct.aio_connection** %228, align 8
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 1
  %231 = load %struct.aio_connection*, %struct.aio_connection** %230, align 8
  %232 = icmp ne %struct.aio_connection* %231, null
  %233 = zext i1 %232 to i32
  %234 = call i32 @assert(i32 %233)
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 1
  %237 = load %struct.aio_connection*, %struct.aio_connection** %236, align 8
  %238 = call i32 @WaitAioArrAdd(%struct.aio_connection* %237)
  br label %239

239:                                              ; preds = %209, %194
  br label %240

240:                                              ; preds = %239, %69, %59, %31, %14
  ret void
}

declare dso_local i32 @WaitAioArrClear(...) #1

declare dso_local i64 @user_loaded(%struct.TYPE_10__*) #1

declare dso_local i32 @del_user_used(%struct.TYPE_10__*) #1

declare dso_local i32 @add_user_used(%struct.TYPE_10__*) #1

declare dso_local i32 @onload_user_metafile(%struct.connection*, i32) #1

declare dso_local i32 @check_aio_completion(%struct.aio_connection*) #1

declare dso_local i32 @WaitAioArrAdd(%struct.aio_connection*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @dl_malloc(i32) #1

declare dso_local i64 @dl_get_memory_used(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local double @get_utime(i32) #1

declare dso_local i32 @pread(i32, i32*, i32, i32) #1

declare dso_local %struct.aio_connection* @create_aio_read_connection(i32, i32*, i32, i32, i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
