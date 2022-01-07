; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_flush_binlog_forced.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_flush_binlog_forced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@binlogname = common dso_local global i32 0, align 4
@binlog_disabled = common dso_local global i64 0, align 8
@W = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%d flush_binlog()\0A\00", align 1
@now = common dso_local global i32 0, align 4
@log_pos = common dso_local global i64 0, align 8
@log_start_pos = common dso_local global i64 0, align 8
@log_headers_size = common dso_local global i64 0, align 8
@binlog_fd = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@Binlog = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [63 x i8] c"error writing %d bytes at %lld (file position %lld) to %s: %m\0A\00", align 1
@binlog_cyclic_mode = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_binlog_forced(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @binlogname, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i64, i64* @binlog_disabled, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %1
  br label %234

14:                                               ; preds = %10
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 0), align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 1), align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = mul nsw i32 %19, 2
  %21 = call i32 @sync_binlog(i32 %20)
  br label %234

22:                                               ; preds = %14
  %23 = load i64, i64* @verbosity, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @stderr, align 4
  %27 = load i32, i32* @now, align 4
  %28 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 2), align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %132

32:                                               ; preds = %29
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 1), align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 0), align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 0), align 8
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 2), align 8
  %39 = icmp sle i64 %37, %38
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i1 [ false, %32 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 2), align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 0), align 8
  %46 = sub nsw i64 %44, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %130

50:                                               ; preds = %40
  %51 = load i64, i64* @log_pos, align 8
  %52 = load i64, i64* @log_start_pos, align 8
  %53 = sub nsw i64 %51, %52
  %54 = load i64, i64* @log_headers_size, align 8
  %55 = add nsw i64 %53, %54
  store i64 %55, i64* %6, align 8
  %56 = load i32, i32* @binlog_fd, align 4
  %57 = load i64, i64* %6, align 8
  %58 = load i32, i32* @SEEK_SET, align 4
  %59 = call i64 @lseek(i32 %56, i64 %57, i32 %58)
  %60 = load i64, i64* %6, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 0), align 8
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 3), align 8
  %66 = icmp sle i64 %64, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %50
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 3), align 8
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 2), align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %67
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 2), align 8
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 3), align 8
  %74 = sub nsw i64 %72, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %5, align 4
  %76 = call i32 (...) @relax_write_log_crc32()
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Binlog, align 8
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 3), align 8
  %79 = trunc i64 %78 to i32
  %80 = load i32, i32* %5, align 4
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 3), align 8
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 0), align 8
  %84 = sub nsw i64 %82, %83
  %85 = add nsw i64 %81, %84
  %86 = call i32 @kfs_buffer_crypt(%struct.TYPE_6__* %77, i32 %79, i32 %80, i64 %85)
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 4), align 8
  store i64 %87, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 3), align 8
  br label %88

88:                                               ; preds = %71, %67, %50
  %89 = load i32, i32* @binlog_fd, align 4
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 0), align 8
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @write(i32 %89, i64 %90, i32 %91)
  store i32 %92, i32* %3, align 4
  %93 = load i32, i32* %3, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %88
  %96 = load i32, i32* @stderr, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load i64, i64* @log_pos, align 8
  %99 = load i64, i64* %6, align 8
  %100 = load i32, i32* @binlogname, align 4
  %101 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %97, i64 %98, i64 %99, i32 %100)
  br label %234

102:                                              ; preds = %88
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 0), align 8
  %106 = add nsw i64 %105, %104
  store i64 %106, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 0), align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Binlog, align 8
  %108 = icmp ne %struct.TYPE_6__* %107, null
  br i1 %108, label %109, label %120

109:                                              ; preds = %102
  %110 = load i32, i32* @binlog_cyclic_mode, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %3, align 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Binlog, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, %113
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %112, %109, %102
  %121 = load i32, i32* %3, align 4
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* @log_pos, align 8
  %124 = add nsw i64 %123, %122
  store i64 %124, i64* @log_pos, align 8
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  br label %234

129:                                              ; preds = %120
  br label %130

130:                                              ; preds = %129, %40
  %131 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 4), align 8
  store i64 %131, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 2), align 8
  br label %132

132:                                              ; preds = %130, %29
  %133 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 0), align 8
  %134 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 1), align 8
  %135 = icmp sle i64 %133, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert(i32 %136)
  %138 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 1), align 8
  %139 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 0), align 8
  %140 = sub nsw i64 %138, %139
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %4, align 4
  %142 = load i32, i32* %4, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %230

144:                                              ; preds = %132
  %145 = load i64, i64* @log_pos, align 8
  %146 = load i64, i64* @log_start_pos, align 8
  %147 = sub nsw i64 %145, %146
  %148 = load i64, i64* @log_headers_size, align 8
  %149 = add nsw i64 %147, %148
  store i64 %149, i64* %6, align 8
  %150 = load i32, i32* @binlog_fd, align 4
  %151 = load i64, i64* %6, align 8
  %152 = load i32, i32* @SEEK_SET, align 4
  %153 = call i64 @lseek(i32 %150, i64 %151, i32 %152)
  %154 = load i64, i64* %6, align 8
  %155 = icmp eq i64 %153, %154
  %156 = zext i1 %155 to i32
  %157 = call i32 @assert(i32 %156)
  %158 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 0), align 8
  %159 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 3), align 8
  %160 = icmp sle i64 %158, %159
  br i1 %160, label %161, label %182

161:                                              ; preds = %144
  %162 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 3), align 8
  %163 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 1), align 8
  %164 = icmp slt i64 %162, %163
  br i1 %164, label %165, label %182

165:                                              ; preds = %161
  %166 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 1), align 8
  %167 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 3), align 8
  %168 = sub nsw i64 %166, %167
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %5, align 4
  %170 = call i32 (...) @relax_write_log_crc32()
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Binlog, align 8
  %172 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 3), align 8
  %173 = trunc i64 %172 to i32
  %174 = load i32, i32* %5, align 4
  %175 = load i64, i64* %6, align 8
  %176 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 3), align 8
  %177 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 0), align 8
  %178 = sub nsw i64 %176, %177
  %179 = add nsw i64 %175, %178
  %180 = call i32 @kfs_buffer_crypt(%struct.TYPE_6__* %171, i32 %173, i32 %174, i64 %179)
  %181 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 1), align 8
  store i64 %181, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 3), align 8
  br label %182

182:                                              ; preds = %165, %161, %144
  %183 = load i32, i32* @binlog_fd, align 4
  %184 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 0), align 8
  %185 = load i32, i32* %4, align 4
  %186 = call i32 @write(i32 %183, i64 %184, i32 %185)
  store i32 %186, i32* %3, align 4
  %187 = load i32, i32* %3, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %207

189:                                              ; preds = %182
  %190 = load i32, i32* @errno, align 4
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %4, align 4
  %192 = load i64, i64* @log_pos, align 8
  %193 = load i64, i64* %6, align 8
  %194 = load i32, i32* @binlogname, align 4
  %195 = call i32 @kprintf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %191, i64 %192, i64 %193, i32 %194)
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* @EINTR, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %203, label %199

199:                                              ; preds = %189
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* @EAGAIN, align 4
  %202 = icmp eq i32 %200, %201
  br label %203

203:                                              ; preds = %199, %189
  %204 = phi i1 [ true, %189 ], [ %202, %199 ]
  %205 = zext i1 %204 to i32
  %206 = call i32 @assert(i32 %205)
  br label %234

207:                                              ; preds = %182
  %208 = load i32, i32* %3, align 4
  %209 = sext i32 %208 to i64
  %210 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 0), align 8
  %211 = add nsw i64 %210, %209
  store i64 %211, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @W, i32 0, i32 0), align 8
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Binlog, align 8
  %213 = icmp ne %struct.TYPE_6__* %212, null
  br i1 %213, label %214, label %225

214:                                              ; preds = %207
  %215 = load i32, i32* @binlog_cyclic_mode, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %225, label %217

217:                                              ; preds = %214
  %218 = load i32, i32* %3, align 4
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** @Binlog, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, %218
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %217, %214, %207
  %226 = load i32, i32* %3, align 4
  %227 = sext i32 %226 to i64
  %228 = load i64, i64* @log_pos, align 8
  %229 = add nsw i64 %228, %227
  store i64 %229, i64* @log_pos, align 8
  br label %230

230:                                              ; preds = %225, %132
  %231 = load i32, i32* %2, align 4
  %232 = add nsw i32 1, %231
  %233 = call i32 @sync_binlog(i32 %232)
  br label %234

234:                                              ; preds = %230, %203, %128, %95, %18, %13
  ret void
}

declare dso_local i32 @sync_binlog(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @relax_write_log_crc32(...) #1

declare dso_local i32 @kfs_buffer_crypt(%struct.TYPE_6__*, i32, i32, i64) #1

declare dso_local i32 @write(i32, i64, i32) #1

declare dso_local i32 @kprintf(i8*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
