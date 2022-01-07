; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-data.c_load_user_metafile.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-data.c_load_user_metafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aio_connection = type { i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.aio_connection*, i32* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.connection = type { i32 }

@load_user_metafile.empty_aio_conn = internal global %struct.aio_connection zeroinitializer, align 8
@WaitAio = common dso_local global %struct.aio_connection* null, align 8
@header = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@ct_aio = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Previous AIO query failed for user at %p, scheduling a new one\0A\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"no space to load metafile - cannot allocate %d bytes (%lld currently used)\0A\00", align 1
@allocated_metafile_bytes = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [83 x i8] c"*** Scheduled reading user data from index at position %lld, %d bytes, noaio = %d\0A\00", align 1
@fd = common dso_local global i32* null, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [88 x i8] c"error reading header from index file: read %d bytes instead of %d at position %lld: %m\0A\00", align 1
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
  store %struct.aio_connection* null, %struct.aio_connection** @WaitAio, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = call i64 @user_loaded(%struct.TYPE_8__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %243

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 0), align 8
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 1), align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %18, %14
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** getelementptr inbounds (%struct.aio_connection, %struct.aio_connection* @load_user_metafile.empty_aio_conn, i32 0, i32 1), align 8
  %32 = load i8*, i8** @ct_aio, align 8
  store i8* %32, i8** getelementptr inbounds (%struct.aio_connection, %struct.aio_connection* @load_user_metafile.empty_aio_conn, i32 0, i32 0), align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  store %struct.aio_connection* @load_user_metafile.empty_aio_conn, %struct.aio_connection** %34, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @onload_user_metafile(%struct.connection* bitcast (%struct.aio_connection* @load_user_metafile.empty_aio_conn to %struct.connection*), i32 %37)
  br label %243

39:                                               ; preds = %18
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load %struct.aio_connection*, %struct.aio_connection** %41, align 8
  %43 = icmp ne %struct.aio_connection* %42, null
  br i1 %43, label %44, label %68

44:                                               ; preds = %39
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load %struct.aio_connection*, %struct.aio_connection** %46, align 8
  %48 = call i32 @check_aio_completion(%struct.aio_connection* %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load %struct.aio_connection*, %struct.aio_connection** %50, align 8
  %52 = icmp ne %struct.aio_connection* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load %struct.aio_connection*, %struct.aio_connection** %55, align 8
  store %struct.aio_connection* %56, %struct.aio_connection** @WaitAio, align 8
  br label %243

57:                                               ; preds = %44
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %243

63:                                               ; preds = %57
  %64 = load i32, i32* @stderr, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %65)
  br label %67

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67, %39
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 1), align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %68, %91
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32* @qmalloc(i32 %82)
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  store i32* %83, i32** %85, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  br label %98

91:                                               ; preds = %79
  %92 = load i32, i32* @stderr, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @allocated_metafile_bytes, align 4
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %96)
  br label %79

98:                                               ; preds = %90
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @allocated_metafile_bytes, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* @allocated_metafile_bytes, align 4
  %104 = load i32, i32* @verbosity, align 4
  %105 = icmp sgt i32 %104, 2
  br i1 %105, label %106, label %119

106:                                              ; preds = %98
  %107 = load i32, i32* @stderr, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 1), align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i32 %113, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %106, %98
  %120 = load i32, i32* %5, align 4
  %121 = icmp sle i32 1, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 0), align 8
  %125 = icmp sle i32 %123, %124
  br label %126

126:                                              ; preds = %122, %119
  %127 = phi i1 [ false, %119 ], [ %125, %122 ]
  %128 = zext i1 %127 to i32
  %129 = call i32 @assert(i32 %128)
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %213

132:                                              ; preds = %126
  %133 = call double @get_utime(i32 1)
  %134 = fneg double %133
  store double %134, double* %7, align 8
  %135 = load i32*, i32** @fd, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 1), align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @SEEK_SET, align 4
  %145 = call i32 @lseek(i32 %137, i32 %143, i32 %144)
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 1), align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %145, %151
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 1), align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %8, align 4
  %161 = load i32*, i32** @fd, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @read(i32 %163, i32* %166, i32 %167)
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* %8, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %183

172:                                              ; preds = %132
  %173 = load i32, i32* @stderr, align 4
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* %8, align 4
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 1), align 8
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i32, i8*, ...) @fprintf(i32 %173, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.3, i64 0, i64 0), i32 %174, i32 %175, i32 %181)
  br label %183

183:                                              ; preds = %172, %132
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* %8, align 4
  %186 = icmp eq i32 %184, %185
  %187 = zext i1 %186 to i32
  %188 = call i32 @assert(i32 %187)
  %189 = call double @get_utime(i32 1)
  %190 = load double, double* %7, align 8
  %191 = fadd double %190, %189
  store double %191, double* %7, align 8
  %192 = load i32, i32* @verbosity, align 4
  %193 = icmp sgt i32 %192, 2
  br i1 %193, label %194, label %198

194:                                              ; preds = %183
  %195 = load i32, i32* @stderr, align 4
  %196 = load double, double* %7, align 8
  %197 = call i32 (i32, i8*, ...) @fprintf(i32 %195, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), double %196)
  br label %198

198:                                              ; preds = %194, %183
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %199, %struct.TYPE_8__** getelementptr inbounds (%struct.aio_connection, %struct.aio_connection* @load_user_metafile.empty_aio_conn, i32 0, i32 1), align 8
  %200 = load i8*, i8** @ct_aio, align 8
  store i8* %200, i8** getelementptr inbounds (%struct.aio_connection, %struct.aio_connection* @load_user_metafile.empty_aio_conn, i32 0, i32 0), align 8
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 1
  store %struct.aio_connection* @load_user_metafile.empty_aio_conn, %struct.aio_connection** %202, align 8
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 1
  %205 = load %struct.aio_connection*, %struct.aio_connection** %204, align 8
  %206 = icmp ne %struct.aio_connection* %205, null
  %207 = zext i1 %206 to i32
  %208 = call i32 @assert(i32 %207)
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @onload_user_metafile(%struct.connection* bitcast (%struct.aio_connection* @load_user_metafile.empty_aio_conn to %struct.connection*), i32 %211)
  br label %243

213:                                              ; preds = %126
  %214 = load i32*, i32** @fd, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 2
  %219 = load i32*, i32** %218, align 8
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @header, i32 0, i32 1), align 8
  %221 = load i32, i32* %5, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %230 = call %struct.aio_connection* @create_aio_read_connection(i32 %216, i32* %219, i32 %225, i32 %228, i32* @ct_metafile_aio, %struct.TYPE_8__* %229)
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 1
  store %struct.aio_connection* %230, %struct.aio_connection** %232, align 8
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 1
  %235 = load %struct.aio_connection*, %struct.aio_connection** %234, align 8
  %236 = icmp ne %struct.aio_connection* %235, null
  %237 = zext i1 %236 to i32
  %238 = call i32 @assert(i32 %237)
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 1
  %241 = load %struct.aio_connection*, %struct.aio_connection** %240, align 8
  store %struct.aio_connection* %241, %struct.aio_connection** @WaitAio, align 8
  br label %242

242:                                              ; preds = %213
  br label %243

243:                                              ; preds = %242, %198, %62, %53, %26, %13
  ret void
}

declare dso_local i64 @user_loaded(%struct.TYPE_8__*) #1

declare dso_local i32 @onload_user_metafile(%struct.connection*, i32) #1

declare dso_local i32 @check_aio_completion(%struct.aio_connection*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32* @qmalloc(i32) #1

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
