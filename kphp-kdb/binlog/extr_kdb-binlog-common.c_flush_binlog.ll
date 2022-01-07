; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_flush_binlog.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_flush_binlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i64, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@binlogname = common dso_local global i8* null, align 8
@binlog_disabled = common dso_local global i64 0, align 8
@binlog_write_active = common dso_local global i64 0, align 8
@binlog_write_aiocb = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@EINPROGRESS = common dso_local global i32 0, align 4
@now = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"%d binlog aio_write didn't complete for 120 seconds, invoking write()!\0A\00", align 1
@binlog_write_last = common dso_local global i64 0, align 8
@binlog_fd = common dso_local global i32 0, align 4
@binlog_sync_aiocb = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@aio_write_start = common dso_local global i32 0, align 4
@W = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@log_pos = common dso_local global i64 0, align 8
@Binlog = common dso_local global %struct.TYPE_17__* null, align 8
@binlog_cyclic_mode = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [94 x i8] c"%d aio_write() for binlog (position=%lld, size=%ld) completed successfully, %d bytes written\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"%d error writing binlog %s (position=%lld, size=%ld): %m\0A\00", align 1
@log_start_pos = common dso_local global i64 0, align 8
@log_headers_size = common dso_local global i64 0, align 8
@SIGEV_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"%d aio_write() for binlog (position=%lld, size=%d) failed: %m\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"%d queued aio_write() for binlog (position=%lld, size=%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_binlog() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %7 = load i8*, i8** @binlogname, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i64, i64* @binlog_disabled, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %0
  br label %253

13:                                               ; preds = %9
  %14 = load i64, i64* @binlog_write_active, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %132

16:                                               ; preds = %13
  %17 = call i32 @aio_error(%struct.TYPE_16__* @binlog_write_aiocb)
  store i32 %17, i32* %2, align 4
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @EINPROGRESS, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load i64, i64* @now, align 8
  %23 = load i64, i64* @binlog_write_active, align 8
  %24 = add nsw i64 %23, 120
  %25 = icmp sgt i64 %22, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i32, i32* @stderr, align 4
  %28 = load i64, i64* @now, align 8
  %29 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @binlog_write_aiocb, i32 0, i32 0), align 8
  %31 = call i32 @aio_cancel(i32 %30, %struct.TYPE_16__* @binlog_write_aiocb)
  %32 = call i32 @flush_binlog_forced(i32 1)
  %33 = call i32 @exit(i32 3) #3
  unreachable

34:                                               ; preds = %21, %16
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* @EINPROGRESS, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %131

38:                                               ; preds = %34
  store i64 0, i64* @binlog_write_active, align 8
  %39 = call i32 @aio_return(%struct.TYPE_16__* @binlog_write_aiocb)
  store i32 %39, i32* %1, align 4
  %40 = load i32, i32* %1, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %119

42:                                               ; preds = %38
  %43 = load i32, i32* %1, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @binlog_write_aiocb, i32 0, i32 1), align 4
  %45 = icmp sle i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i64, i64* @now, align 8
  store i64 %48, i64* @binlog_write_last, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @binlog_write_aiocb, i32 0, i32 0), align 8
  %50 = load i32, i32* @binlog_fd, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %42
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @binlog_write_aiocb, i32 0, i32 0), align 8
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @binlog_sync_aiocb, i32 0, i32 0), align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @binlog_write_aiocb, i32 0, i32 0), align 8
  %58 = call i32 @close(i32 %57)
  br label %59

59:                                               ; preds = %56, %52, %42
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @binlog_write_aiocb, i32 0, i32 0), align 8
  %60 = load i32, i32* @aio_write_start, align 4
  %61 = call i32 @assert(i32 %60)
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 0), align 4
  %63 = load i32, i32* @aio_write_start, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %107

65:                                               ; preds = %59
  %66 = load i32, i32* %1, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* @log_pos, align 8
  %69 = add nsw i64 %68, %67
  store i64 %69, i64* @log_pos, align 8
  %70 = load i32, i32* %1, align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 0), align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 0), align 4
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** @Binlog, align 8
  %74 = icmp ne %struct.TYPE_17__* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %65
  %76 = load i32, i32* @binlog_cyclic_mode, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %1, align 4
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** @Binlog, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, %79
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %78, %75, %65
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 1), align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 0), align 4
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 2), align 4
  %92 = icmp sle i32 %90, %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %89, %86
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 0), align 4
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 1), align 4
  %96 = icmp sle i32 %94, %95
  br label %97

97:                                               ; preds = %93, %89
  %98 = phi i1 [ true, %89 ], [ %96, %93 ]
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 0), align 4
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 1), align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 3), align 4
  store i32 %105, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 1), align 4
  br label %106

106:                                              ; preds = %104, %97
  br label %107

107:                                              ; preds = %106, %59
  store i32 0, i32* @aio_write_start, align 4
  store i32 1, i32* %3, align 4
  %108 = load i32, i32* @verbosity, align 4
  %109 = icmp sgt i32 %108, 1
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = load i32, i32* @stderr, align 4
  %112 = load i64, i64* @now, align 8
  %113 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @binlog_write_aiocb, i32 0, i32 2), align 8
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @binlog_write_aiocb, i32 0, i32 1), align 4
  %115 = sext i32 %114 to i64
  %116 = load i32, i32* %1, align 4
  %117 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0), i64 %112, i64 %113, i64 %115, i32 %116)
  br label %118

118:                                              ; preds = %110, %107
  br label %130

119:                                              ; preds = %38
  %120 = load i32, i32* %2, align 4
  store i32 %120, i32* @errno, align 4
  %121 = load i32, i32* @stderr, align 4
  %122 = load i64, i64* @now, align 8
  %123 = load i8*, i8** @binlogname, align 8
  %124 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @binlog_write_aiocb, i32 0, i32 2), align 8
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @binlog_write_aiocb, i32 0, i32 1), align 4
  %126 = sext i32 %125 to i64
  %127 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %121, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %122, i8* %123, i64 %124, i64 %126)
  %128 = call i32 @flush_binlog_forced(i32 1)
  %129 = call i32 @exit(i32 3) #3
  unreachable

130:                                              ; preds = %118
  br label %131

131:                                              ; preds = %130, %34
  br label %132

132:                                              ; preds = %131, %13
  %133 = load i64, i64* @binlog_write_active, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %250, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 0), align 4
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 2), align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %250

139:                                              ; preds = %135
  %140 = load i64, i64* @log_pos, align 8
  %141 = load i64, i64* @log_start_pos, align 8
  %142 = sub nsw i64 %140, %141
  %143 = load i64, i64* @log_headers_size, align 8
  %144 = add nsw i64 %142, %143
  store i64 %144, i64* %4, align 8
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 1), align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %181

147:                                              ; preds = %139
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 0), align 4
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 4), align 4
  %150 = icmp sle i32 %148, %149
  br i1 %150, label %151, label %172

151:                                              ; preds = %147
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 4), align 4
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 1), align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %172

155:                                              ; preds = %151
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 1), align 4
  %157 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 4), align 4
  %158 = sub nsw i32 %156, %157
  store i32 %158, i32* %6, align 4
  %159 = call i32 (...) @relax_write_log_crc32()
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** @Binlog, align 8
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 4), align 4
  %162 = load i32, i32* %6, align 4
  %163 = load i64, i64* %4, align 8
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 4), align 4
  %165 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 0), align 4
  %166 = sub nsw i32 %164, %165
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %163, %167
  %169 = trunc i64 %168 to i32
  %170 = call i32 @kfs_buffer_crypt(%struct.TYPE_17__* %160, i32 %161, i32 %162, i32 %169)
  %171 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 3), align 4
  store i32 %171, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 4), align 4
  br label %172

172:                                              ; preds = %155, %151, %147
  %173 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 1), align 4
  %174 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 0), align 4
  %175 = sub nsw i32 %173, %174
  store i32 %175, i32* %5, align 4
  %176 = load i32, i32* %5, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %172
  %179 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 3), align 4
  store i32 %179, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 1), align 4
  br label %180

180:                                              ; preds = %178, %172
  br label %181

181:                                              ; preds = %180, %139
  %182 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 1), align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %213, label %184

184:                                              ; preds = %181
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 0), align 4
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 4), align 4
  %187 = icmp sle i32 %185, %186
  br i1 %187, label %188, label %209

188:                                              ; preds = %184
  %189 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 4), align 4
  %190 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 2), align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %209

192:                                              ; preds = %188
  %193 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 2), align 4
  %194 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 4), align 4
  %195 = sub nsw i32 %193, %194
  store i32 %195, i32* %6, align 4
  %196 = call i32 (...) @relax_write_log_crc32()
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** @Binlog, align 8
  %198 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 4), align 4
  %199 = load i32, i32* %6, align 4
  %200 = load i64, i64* %4, align 8
  %201 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 4), align 4
  %202 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 0), align 4
  %203 = sub nsw i32 %201, %202
  %204 = sext i32 %203 to i64
  %205 = add nsw i64 %200, %204
  %206 = trunc i64 %205 to i32
  %207 = call i32 @kfs_buffer_crypt(%struct.TYPE_17__* %197, i32 %198, i32 %199, i32 %206)
  %208 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 2), align 4
  store i32 %208, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 4), align 4
  br label %209

209:                                              ; preds = %192, %188, %184
  %210 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 2), align 4
  %211 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 0), align 4
  %212 = sub nsw i32 %210, %211
  store i32 %212, i32* %5, align 4
  br label %213

213:                                              ; preds = %209, %181
  %214 = load i32, i32* %5, align 4
  %215 = icmp sge i32 %214, 0
  %216 = zext i1 %215 to i32
  %217 = call i32 @assert(i32 %216)
  %218 = load i32, i32* %5, align 4
  %219 = icmp sgt i32 %218, 0
  br i1 %219, label %220, label %249

220:                                              ; preds = %213
  %221 = call i32 @memset(%struct.TYPE_16__* @binlog_write_aiocb, i32 0, i32 4)
  %222 = load i32, i32* @binlog_fd, align 4
  store i32 %222, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @binlog_write_aiocb, i32 0, i32 0), align 8
  %223 = load i64, i64* %4, align 8
  store i64 %223, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @binlog_write_aiocb, i32 0, i32 2), align 8
  %224 = load i32, i32* %5, align 4
  store i32 %224, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @binlog_write_aiocb, i32 0, i32 1), align 4
  %225 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 0), align 4
  store i32 %225, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @binlog_write_aiocb, i32 0, i32 3), align 8
  %226 = load i32, i32* @SIGEV_NONE, align 4
  store i32 %226, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @binlog_write_aiocb, i32 0, i32 4, i32 0), align 4
  %227 = call i64 @aio_write(%struct.TYPE_16__* @binlog_write_aiocb)
  %228 = icmp slt i64 %227, 0
  br i1 %228, label %229, label %237

229:                                              ; preds = %220
  %230 = load i32, i32* @stderr, align 4
  %231 = load i64, i64* @now, align 8
  %232 = load i64, i64* %4, align 8
  %233 = load i32, i32* %5, align 4
  %234 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %230, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i64 %231, i64 %232, i32 %233)
  %235 = call i32 @flush_binlog_forced(i32 1)
  %236 = call i32 @exit(i32 3) #3
  unreachable

237:                                              ; preds = %220
  %238 = load i64, i64* @now, align 8
  store i64 %238, i64* @binlog_write_active, align 8
  %239 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @W, i32 0, i32 0), align 4
  store i32 %239, i32* @aio_write_start, align 4
  %240 = load i32, i32* @verbosity, align 4
  %241 = icmp sgt i32 %240, 1
  br i1 %241, label %242, label %248

242:                                              ; preds = %237
  %243 = load i32, i32* @stderr, align 4
  %244 = load i64, i64* @now, align 8
  %245 = load i64, i64* %4, align 8
  %246 = load i32, i32* %5, align 4
  %247 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %243, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i64 %244, i64 %245, i32 %246)
  br label %248

248:                                              ; preds = %242, %237
  br label %249

249:                                              ; preds = %248, %213
  br label %250

250:                                              ; preds = %249, %135, %132
  %251 = load i32, i32* %3, align 4
  %252 = call i32 @sync_binlog(i32 %251)
  br label %253

253:                                              ; preds = %250, %12
  ret void
}

declare dso_local i32 @aio_error(%struct.TYPE_16__*) #1

declare dso_local i32 @fprintf(i32, i8*, i64, ...) #1

declare dso_local i32 @aio_cancel(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @flush_binlog_forced(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @aio_return(%struct.TYPE_16__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @relax_write_log_crc32(...) #1

declare dso_local i32 @kfs_buffer_crypt(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i64 @aio_write(%struct.TYPE_16__*) #1

declare dso_local i32 @sync_binlog(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
