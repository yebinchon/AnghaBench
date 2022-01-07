; ModuleID = '/home/carl/AnghaBench/kphp-kdb/money/extr_money-import-dump.c_load_binlog_headers.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/money/extr_money-import-dump.c_load_binlog_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i32 }
%struct.lev_start = type { i32, i64, i64, i64, i64 }
%struct.lev_rotate_from = type { i64, i64 }

@kfs_Hdr = common dso_local global %struct.TYPE_7__* null, align 8
@binlog_headers = common dso_local global i32 0, align 4
@binlog_existed = common dso_local global i32 0, align 4
@ST = common dso_local global %struct.lev_start* null, align 8
@CONT = common dso_local global %struct.lev_rotate_from* null, align 8
@KHDR = common dso_local global %struct.TYPE_7__* null, align 8
@KFS_MAGIC = common dso_local global i64 0, align 8
@kfs_binlog = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"bad kfs header #0\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"bad kfs header #1\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"no first entry in binlog\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"fatal: binlog file begins with wrong entry type %08x\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@tot_crc32 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"fatal: incomplete kfs file\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"fatal: binlog schema id mismatch.\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"fatal: binlog slice parameters mismatch.\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"fatal: first binlog file has non-zero log_pos %lld\0A\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"fatal: continuation binlog file log_pos mismatch: %lld != %lld\0A\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"fatal: binlog file prev_log_hash mismatch: %016llx != %016llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_binlog_headers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.lev_start*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** @kfs_Hdr, align 8
  %8 = call i32 @read(i32 %6, %struct.TYPE_7__* %7, i32 12288)
  store i32 %8, i32* %4, align 4
  %9 = call i32 @assert(i32 0)
  store i32 0, i32* @binlog_headers, align 4
  store i32 0, i32* @binlog_existed, align 4
  store %struct.lev_start* null, %struct.lev_start** @ST, align 8
  store %struct.lev_rotate_from* null, %struct.lev_rotate_from** @CONT, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** @KHDR, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %275

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp sge i32 %14, 4096
  br i1 %15, label %16, label %87

16:                                               ; preds = %13
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @kfs_Hdr, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @KFS_MAGIC, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %87

23:                                               ; preds = %16
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** @kfs_Hdr, align 8
  %25 = call i64 @check_kfs_header_basic(%struct.TYPE_7__* %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @kfs_Hdr, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @kfs_binlog, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %27, %23
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %275

37:                                               ; preds = %27
  %38 = load i32, i32* @binlog_headers, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @binlog_headers, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp sge i32 %40, 8192
  br i1 %41, label %42, label %86

42:                                               ; preds = %37
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** @kfs_Hdr, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @KFS_MAGIC, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %86

49:                                               ; preds = %42
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** @kfs_Hdr, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 1
  %52 = call i64 @check_kfs_header_basic(%struct.TYPE_7__* %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %49
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** @kfs_Hdr, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @kfs_binlog, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %54, %49
  %62 = load i32, i32* @stderr, align 4
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %275

64:                                               ; preds = %54
  %65 = load i32, i32* @binlog_headers, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @binlog_headers, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** @kfs_Hdr, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** @kfs_Hdr, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %70, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %64
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** @kfs_Hdr, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 1
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** @kfs_Hdr, align 8
  %80 = call i32 @memcmp(%struct.TYPE_7__* %78, %struct.TYPE_7__* %79, i32 4096)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  br label %85

85:                                               ; preds = %76, %64
  br label %86

86:                                               ; preds = %85, %42, %37
  br label %87

87:                                               ; preds = %86, %16, %13
  %88 = load i32, i32* @binlog_headers, align 4
  %89 = mul nsw i32 %88, 4096
  %90 = load i32, i32* %4, align 4
  %91 = sub nsw i32 %90, %89
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp slt i32 %92, 4
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load i32, i32* @stderr, align 4
  %96 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %275

97:                                               ; preds = %87
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** @kfs_Hdr, align 8
  %99 = load i32, i32* @binlog_headers, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i64 %100
  %102 = bitcast %struct.TYPE_7__* %101 to %struct.lev_start*
  store %struct.lev_start* %102, %struct.lev_start** %5, align 8
  %103 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  %104 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  switch i32 %105, label %121 [
    i32 128, label %106
    i32 129, label %113
  ]

106:                                              ; preds = %97
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = icmp uge i64 %108, 40
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  store %struct.lev_start* %112, %struct.lev_start** @ST, align 8
  br label %127

113:                                              ; preds = %97
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = icmp uge i64 %115, 16
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  %119 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  %120 = bitcast %struct.lev_start* %119 to %struct.lev_rotate_from*
  store %struct.lev_rotate_from* %120, %struct.lev_rotate_from** @CONT, align 8
  br label %127

121:                                              ; preds = %97
  %122 = load i32, i32* @stderr, align 4
  %123 = load %struct.lev_start*, %struct.lev_start** %5, align 8
  %124 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (i32, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %125)
  store i32 -1, i32* %2, align 4
  br label %275

127:                                              ; preds = %113, %106
  store i32 1, i32* @binlog_existed, align 4
  %128 = load i32, i32* @binlog_headers, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %127
  store i32 0, i32* %2, align 4
  br label %275

131:                                              ; preds = %127
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** @kfs_Hdr, align 8
  store %struct.TYPE_7__* %132, %struct.TYPE_7__** @KHDR, align 8
  %133 = load i32, i32* @binlog_headers, align 4
  %134 = icmp sgt i32 %133, 1
  br i1 %134, label %135, label %148

135:                                              ; preds = %131
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** @kfs_Hdr, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i64 1
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** @kfs_Hdr, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i64 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp sgt i64 %139, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %135
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** @KHDR, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 1
  store %struct.TYPE_7__* %147, %struct.TYPE_7__** @KHDR, align 8
  br label %148

148:                                              ; preds = %145, %135, %131
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** @KHDR, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* @binlog_headers, align 4
  %153 = mul nsw i32 %152, 4096
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %151, %154
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** @KHDR, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %155, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @assert(i32 %160)
  %162 = load i32, i32* %3, align 4
  %163 = load i32, i32* @SEEK_END, align 4
  %164 = call i64 @lseek(i32 %162, i32 0, i32 %163)
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** @KHDR, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %164, %167
  %169 = zext i1 %168 to i32
  %170 = call i32 @assert(i32 %169)
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** @KHDR, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 12
  %173 = load i32, i32* %172, align 8
  %174 = xor i32 %173, -1
  store i32 %174, i32* @tot_crc32, align 4
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** @KHDR, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, -1
  br i1 %178, label %179, label %182

179:                                              ; preds = %148
  %180 = load i32, i32* @stderr, align 4
  %181 = call i32 (i32, i8*, ...) @fprintf(i32 %180, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %275

182:                                              ; preds = %148
  %183 = load %struct.lev_start*, %struct.lev_start** @ST, align 8
  %184 = icmp ne %struct.lev_start* %183, null
  br i1 %184, label %185, label %235

185:                                              ; preds = %182
  %186 = load %struct.lev_start*, %struct.lev_start** @ST, align 8
  %187 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** @KHDR, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 6
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %188, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %185
  %194 = load i32, i32* @stderr, align 4
  %195 = call i32 (i32, i8*, ...) @fprintf(i32 %194, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %275

196:                                              ; preds = %185
  %197 = load %struct.lev_start*, %struct.lev_start** @ST, align 8
  %198 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** @KHDR, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 7
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %199, %202
  br i1 %203, label %220, label %204

204:                                              ; preds = %196
  %205 = load %struct.lev_start*, %struct.lev_start** @ST, align 8
  %206 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** @KHDR, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 8
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %207, %210
  br i1 %211, label %220, label %212

212:                                              ; preds = %204
  %213 = load %struct.lev_start*, %struct.lev_start** @ST, align 8
  %214 = getelementptr inbounds %struct.lev_start, %struct.lev_start* %213, i32 0, i32 4
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** @KHDR, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 9
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %215, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %212, %204, %196
  %221 = load i32, i32* @stderr, align 4
  %222 = call i32 (i32, i8*, ...) @fprintf(i32 %221, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %275

223:                                              ; preds = %212
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** @KHDR, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 10
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %223
  %229 = load i32, i32* @stderr, align 4
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** @KHDR, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 10
  %232 = load i64, i64* %231, align 8
  %233 = call i32 (i32, i8*, ...) @fprintf(i32 %229, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i64 %232)
  store i32 -1, i32* %2, align 4
  br label %275

234:                                              ; preds = %223
  br label %235

235:                                              ; preds = %234, %182
  %236 = load %struct.lev_rotate_from*, %struct.lev_rotate_from** @CONT, align 8
  %237 = icmp ne %struct.lev_rotate_from* %236, null
  br i1 %237, label %238, label %273

238:                                              ; preds = %235
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** @KHDR, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 10
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.lev_rotate_from*, %struct.lev_rotate_from** @CONT, align 8
  %243 = getelementptr inbounds %struct.lev_rotate_from, %struct.lev_rotate_from* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %241, %244
  br i1 %245, label %246, label %255

246:                                              ; preds = %238
  %247 = load i32, i32* @stderr, align 4
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** @KHDR, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 10
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.lev_rotate_from*, %struct.lev_rotate_from** @CONT, align 8
  %252 = getelementptr inbounds %struct.lev_rotate_from, %struct.lev_rotate_from* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = call i32 (i32, i8*, ...) @fprintf(i32 %247, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0), i64 %250, i64 %253)
  store i32 -1, i32* %2, align 4
  br label %275

255:                                              ; preds = %238
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** @KHDR, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 11
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.lev_rotate_from*, %struct.lev_rotate_from** @CONT, align 8
  %260 = getelementptr inbounds %struct.lev_rotate_from, %struct.lev_rotate_from* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %258, %261
  br i1 %262, label %263, label %272

263:                                              ; preds = %255
  %264 = load i32, i32* @stderr, align 4
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** @KHDR, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 11
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.lev_rotate_from*, %struct.lev_rotate_from** @CONT, align 8
  %269 = getelementptr inbounds %struct.lev_rotate_from, %struct.lev_rotate_from* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = call i32 (i32, i8*, ...) @fprintf(i32 %264, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i64 0, i64 0), i64 %267, i64 %270)
  store i32 -1, i32* %2, align 4
  br label %275

272:                                              ; preds = %255
  br label %273

273:                                              ; preds = %272, %235
  %274 = load i32, i32* @binlog_headers, align 4
  store i32 %274, i32* %2, align 4
  br label %275

275:                                              ; preds = %273, %263, %246, %228, %220, %193, %179, %130, %121, %94, %61, %34, %12
  %276 = load i32, i32* %2, align 4
  ret i32 %276
}

declare dso_local i32 @read(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @check_kfs_header_basic(%struct.TYPE_7__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @memcmp(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
