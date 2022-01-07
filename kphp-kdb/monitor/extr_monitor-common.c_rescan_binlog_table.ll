; ModuleID = '/home/carl/AnghaBench/kphp-kdb/monitor/extr_monitor-common.c_rescan_binlog_table.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/monitor/extr_monitor-common.c_rescan_binlog_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_13__ = type { i32, i64, i32 }
%struct.proc_data = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.binlog_timepos_heap_entry = type { i32, i64, i8*, %struct.TYPE_12__, i64, i64 }
%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"monitor: rescanning binlog table\0A\00", align 1
@am_monitor = common dso_local global i64 0, align 8
@CData = common dso_local global %struct.TYPE_14__* null, align 8
@mes_binlogs_num = common dso_local global i32 0, align 4
@mes_binlogs = common dso_local global %struct.TYPE_13__* null, align 8
@active_pnum = common dso_local global i32 0, align 4
@active_pids = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [78 x i8] c"monitor: updating binlog info for process %d, binlog name hash %016llx to %d\0A\00", align 1
@MES_BINLOGS_MAX = common dso_local global i32 0, align 4
@BINLOGPOS_QUEUE_MAGIC = common dso_local global i64 0, align 8
@cdata_my_pid = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [81 x i8] c"monitor: allocating binlog info (process %d) for binlog name hash %016llx at %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"monitor: forgetting unused binlog name hash %016llx (data at %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"monitor: %d active binlogs found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rescan_binlog_table() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.proc_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.binlog_timepos_heap_entry*, align 8
  %11 = alloca %struct.binlog_timepos_heap_entry*, align 8
  %12 = alloca i32, align 4
  %13 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* @am_monitor, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %0
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** @CData, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %16, %0
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %31, %20
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @mes_binlogs_num, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mes_binlogs, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  br label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %21

34:                                               ; preds = %21
  store i32 0, i32* %1, align 4
  br label %35

35:                                               ; preds = %281, %34
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* @active_pnum, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %284

39:                                               ; preds = %35
  %40 = load i32*, i32** @active_pids, align 8
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.proc_data* @get_proc_status(i32 %44)
  store %struct.proc_data* %45, %struct.proc_data** %6, align 8
  %46 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %47 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %46, i32 0, i32 1
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %39
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %57 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %56, i32 0, i32 1
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i64 1
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %55, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %54, %39
  br label %281

64:                                               ; preds = %54
  store i32 -1, i32* %3, align 4
  %65 = load i32, i32* @mes_binlogs_num, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %88, %64
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %3, align 4
  %69 = sub nsw i32 %67, %68
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %89

71:                                               ; preds = %66
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %72, %73
  %75 = ashr i32 %74, 1
  store i32 %75, i32* %5, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mes_binlogs, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = icmp sle i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %71
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %3, align 4
  br label %88

86:                                               ; preds = %71
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %86, %84
  br label %66

89:                                               ; preds = %66
  %90 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %91 = getelementptr inbounds %struct.proc_data, %struct.proc_data* %90, i32 0, i32 0
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %3, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %169

98:                                               ; preds = %89
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mes_binlogs, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %7, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %169

107:                                              ; preds = %98
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mes_binlogs, align 8
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mes_binlogs, align 8
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %150

123:                                              ; preds = %107
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %123
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %126
  %131 = load i64, i64* @am_monitor, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @set_binlog_data_offset(%struct.proc_data* %134, i32 %135)
  br label %137

137:                                              ; preds = %133, %130, %126
  br label %281

138:                                              ; preds = %123
  %139 = load i64, i64* @am_monitor, align 8
  %140 = icmp ne i64 %139, 0
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  %144 = load i32, i32* %8, align 4
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mes_binlogs, align 8
  %146 = load i32, i32* %3, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 2
  store i32 %144, i32* %149, align 8
  br label %168

150:                                              ; preds = %107
  %151 = load i64, i64* @am_monitor, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %150
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @assert(i32 %154)
  %156 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @set_binlog_data_offset(%struct.proc_data* %156, i32 %157)
  %159 = load i32*, i32** @active_pids, align 8
  %160 = load i32, i32* %1, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i64, i64* %7, align 8
  %165 = load i32, i32* %9, align 4
  %166 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %163, i64 %164, i32 %165)
  br label %167

167:                                              ; preds = %153, %150
  br label %168

168:                                              ; preds = %167, %138
  br label %280

169:                                              ; preds = %98, %89
  %170 = load i32, i32* @mes_binlogs_num, align 4
  %171 = load i32, i32* @MES_BINLOGS_MAX, align 4
  %172 = icmp slt i32 %170, %171
  %173 = zext i1 %172 to i32
  %174 = call i32 @assert(i32 %173)
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mes_binlogs, align 8
  %176 = load i32, i32* %4, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i64 1
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mes_binlogs, align 8
  %181 = load i32, i32* %4, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i64 %182
  %184 = load i32, i32* @mes_binlogs_num, align 4
  %185 = load i32, i32* %4, align 4
  %186 = sub nsw i32 %184, %185
  %187 = sext i32 %186 to i64
  %188 = mul i64 %187, 4
  %189 = trunc i64 %188 to i32
  %190 = call i32 @memmove(%struct.TYPE_13__* %179, %struct.TYPE_13__* %183, i32 %189)
  %191 = load i32, i32* @mes_binlogs_num, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* @mes_binlogs_num, align 4
  %193 = load i64, i64* %7, align 8
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mes_binlogs, align 8
  %195 = load i32, i32* %4, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 1
  store i64 %193, i64* %198, align 8
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mes_binlogs, align 8
  %200 = load i32, i32* %4, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  store i32 1, i32* %203, align 8
  %204 = load i32, i32* %8, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %228

206:                                              ; preds = %169
  %207 = load i32, i32* %8, align 4
  %208 = call %struct.binlog_timepos_heap_entry* @conv_mon_ptr(i32 %207)
  store %struct.binlog_timepos_heap_entry* %208, %struct.binlog_timepos_heap_entry** %10, align 8
  %209 = load %struct.binlog_timepos_heap_entry*, %struct.binlog_timepos_heap_entry** %10, align 8
  %210 = icmp ne %struct.binlog_timepos_heap_entry* %209, null
  br i1 %210, label %211, label %218

211:                                              ; preds = %206
  %212 = load %struct.binlog_timepos_heap_entry*, %struct.binlog_timepos_heap_entry** %10, align 8
  %213 = getelementptr inbounds %struct.binlog_timepos_heap_entry, %struct.binlog_timepos_heap_entry* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @BINLOGPOS_QUEUE_MAGIC, align 8
  %217 = icmp ne i64 %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %211, %206
  store i32 0, i32* %8, align 4
  br label %227

219:                                              ; preds = %211
  %220 = load i64, i64* @am_monitor, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %219
  %223 = load i8*, i8** @cdata_my_pid, align 8
  %224 = load %struct.binlog_timepos_heap_entry*, %struct.binlog_timepos_heap_entry** %10, align 8
  %225 = getelementptr inbounds %struct.binlog_timepos_heap_entry, %struct.binlog_timepos_heap_entry* %224, i32 0, i32 2
  store i8* %223, i8** %225, align 8
  br label %226

226:                                              ; preds = %222, %219
  br label %227

227:                                              ; preds = %226, %218
  br label %228

228:                                              ; preds = %227, %169
  %229 = load i32, i32* %8, align 4
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mes_binlogs, align 8
  %231 = load i32, i32* %4, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 2
  store i32 %229, i32* %234, align 8
  %235 = load i64, i64* @am_monitor, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %279

237:                                              ; preds = %228
  %238 = load i32, i32* %8, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %278, label %240

240:                                              ; preds = %237
  %241 = call i32 @mon_heap_alloc(i32 48)
  store i32 %241, i32* %8, align 4
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mes_binlogs, align 8
  %243 = load i32, i32* %4, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 2
  store i32 %241, i32* %246, align 8
  %247 = load i32, i32* %8, align 4
  %248 = call i32 @assert(i32 %247)
  %249 = load i32, i32* %8, align 4
  %250 = call %struct.binlog_timepos_heap_entry* @conv_mon_ptr(i32 %249)
  store %struct.binlog_timepos_heap_entry* %250, %struct.binlog_timepos_heap_entry** %11, align 8
  %251 = load %struct.binlog_timepos_heap_entry*, %struct.binlog_timepos_heap_entry** %11, align 8
  %252 = getelementptr inbounds %struct.binlog_timepos_heap_entry, %struct.binlog_timepos_heap_entry* %251, i32 0, i32 0
  store i32 1, i32* %252, align 8
  %253 = load i64, i64* %7, align 8
  %254 = load %struct.binlog_timepos_heap_entry*, %struct.binlog_timepos_heap_entry** %11, align 8
  %255 = getelementptr inbounds %struct.binlog_timepos_heap_entry, %struct.binlog_timepos_heap_entry* %254, i32 0, i32 1
  store i64 %253, i64* %255, align 8
  %256 = load %struct.binlog_timepos_heap_entry*, %struct.binlog_timepos_heap_entry** %11, align 8
  %257 = getelementptr inbounds %struct.binlog_timepos_heap_entry, %struct.binlog_timepos_heap_entry* %256, i32 0, i32 4
  store i64 0, i64* %257, align 8
  %258 = load %struct.binlog_timepos_heap_entry*, %struct.binlog_timepos_heap_entry** %11, align 8
  %259 = getelementptr inbounds %struct.binlog_timepos_heap_entry, %struct.binlog_timepos_heap_entry* %258, i32 0, i32 5
  store i64 0, i64* %259, align 8
  %260 = load i64, i64* @BINLOGPOS_QUEUE_MAGIC, align 8
  %261 = load %struct.binlog_timepos_heap_entry*, %struct.binlog_timepos_heap_entry** %11, align 8
  %262 = getelementptr inbounds %struct.binlog_timepos_heap_entry, %struct.binlog_timepos_heap_entry* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 0
  store i64 %260, i64* %263, align 8
  %264 = load i8*, i8** @cdata_my_pid, align 8
  %265 = load %struct.binlog_timepos_heap_entry*, %struct.binlog_timepos_heap_entry** %11, align 8
  %266 = getelementptr inbounds %struct.binlog_timepos_heap_entry, %struct.binlog_timepos_heap_entry* %265, i32 0, i32 2
  store i8* %264, i8** %266, align 8
  %267 = load %struct.proc_data*, %struct.proc_data** %6, align 8
  %268 = load i32, i32* %8, align 4
  %269 = call i32 @set_binlog_data_offset(%struct.proc_data* %267, i32 %268)
  %270 = load i32*, i32** @active_pids, align 8
  %271 = load i32, i32* %1, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = load i64, i64* %7, align 8
  %276 = load i32, i32* %8, align 4
  %277 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i32 %274, i64 %275, i32 %276)
  br label %278

278:                                              ; preds = %240, %237
  br label %279

279:                                              ; preds = %278, %228
  br label %280

280:                                              ; preds = %279, %168
  br label %281

281:                                              ; preds = %280, %137, %63
  %282 = load i32, i32* %1, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %1, align 4
  br label %35

284:                                              ; preds = %35
  store i32 0, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %285

285:                                              ; preds = %339, %284
  %286 = load i32, i32* %1, align 4
  %287 = load i32, i32* @mes_binlogs_num, align 4
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %289, label %342

289:                                              ; preds = %285
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mes_binlogs, align 8
  %291 = load i32, i32* %1, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %320, label %297

297:                                              ; preds = %289
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mes_binlogs, align 8
  %299 = load i32, i32* %1, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  store i32 %303, i32* %12, align 4
  %304 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mes_binlogs, align 8
  %305 = load i32, i32* %1, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %307, i32 0, i32 1
  %309 = load i64, i64* %308, align 8
  %310 = load i32, i32* %12, align 4
  %311 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i64 %309, i32 %310)
  %312 = load i64, i64* @am_monitor, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %297
  %315 = load i32, i32* %12, align 4
  %316 = call i32 @assert(i32 %315)
  %317 = load i32, i32* %12, align 4
  %318 = call i32 @mon_heap_free(i32 %317)
  br label %319

319:                                              ; preds = %314, %297
  br label %338

320:                                              ; preds = %289
  %321 = load i32, i32* %1, align 4
  %322 = load i32, i32* %2, align 4
  %323 = icmp ne i32 %321, %322
  br i1 %323, label %324, label %335

324:                                              ; preds = %320
  %325 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mes_binlogs, align 8
  %326 = load i32, i32* %2, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %325, i64 %327
  %329 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mes_binlogs, align 8
  %330 = load i32, i32* %1, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %329, i64 %331
  %333 = bitcast %struct.TYPE_13__* %328 to i8*
  %334 = bitcast %struct.TYPE_13__* %332 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %333, i8* align 8 %334, i64 24, i1 false)
  br label %335

335:                                              ; preds = %324, %320
  %336 = load i32, i32* %2, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %2, align 4
  br label %338

338:                                              ; preds = %335, %319
  br label %339

339:                                              ; preds = %338
  %340 = load i32, i32* %1, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %1, align 4
  br label %285

342:                                              ; preds = %285
  %343 = load i32, i32* %2, align 4
  %344 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %343)
  %345 = load i32, i32* %2, align 4
  store i32 %345, i32* @mes_binlogs_num, align 4
  ret i32 %345
}

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local %struct.proc_data* @get_proc_status(i32) #1

declare dso_local i32 @set_binlog_data_offset(%struct.proc_data*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memmove(%struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

declare dso_local %struct.binlog_timepos_heap_entry* @conv_mon_ptr(i32) #1

declare dso_local i32 @mon_heap_alloc(i32) #1

declare dso_local i32 @mon_heap_free(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
