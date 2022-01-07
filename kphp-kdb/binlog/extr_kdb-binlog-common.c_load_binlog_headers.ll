; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_load_binlog_headers.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_load_binlog_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_start = type { i32, i64, i64, i64, i64 }
%struct.lev_rotate_from = type { i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@binlog_headers = common dso_local global i32 0, align 4
@binlog_existed = common dso_local global i32 0, align 4
@ST = common dso_local global %struct.lev_start* null, align 8
@CONT = common dso_local global %struct.lev_rotate_from* null, align 8
@KHDR = common dso_local global %struct.TYPE_12__* null, align 8
@cur_binlog_file_hash = common dso_local global i32 0, align 4
@log_headers_size = common dso_local global i32 0, align 4
@tot_crc32 = common dso_local global i64 0, align 8
@tot_crc32_pos = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"cannot lseek binlog file %d: %m\0A\00", align 1
@kfs_Hdr = common dso_local global %struct.TYPE_12__* null, align 8
@Binlog = common dso_local global %struct.TYPE_13__* null, align 8
@KFS_MAGIC = common dso_local global i64 0, align 8
@kfs_binlog = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"bad kfs header #0\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"bad kfs header #1\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"no first entry in binlog\0A\00", align 1
@log_start_pos = common dso_local global i32 0, align 4
@binlog_zipped = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"fatal: binlog file begins with wrong entry type %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"fatal: incomplete kfs file\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"fatal: binlog schema id mismatch.\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"fatal: binlog slice parameters mismatch.\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"fatal: first binlog file has non-zero log_pos %lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c"fatal: continuation binlog file log_pos mismatch: %lld != %lld\0A\00", align 1
@.str.10 = private unnamed_addr constant [63 x i8] c"fatal: binlog file prev_log_hash mismatch: %016llx != %016llx\0A\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"fatal: binlog file file_id_hash mismatch: %016llx != %016llx\0A\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"fatal: binlog file crc32 mismatch: %08x != %08x\0A\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"fatal: binlog file file_id_hash mismatch: %d != %d\0A\00", align 1
@cur_replica_hash = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [62 x i8] c"fatal: binlog file replica_hash mismatch: %016llx != %016llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @load_binlog_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_binlog_headers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.lev_start*, align 8
  store i32 %0, i32* %3, align 4
  %6 = call i32 @assert(i32 0)
  store i32 0, i32* @binlog_headers, align 4
  store i32 0, i32* @binlog_existed, align 4
  store %struct.lev_start* null, %struct.lev_start** @ST, align 8
  store %struct.lev_rotate_from* null, %struct.lev_rotate_from** @CONT, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** @KHDR, align 8
  store i32 0, i32* @cur_binlog_file_hash, align 4
  store i32 0, i32* @log_headers_size, align 4
  store i64 0, i64* @tot_crc32, align 8
  store i64 0, i64* @tot_crc32_pos, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @SEEK_SET, align 4
  %9 = call i32 @lseek(i32 %7, i32 0, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @stderr, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 -1, i32* %2, align 4
  br label %429

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kfs_Hdr, align 8
  %18 = call i32 @read(i32 %16, %struct.TYPE_12__* %17, i32 12288)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %429

22:                                               ; preds = %15
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Binlog, align 8
  %24 = icmp ne %struct.TYPE_13__* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Binlog, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** @Binlog, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kfs_Hdr, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @kfs_buffer_crypt(%struct.TYPE_13__* %32, %struct.TYPE_12__* %33, i32 %34, i64 0)
  br label %36

36:                                               ; preds = %31, %25, %22
  %37 = load i32, i32* %4, align 4
  %38 = icmp sge i32 %37, 4096
  br i1 %38, label %39, label %110

39:                                               ; preds = %36
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kfs_Hdr, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @KFS_MAGIC, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %110

46:                                               ; preds = %39
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kfs_Hdr, align 8
  %48 = call i64 @check_kfs_header_basic(%struct.TYPE_12__* %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kfs_Hdr, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @kfs_binlog, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %50, %46
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %429

60:                                               ; preds = %50
  %61 = load i32, i32* @binlog_headers, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @binlog_headers, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp sge i32 %63, 8192
  br i1 %64, label %65, label %109

65:                                               ; preds = %60
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kfs_Hdr, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i64 1
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @KFS_MAGIC, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %109

72:                                               ; preds = %65
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kfs_Hdr, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i64 1
  %75 = call i64 @check_kfs_header_basic(%struct.TYPE_12__* %74)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %72
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kfs_Hdr, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i64 1
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @kfs_binlog, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %77, %72
  %85 = load i32, i32* @stderr, align 4
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %429

87:                                               ; preds = %77
  %88 = load i32, i32* @binlog_headers, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* @binlog_headers, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kfs_Hdr, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i64 1
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kfs_Hdr, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %93, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %87
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kfs_Hdr, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i64 1
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kfs_Hdr, align 8
  %103 = call i32 @memcmp(%struct.TYPE_12__* %101, %struct.TYPE_12__* %102, i32 4096)
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  br label %108

108:                                              ; preds = %99, %87
  br label %109

109:                                              ; preds = %108, %65, %60
  br label %110

110:                                              ; preds = %109, %39, %36
  %111 = load i32, i32* @binlog_headers, align 4
  %112 = mul nsw i32 %111, 4096
  %113 = load i32, i32* %4, align 4
  %114 = sub nsw i32 %113, %112
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = icmp slt i32 %115, 4
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load i32, i32* @stderr, align 4
  %119 = call i32 (i32, i8*, ...) @fprintf(i32 %118, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %429

120:                                              ; preds = %110
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kfs_Hdr, align 8
  %122 = load i32, i32* @binlog_headers, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i64 %123
  %125 = bitcast %struct.TYPE_12__* %124 to %struct.lev_start*
  store %struct.lev_start* %125, %struct.lev_start** %5, align 8
  br label %126

126:                                              ; preds = %157, %120
  %127 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  %128 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  switch i32 %129, label %180 [
    i32 128, label %130
    i32 129, label %137
    i32 130, label %151
  ]

130:                                              ; preds = %126
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = icmp uge i64 %132, 36
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  %136 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  store %struct.lev_start* %136, %struct.lev_start** @ST, align 8
  store i32 0, i32* @log_start_pos, align 4
  br label %186

137:                                              ; preds = %126
  %138 = load i32, i32* %4, align 4
  %139 = sext i32 %138 to i64
  %140 = icmp uge i64 %139, 20
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  %143 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  %144 = bitcast %struct.lev_start* %143 to %struct.lev_rotate_from*
  store %struct.lev_rotate_from* %144, %struct.lev_rotate_from** @CONT, align 8
  %145 = load %struct.lev_rotate_from*, %struct.lev_rotate_from** @CONT, align 8
  %146 = getelementptr inbounds %struct.lev_rotate_from, %struct.lev_rotate_from* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* @log_start_pos, align 4
  %148 = load %struct.lev_rotate_from*, %struct.lev_rotate_from** @CONT, align 8
  %149 = getelementptr inbounds %struct.lev_rotate_from, %struct.lev_rotate_from* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* @cur_binlog_file_hash, align 4
  br label %186

151:                                              ; preds = %126
  %152 = load i32, i32* @binlog_headers, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* @binlog_zipped, align 4
  %156 = icmp ne i32 %155, 0
  br label %157

157:                                              ; preds = %154, %151
  %158 = phi i1 [ false, %151 ], [ %156, %154 ]
  %159 = zext i1 %158 to i32
  %160 = call i32 @assert(i32 %159)
  %161 = load i32, i32* %4, align 4
  %162 = sext i32 %161 to i64
  %163 = icmp uge i64 %162, 8
  %164 = zext i1 %163 to i32
  %165 = call i32 @assert(i32 %164)
  %166 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kfs_Hdr, align 8
  %168 = load i32, i32* @binlog_headers, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i64 %169
  %171 = bitcast %struct.TYPE_12__* %170 to %struct.lev_start*
  %172 = icmp eq %struct.lev_start* %166, %171
  %173 = zext i1 %172 to i32
  %174 = call i32 @assert(i32 %173)
  %175 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  %176 = bitcast %struct.lev_start* %175 to %struct.TYPE_11__*
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = inttoptr i64 %178 to %struct.lev_start*
  store %struct.lev_start* %179, %struct.lev_start** %5, align 8
  store i32 36, i32* %4, align 4
  br label %126

180:                                              ; preds = %126
  %181 = load i32, i32* @stderr, align 4
  %182 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  %183 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 (i32, i8*, ...) @fprintf(i32 %181, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %184)
  store i32 -1, i32* %2, align 4
  br label %429

186:                                              ; preds = %137, %130
  store i32 1, i32* @binlog_existed, align 4
  %187 = load i32, i32* @binlog_headers, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %198, label %189

189:                                              ; preds = %186
  store i32 0, i32* @log_headers_size, align 4
  %190 = load i32, i32* %3, align 4
  %191 = load i32, i32* @log_headers_size, align 4
  %192 = load i32, i32* @SEEK_SET, align 4
  %193 = call i32 @lseek(i32 %190, i32 %191, i32 %192)
  %194 = load i32, i32* @log_headers_size, align 4
  %195 = icmp eq i32 %193, %194
  %196 = zext i1 %195 to i32
  %197 = call i32 @assert(i32 %196)
  store i32 0, i32* %2, align 4
  br label %429

198:                                              ; preds = %186
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kfs_Hdr, align 8
  store %struct.TYPE_12__* %199, %struct.TYPE_12__** @KHDR, align 8
  %200 = load i32, i32* @binlog_headers, align 4
  %201 = icmp sgt i32 %200, 1
  br i1 %201, label %202, label %215

202:                                              ; preds = %198
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kfs_Hdr, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i64 1
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 2
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** @kfs_Hdr, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i64 0
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = icmp sgt i64 %206, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %202
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KHDR, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 1
  store %struct.TYPE_12__* %214, %struct.TYPE_12__** @KHDR, align 8
  br label %215

215:                                              ; preds = %212, %202, %198
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KHDR, align 8
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = load i32, i32* @binlog_headers, align 4
  %220 = mul nsw i32 %219, 4096
  %221 = sext i32 %220 to i64
  %222 = add nsw i64 %218, %221
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KHDR, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 4
  %225 = load i64, i64* %224, align 8
  %226 = icmp eq i64 %222, %225
  %227 = zext i1 %226 to i32
  %228 = call i32 @assert(i32 %227)
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KHDR, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 16
  %231 = load i64, i64* %230, align 8
  store i64 %231, i64* @tot_crc32, align 8
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KHDR, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 8
  %235 = sext i32 %234 to i64
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KHDR, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  %239 = add nsw i64 %235, %238
  store i64 %239, i64* @tot_crc32_pos, align 8
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KHDR, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 6
  %242 = load i32, i32* %241, align 4
  %243 = icmp eq i32 %242, -1
  br i1 %243, label %244, label %247

244:                                              ; preds = %215
  %245 = load i32, i32* @stderr, align 4
  %246 = call i32 (i32, i8*, ...) @fprintf(i32 %245, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %429

247:                                              ; preds = %215
  %248 = load %struct.lev_start*, %struct.lev_start** @ST, align 8
  %249 = icmp ne %struct.lev_start* %248, null
  br i1 %249, label %250, label %300

250:                                              ; preds = %247
  %251 = load %struct.lev_start*, %struct.lev_start** @ST, align 8
  %252 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KHDR, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 7
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %253, %256
  br i1 %257, label %258, label %261

258:                                              ; preds = %250
  %259 = load i32, i32* @stderr, align 4
  %260 = call i32 (i32, i8*, ...) @fprintf(i32 %259, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %429

261:                                              ; preds = %250
  %262 = load %struct.lev_start*, %struct.lev_start** @ST, align 8
  %263 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KHDR, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 8
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %264, %267
  br i1 %268, label %285, label %269

269:                                              ; preds = %261
  %270 = load %struct.lev_start*, %struct.lev_start** @ST, align 8
  %271 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %270, i32 0, i32 3
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KHDR, align 8
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 9
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %272, %275
  br i1 %276, label %285, label %277

277:                                              ; preds = %269
  %278 = load %struct.lev_start*, %struct.lev_start** @ST, align 8
  %279 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %278, i32 0, i32 4
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KHDR, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 10
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %280, %283
  br i1 %284, label %285, label %288

285:                                              ; preds = %277, %269, %261
  %286 = load i32, i32* @stderr, align 4
  %287 = call i32 (i32, i8*, ...) @fprintf(i32 %286, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %429

288:                                              ; preds = %277
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KHDR, align 8
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 5
  %291 = load i32, i32* %290, align 8
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %288
  %294 = load i32, i32* @stderr, align 4
  %295 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KHDR, align 8
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 5
  %297 = load i32, i32* %296, align 8
  %298 = call i32 (i32, i8*, ...) @fprintf(i32 %294, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i32 %297)
  store i32 -1, i32* %2, align 4
  br label %429

299:                                              ; preds = %288
  br label %300

300:                                              ; preds = %299, %247
  %301 = load %struct.lev_rotate_from*, %struct.lev_rotate_from** @CONT, align 8
  %302 = icmp ne %struct.lev_rotate_from* %301, null
  br i1 %302, label %303, label %389

303:                                              ; preds = %300
  %304 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KHDR, align 8
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 5
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.lev_rotate_from*, %struct.lev_rotate_from** @CONT, align 8
  %308 = getelementptr inbounds %struct.lev_rotate_from, %struct.lev_rotate_from* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = icmp ne i32 %306, %309
  br i1 %310, label %311, label %320

311:                                              ; preds = %303
  %312 = load i32, i32* @stderr, align 4
  %313 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KHDR, align 8
  %314 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i32 0, i32 5
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.lev_rotate_from*, %struct.lev_rotate_from** @CONT, align 8
  %317 = getelementptr inbounds %struct.lev_rotate_from, %struct.lev_rotate_from* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = call i32 (i32, i8*, ...) @fprintf(i32 %312, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.9, i64 0, i64 0), i32 %315, i32 %318)
  store i32 -1, i32* %2, align 4
  br label %429

320:                                              ; preds = %303
  %321 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KHDR, align 8
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %321, i32 0, i32 11
  %323 = load i32, i32* %322, align 8
  %324 = load %struct.lev_rotate_from*, %struct.lev_rotate_from** @CONT, align 8
  %325 = getelementptr inbounds %struct.lev_rotate_from, %struct.lev_rotate_from* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 4
  %327 = icmp ne i32 %323, %326
  br i1 %327, label %328, label %337

328:                                              ; preds = %320
  %329 = load i32, i32* @stderr, align 4
  %330 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KHDR, align 8
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i32 0, i32 11
  %332 = load i32, i32* %331, align 8
  %333 = load %struct.lev_rotate_from*, %struct.lev_rotate_from** @CONT, align 8
  %334 = getelementptr inbounds %struct.lev_rotate_from, %struct.lev_rotate_from* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 4
  %336 = call i32 (i32, i8*, ...) @fprintf(i32 %329, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.10, i64 0, i64 0), i32 %332, i32 %335)
  store i32 -1, i32* %2, align 4
  br label %429

337:                                              ; preds = %320
  %338 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KHDR, align 8
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %338, i32 0, i32 12
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.lev_rotate_from*, %struct.lev_rotate_from** @CONT, align 8
  %342 = getelementptr inbounds %struct.lev_rotate_from, %struct.lev_rotate_from* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = icmp ne i32 %340, %343
  br i1 %344, label %345, label %354

345:                                              ; preds = %337
  %346 = load i32, i32* @stderr, align 4
  %347 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KHDR, align 8
  %348 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %347, i32 0, i32 12
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.lev_rotate_from*, %struct.lev_rotate_from** @CONT, align 8
  %351 = getelementptr inbounds %struct.lev_rotate_from, %struct.lev_rotate_from* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = call i32 (i32, i8*, ...) @fprintf(i32 %346, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11, i64 0, i64 0), i32 %349, i32 %352)
  store i32 -1, i32* %2, align 4
  br label %429

354:                                              ; preds = %337
  %355 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KHDR, align 8
  %356 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %355, i32 0, i32 13
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.lev_rotate_from*, %struct.lev_rotate_from** @CONT, align 8
  %359 = getelementptr inbounds %struct.lev_rotate_from, %struct.lev_rotate_from* %358, i32 0, i32 3
  %360 = load i32, i32* %359, align 4
  %361 = icmp ne i32 %357, %360
  br i1 %361, label %362, label %371

362:                                              ; preds = %354
  %363 = load i32, i32* @stderr, align 4
  %364 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KHDR, align 8
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %364, i32 0, i32 13
  %366 = load i32, i32* %365, align 8
  %367 = load %struct.lev_rotate_from*, %struct.lev_rotate_from** @CONT, align 8
  %368 = getelementptr inbounds %struct.lev_rotate_from, %struct.lev_rotate_from* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 4
  %370 = call i32 (i32, i8*, ...) @fprintf(i32 %363, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), i32 %366, i32 %369)
  store i32 -1, i32* %2, align 4
  br label %429

371:                                              ; preds = %354
  %372 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KHDR, align 8
  %373 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %372, i32 0, i32 14
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.lev_rotate_from*, %struct.lev_rotate_from** @CONT, align 8
  %376 = getelementptr inbounds %struct.lev_rotate_from, %struct.lev_rotate_from* %375, i32 0, i32 4
  %377 = load i32, i32* %376, align 4
  %378 = icmp ne i32 %374, %377
  br i1 %378, label %379, label %388

379:                                              ; preds = %371
  %380 = load i32, i32* @stderr, align 4
  %381 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KHDR, align 8
  %382 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %381, i32 0, i32 14
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.lev_rotate_from*, %struct.lev_rotate_from** @CONT, align 8
  %385 = getelementptr inbounds %struct.lev_rotate_from, %struct.lev_rotate_from* %384, i32 0, i32 4
  %386 = load i32, i32* %385, align 4
  %387 = call i32 (i32, i8*, ...) @fprintf(i32 %380, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i64 0, i64 0), i32 %383, i32 %386)
  store i32 -1, i32* %2, align 4
  br label %429

388:                                              ; preds = %371
  br label %389

389:                                              ; preds = %388, %300
  %390 = load i32, i32* @binlog_headers, align 4
  %391 = mul nsw i32 %390, 4096
  store i32 %391, i32* @log_headers_size, align 4
  %392 = load i32, i32* %3, align 4
  %393 = load i32, i32* @log_headers_size, align 4
  %394 = load i32, i32* @SEEK_SET, align 4
  %395 = call i32 @lseek(i32 %392, i32 %393, i32 %394)
  %396 = load i32, i32* @log_headers_size, align 4
  %397 = icmp eq i32 %395, %396
  %398 = zext i1 %397 to i32
  %399 = call i32 @assert(i32 %398)
  %400 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KHDR, align 8
  %401 = icmp ne %struct.TYPE_12__* %400, null
  br i1 %401, label %402, label %427

402:                                              ; preds = %389
  %403 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KHDR, align 8
  %404 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %403, i32 0, i32 12
  %405 = load i32, i32* %404, align 4
  store i32 %405, i32* @cur_binlog_file_hash, align 4
  %406 = load i32, i32* @cur_replica_hash, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %412, label %408

408:                                              ; preds = %402
  %409 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KHDR, align 8
  %410 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %409, i32 0, i32 15
  %411 = load i32, i32* %410, align 8
  store i32 %411, i32* @cur_replica_hash, align 4
  br label %426

412:                                              ; preds = %402
  %413 = load i32, i32* @cur_replica_hash, align 4
  %414 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KHDR, align 8
  %415 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %414, i32 0, i32 15
  %416 = load i32, i32* %415, align 8
  %417 = icmp ne i32 %413, %416
  br i1 %417, label %418, label %425

418:                                              ; preds = %412
  %419 = load i32, i32* @stderr, align 4
  %420 = load %struct.TYPE_12__*, %struct.TYPE_12__** @KHDR, align 8
  %421 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %420, i32 0, i32 15
  %422 = load i32, i32* %421, align 8
  %423 = load i32, i32* @cur_replica_hash, align 4
  %424 = call i32 (i32, i8*, ...) @fprintf(i32 %419, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.14, i64 0, i64 0), i32 %422, i32 %423)
  store i32 -1, i32* %2, align 4
  br label %429

425:                                              ; preds = %412
  br label %426

426:                                              ; preds = %425, %408
  br label %427

427:                                              ; preds = %426, %389
  %428 = load i32, i32* @binlog_headers, align 4
  store i32 %428, i32* %2, align 4
  br label %429

429:                                              ; preds = %427, %418, %379, %362, %345, %328, %311, %293, %285, %258, %244, %189, %180, %117, %84, %57, %21, %11
  %430 = load i32, i32* %2, align 4
  ret i32 %430
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @read(i32, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @kfs_buffer_crypt(%struct.TYPE_13__*, %struct.TYPE_12__*, i32, i64) #1

declare dso_local i64 @check_kfs_header_basic(%struct.TYPE_12__*) #1

declare dso_local i32 @memcmp(%struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
