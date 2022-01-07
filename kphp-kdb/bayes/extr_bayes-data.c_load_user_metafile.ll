; ModuleID = '/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-data.c_load_user_metafile.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-data.c_load_user_metafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aio_connection = type { i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.aio_connection*, i32* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.connection = type { i32 }

@load_user_metafile.empty_aio_conn = internal global %struct.aio_connection zeroinitializer, align 8
@debug_on = common dso_local global i32 0, align 4
@WaitAio = common dso_local global %struct.aio_connection* null, align 8
@header = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
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
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @debug_on, align 4
  %11 = load i32, i32* %6, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %6, align 4
  store %struct.aio_connection* null, %struct.aio_connection** @WaitAio, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = call i64 @user_loaded(%struct.TYPE_8__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %250

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 0), align 8
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 1), align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %21, %17
  %30 = load i32*, i32** @EMPTY__METAFILE, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  store i32* %30, i32** %32, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i32 12, i32* %34, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** getelementptr inbounds (%struct.aio_connection, %struct.aio_connection* @load_user_metafile.empty_aio_conn, i32 0, i32 1), align 8
  %36 = load i8*, i8** @ct_aio, align 8
  store i8* %36, i8** getelementptr inbounds (%struct.aio_connection, %struct.aio_connection* @load_user_metafile.empty_aio_conn, i32 0, i32 0), align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  store %struct.aio_connection* @load_user_metafile.empty_aio_conn, %struct.aio_connection** %38, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @onload_user_metafile(%struct.connection* bitcast (%struct.aio_connection* @load_user_metafile.empty_aio_conn to %struct.connection*), i32 %41)
  br label %250

43:                                               ; preds = %21
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load %struct.aio_connection*, %struct.aio_connection** %45, align 8
  %47 = icmp ne %struct.aio_connection* %46, null
  br i1 %47, label %48, label %72

48:                                               ; preds = %43
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load %struct.aio_connection*, %struct.aio_connection** %50, align 8
  %52 = call i32 @check_aio_completion(%struct.aio_connection* %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load %struct.aio_connection*, %struct.aio_connection** %54, align 8
  %56 = icmp ne %struct.aio_connection* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load %struct.aio_connection*, %struct.aio_connection** %59, align 8
  store %struct.aio_connection* %60, %struct.aio_connection** @WaitAio, align 8
  br label %250

61:                                               ; preds = %48
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %250

67:                                               ; preds = %61
  %68 = load i32, i32* @stderr, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %69)
  br label %71

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71, %43
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 1), align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32* @qmalloc(i32 %83)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  store i32* %84, i32** %86, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %72
  %92 = load i32, i32* @stderr, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i64 (...) @get_memory_used()
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %95, i64 %96)
  %98 = call i32 @assert(i32 0)
  br label %99

99:                                               ; preds = %91, %72
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @allocated_metafile_bytes, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* @allocated_metafile_bytes, align 4
  %105 = load i32, i32* @verbosity, align 4
  %106 = icmp sgt i32 %105, 2
  br i1 %106, label %107, label %123

107:                                              ; preds = %99
  %108 = load i32, i32* @stderr, align 4
  %109 = load i32*, i32** @fd, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 1), align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = call i32 (i32, i8*, ...) @fprintf(i32 %108, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0), i32 %111, i32 %117, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %107, %99
  %124 = load i32, i32* %5, align 4
  %125 = icmp sle i32 1, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 0), align 8
  %129 = icmp sle i32 %127, %128
  br label %130

130:                                              ; preds = %126, %123
  %131 = phi i1 [ false, %123 ], [ %129, %126 ]
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %220

136:                                              ; preds = %130
  %137 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %138 = call double @get_utime(i32 %137)
  %139 = fneg double %138
  store double %139, double* %7, align 8
  %140 = load i32*, i32** @fd, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 1), align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @SEEK_SET, align 4
  %150 = call i32 @lseek(i32 %142, i32 %148, i32 %149)
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 1), align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %150, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @assert(i32 %158)
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 1), align 8
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %8, align 4
  %166 = load i32*, i32** @fd, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @read(i32 %168, i32* %171, i32 %172)
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %194

177:                                              ; preds = %136
  %178 = load i32, i32* @stderr, align 4
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* %8, align 4
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 1), align 8
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (i32, i8*, ...) @fprintf(i32 %178, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.3, i64 0, i64 0), i32 %179, i32 %180, i32 %181, i32 %187)
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* %8, align 4
  %191 = icmp eq i32 %189, %190
  %192 = zext i1 %191 to i32
  %193 = call i32 @assert(i32 %192)
  br label %194

194:                                              ; preds = %177, %136
  %195 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %196 = call double @get_utime(i32 %195)
  %197 = load double, double* %7, align 8
  %198 = fadd double %197, %196
  store double %198, double* %7, align 8
  %199 = load i32, i32* @verbosity, align 4
  %200 = icmp sgt i32 %199, 2
  br i1 %200, label %201, label %205

201:                                              ; preds = %194
  %202 = load i32, i32* @stderr, align 4
  %203 = load double, double* %7, align 8
  %204 = call i32 (i32, i8*, ...) @fprintf(i32 %202, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), double %203)
  br label %205

205:                                              ; preds = %201, %194
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %206, %struct.TYPE_8__** getelementptr inbounds (%struct.aio_connection, %struct.aio_connection* @load_user_metafile.empty_aio_conn, i32 0, i32 1), align 8
  %207 = load i8*, i8** @ct_aio, align 8
  store i8* %207, i8** getelementptr inbounds (%struct.aio_connection, %struct.aio_connection* @load_user_metafile.empty_aio_conn, i32 0, i32 0), align 8
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 1
  store %struct.aio_connection* @load_user_metafile.empty_aio_conn, %struct.aio_connection** %209, align 8
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 1
  %212 = load %struct.aio_connection*, %struct.aio_connection** %211, align 8
  %213 = icmp ne %struct.aio_connection* %212, null
  %214 = zext i1 %213 to i32
  %215 = call i32 @assert(i32 %214)
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @onload_user_metafile(%struct.connection* bitcast (%struct.aio_connection* @load_user_metafile.empty_aio_conn to %struct.connection*), i32 %218)
  br label %249

220:                                              ; preds = %130
  %221 = load i32*, i32** @fd, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 2
  %226 = load i32*, i32** %225, align 8
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 1), align 8
  %228 = load i32, i32* %5, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %237 = call %struct.aio_connection* @create_aio_read_connection(i32 %223, i32* %226, i32 %232, i32 %235, i32* @ct_metafile_aio, %struct.TYPE_8__* %236)
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 1
  store %struct.aio_connection* %237, %struct.aio_connection** %239, align 8
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 1
  %242 = load %struct.aio_connection*, %struct.aio_connection** %241, align 8
  %243 = icmp ne %struct.aio_connection* %242, null
  %244 = zext i1 %243 to i32
  %245 = call i32 @assert(i32 %244)
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 1
  %248 = load %struct.aio_connection*, %struct.aio_connection** %247, align 8
  store %struct.aio_connection* %248, %struct.aio_connection** @WaitAio, align 8
  br label %249

249:                                              ; preds = %220, %205
  br label %250

250:                                              ; preds = %249, %66, %57, %29, %16
  ret void
}

declare dso_local i64 @user_loaded(%struct.TYPE_8__*) #1

declare dso_local i32 @onload_user_metafile(%struct.connection*, i32) #1

declare dso_local i32 @check_aio_completion(%struct.aio_connection*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @qmalloc(i32) #1

declare dso_local i64 @get_memory_used(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local double @get_utime(i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local %struct.aio_connection* @create_aio_read_connection(i32, i32*, i32, i32, i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
