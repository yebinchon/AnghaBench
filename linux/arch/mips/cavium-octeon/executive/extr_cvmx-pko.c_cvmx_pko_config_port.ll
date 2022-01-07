; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-pko.c_cvmx_pko_config_port.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/cavium-octeon/executive/extr_cvmx-pko.c_cvmx_pko_config_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cvmx_pko_mem_queue_ptrs = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%union.cvmx_pko_reg_queue_ptrs1 = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@OCTEON_CN68XX = common dso_local global i32 0, align 4
@CVMX_PKO_SUCCESS = common dso_local global i32 0, align 4
@CVMX_PKO_NUM_OUTPUT_PORTS = common dso_local global i64 0, align 8
@CVMX_PKO_MEM_QUEUE_PTRS_ILLEGAL_PID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"ERROR: cvmx_pko_config_port: Invalid port %llu\0A\00", align 1
@CVMX_PKO_INVALID_PORT = common dso_local global i32 0, align 4
@CVMX_PKO_MAX_OUTPUT_QUEUES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"ERROR: cvmx_pko_config_port: Invalid queue range %llu\0A\00", align 1
@CVMX_PKO_INVALID_QUEUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [115 x i8] c"ERROR: cvmx_pko_config_port: Static priority queues aren't contiguous or don't start at base queue. q: %d, eq: %d\0A\00", align 1
@CVMX_PKO_INVALID_PRIORITY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [87 x i8] c"ERROR: cvmx_pko_config_port: Static priority queues don't start at base queue. sq: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"ERROR: cvmx_pko_config_port: Invalid priority %llu\0A\00", align 1
@CVMX_PKO_MAX_QUEUE_DEPTH = common dso_local global i32 0, align 4
@CVMX_FPA_OUTPUT_BUFFER_POOL = common dso_local global i32 0, align 4
@CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE = common dso_local global i64 0, align 8
@CVMX_PKO_COMMAND_BUFFER_SIZE_ADJUST = common dso_local global i32 0, align 4
@CVMX_CMD_QUEUE_SUCCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [64 x i8] c"ERROR: cvmx_pko_config_port: Unable to allocate output buffer.\0A\00", align 1
@CVMX_PKO_NO_MEMORY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"ERROR: cvmx_pko_config_port: Port already setup.\0A\00", align 1
@CVMX_PKO_PORT_ALREADY_SETUP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [67 x i8] c"ERROR: cvmx_pko_config_port: Command queue initialization failed.\0A\00", align 1
@CVMX_PKO_CMD_QUEUE_INIT_ERROR = common dso_local global i32 0, align 4
@CVMX_SYNCWS = common dso_local global i32 0, align 4
@OCTEON_CN3XXX = common dso_local global i32 0, align 4
@CVMX_PKO_REG_QUEUE_PTRS1 = common dso_local global i32 0, align 4
@CVMX_PKO_MEM_QUEUE_PTRS = common dso_local global i32 0, align 4
@CVMX_PKO_QUEUES_PER_PORT_INTERFACE0 = common dso_local global i32 0, align 4
@CVMX_PKO_QUEUES_PER_PORT_INTERFACE1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_pko_config_port(i64 %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %union.cvmx_pko_mem_queue_ptrs, align 8
  %13 = alloca %union.cvmx_pko_reg_queue_ptrs1, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  %18 = load i32, i32* @OCTEON_CN68XX, align 4
  %19 = call i64 @OCTEON_IS_MODEL(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @CVMX_PKO_SUCCESS, align 4
  store i32 %22, i32* %5, align 4
  br label %308

23:                                               ; preds = %4
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @CVMX_PKO_NUM_OUTPUT_PORTS, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @CVMX_PKO_MEM_QUEUE_PTRS_ILLEGAL_PID, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i64, i64* %6, align 8
  %33 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* @CVMX_PKO_INVALID_PORT, align 4
  store i32 %34, i32* %5, align 4
  br label %308

35:                                               ; preds = %27, %23
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i64, i64* @CVMX_PKO_MAX_OUTPUT_QUEUES, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  %46 = load i32, i32* @CVMX_PKO_INVALID_QUEUE, align 4
  store i32 %46, i32* %5, align 4
  br label %308

47:                                               ; preds = %35
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @CVMX_PKO_MEM_QUEUE_PTRS_ILLEGAL_PID, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %134

51:                                               ; preds = %47
  store i64 0, i64* %11, align 8
  br label %52

52:                                               ; preds = %123, %51
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %126

56:                                               ; preds = %52
  %57 = load i32, i32* %14, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i64*, i64** %9, align 8
  %61 = load i64, i64* %11, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 128
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i64, i64* %11, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %14, align 4
  br label %68

68:                                               ; preds = %65, %59, %56
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, -1
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = load i32, i32* %15, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = load i64*, i64** %9, align 8
  %76 = load i64, i64* %11, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 128
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load i64, i64* %11, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i64, i64* %11, align 8
  %85 = sub nsw i64 %84, 1
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %15, align 4
  br label %102

87:                                               ; preds = %80, %74, %71, %68
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, -1
  br i1 %89, label %90, label %101

90:                                               ; preds = %87
  %91 = load i32, i32* %15, align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* %8, align 8
  %96 = sub nsw i64 %95, 1
  %97 = icmp eq i64 %94, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i64, i64* %11, align 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %15, align 4
  br label %101

101:                                              ; preds = %98, %93, %90, %87
  br label %102

102:                                              ; preds = %101, %83
  %103 = load i32, i32* %15, align 4
  %104 = icmp ne i32 %103, -1
  br i1 %104, label %105, label %122

105:                                              ; preds = %102
  %106 = load i64, i64* %11, align 8
  %107 = trunc i64 %106 to i32
  %108 = load i32, i32* %15, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = load i64*, i64** %9, align 8
  %112 = load i64, i64* %11, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 128
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load i64, i64* %11, align 8
  %118 = trunc i64 %117 to i32
  %119 = load i32, i32* %15, align 4
  %120 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.2, i64 0, i64 0), i32 %118, i32 %119)
  %121 = load i32, i32* @CVMX_PKO_INVALID_PRIORITY, align 4
  store i32 %121, i32* %5, align 4
  br label %308

122:                                              ; preds = %110, %105, %102
  br label %123

123:                                              ; preds = %122
  %124 = load i64, i64* %11, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %11, align 8
  br label %52

126:                                              ; preds = %52
  %127 = load i32, i32* %14, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i32, i32* %14, align 4
  %131 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @CVMX_PKO_INVALID_PRIORITY, align 4
  store i32 %132, i32* %5, align 4
  br label %308

133:                                              ; preds = %126
  br label %134

134:                                              ; preds = %133, %47
  %135 = load i32, i32* @CVMX_PKO_SUCCESS, align 4
  store i32 %135, i32* %10, align 4
  store i64 0, i64* %11, align 8
  br label %136

136:                                              ; preds = %303, %134
  %137 = load i64, i64* %11, align 8
  %138 = load i64, i64* %8, align 8
  %139 = icmp slt i64 %137, %138
  br i1 %139, label %140, label %306

140:                                              ; preds = %136
  store i64* null, i64** %16, align 8
  %141 = bitcast %union.cvmx_pko_reg_queue_ptrs1* %13 to i64*
  store i64 0, i64* %141, align 8
  %142 = load i64, i64* %11, align 8
  %143 = ashr i64 %142, 3
  %144 = bitcast %union.cvmx_pko_reg_queue_ptrs1* %13 to %struct.TYPE_3__*
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  store i64 %143, i64* %145, align 8
  %146 = load i64, i64* %7, align 8
  %147 = load i64, i64* %11, align 8
  %148 = add nsw i64 %146, %147
  %149 = ashr i64 %148, 7
  %150 = bitcast %union.cvmx_pko_reg_queue_ptrs1* %13 to %struct.TYPE_3__*
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  %152 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to i64*
  store i64 0, i64* %152, align 8
  %153 = load i64, i64* %11, align 8
  %154 = load i64, i64* %8, align 8
  %155 = sub nsw i64 %154, 1
  %156 = icmp eq i64 %153, %155
  %157 = zext i1 %156 to i32
  %158 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  %160 = load i64, i64* %11, align 8
  %161 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 8
  store i64 %160, i64* %162, align 8
  %163 = load i64, i64* %6, align 8
  %164 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 7
  store i64 %163, i64* %165, align 8
  %166 = load i64, i64* %7, align 8
  %167 = load i64, i64* %11, align 8
  %168 = add nsw i64 %166, %167
  %169 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 6
  store i64 %168, i64* %170, align 8
  %171 = call i32 (...) @cvmx_octeon_is_pass1()
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %193, label %173

173:                                              ; preds = %140
  %174 = load i32, i32* %14, align 4
  %175 = icmp sge i32 %174, 0
  %176 = zext i1 %175 to i32
  %177 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  store i32 %176, i32* %178, align 4
  %179 = load i64, i64* %11, align 8
  %180 = trunc i64 %179 to i32
  %181 = load i32, i32* %15, align 4
  %182 = icmp sle i32 %180, %181
  %183 = zext i1 %182 to i32
  %184 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 8
  %186 = load i64, i64* %11, align 8
  %187 = trunc i64 %186 to i32
  %188 = load i32, i32* %15, align 4
  %189 = icmp eq i32 %187, %188
  %190 = zext i1 %189 to i32
  %191 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 3
  store i32 %190, i32* %192, align 4
  br label %193

193:                                              ; preds = %173, %140
  %194 = load i64*, i64** %9, align 8
  %195 = load i64, i64* %11, align 8
  %196 = getelementptr inbounds i64, i64* %194, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = trunc i64 %197 to i32
  switch i32 %198, label %233 [
    i32 0, label %199
    i32 1, label %202
    i32 2, label %205
    i32 3, label %208
    i32 4, label %211
    i32 5, label %214
    i32 6, label %217
    i32 7, label %220
    i32 8, label %223
    i32 128, label %226
  ]

199:                                              ; preds = %193
  %200 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 4
  store i32 0, i32* %201, align 8
  br label %242

202:                                              ; preds = %193
  %203 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 4
  store i32 1, i32* %204, align 8
  br label %242

205:                                              ; preds = %193
  %206 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 4
  store i32 17, i32* %207, align 8
  br label %242

208:                                              ; preds = %193
  %209 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 4
  store i32 73, i32* %210, align 8
  br label %242

211:                                              ; preds = %193
  %212 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 4
  store i32 85, i32* %213, align 8
  br label %242

214:                                              ; preds = %193
  %215 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 4
  store i32 87, i32* %216, align 8
  br label %242

217:                                              ; preds = %193
  %218 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 4
  store i32 119, i32* %219, align 8
  br label %242

220:                                              ; preds = %193
  %221 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 4
  store i32 127, i32* %222, align 8
  br label %242

223:                                              ; preds = %193
  %224 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 4
  store i32 255, i32* %225, align 8
  br label %242

226:                                              ; preds = %193
  %227 = call i32 (...) @cvmx_octeon_is_pass1()
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %226
  %230 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 4
  store i32 255, i32* %231, align 8
  br label %242

232:                                              ; preds = %226
  br label %233

233:                                              ; preds = %193, %232
  %234 = load i64*, i64** %9, align 8
  %235 = load i64, i64* %11, align 8
  %236 = getelementptr inbounds i64, i64* %234, i64 %235
  %237 = load i64, i64* %236, align 8
  %238 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i64 %237)
  %239 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 4
  store i32 255, i32* %240, align 8
  %241 = load i32, i32* @CVMX_PKO_INVALID_PRIORITY, align 4
  store i32 %241, i32* %10, align 4
  br label %242

242:                                              ; preds = %233, %229, %223, %220, %217, %214, %211, %208, %205, %202, %199
  %243 = load i64, i64* %6, align 8
  %244 = load i64, i64* @CVMX_PKO_MEM_QUEUE_PTRS_ILLEGAL_PID, align 8
  %245 = icmp ne i64 %243, %244
  br i1 %245, label %246, label %285

246:                                              ; preds = %242
  %247 = load i64, i64* %7, align 8
  %248 = load i64, i64* %11, align 8
  %249 = add nsw i64 %247, %248
  %250 = call i32 @CVMX_CMD_QUEUE_PKO(i64 %249)
  %251 = load i32, i32* @CVMX_PKO_MAX_QUEUE_DEPTH, align 4
  %252 = load i32, i32* @CVMX_FPA_OUTPUT_BUFFER_POOL, align 4
  %253 = load i64, i64* @CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE, align 8
  %254 = load i32, i32* @CVMX_PKO_COMMAND_BUFFER_SIZE_ADJUST, align 4
  %255 = mul nsw i32 %254, 8
  %256 = sext i32 %255 to i64
  %257 = sub nsw i64 %253, %256
  %258 = call i32 @cvmx_cmd_queue_initialize(i32 %250, i32 %251, i32 %252, i64 %257)
  store i32 %258, i32* %17, align 4
  %259 = load i32, i32* %17, align 4
  %260 = load i32, i32* @CVMX_CMD_QUEUE_SUCCESS, align 4
  %261 = icmp ne i32 %259, %260
  br i1 %261, label %262, label %274

262:                                              ; preds = %246
  %263 = load i32, i32* %17, align 4
  switch i32 %263, label %271 [
    i32 129, label %264
    i32 131, label %267
    i32 130, label %270
  ]

264:                                              ; preds = %262
  %265 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0))
  %266 = load i32, i32* @CVMX_PKO_NO_MEMORY, align 4
  store i32 %266, i32* %5, align 4
  br label %308

267:                                              ; preds = %262
  %268 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %269 = load i32, i32* @CVMX_PKO_PORT_ALREADY_SETUP, align 4
  store i32 %269, i32* %5, align 4
  br label %308

270:                                              ; preds = %262
  br label %271

271:                                              ; preds = %262, %270
  %272 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.7, i64 0, i64 0))
  %273 = load i32, i32* @CVMX_PKO_CMD_QUEUE_INIT_ERROR, align 4
  store i32 %273, i32* %5, align 4
  br label %308

274:                                              ; preds = %246
  %275 = load i64, i64* %7, align 8
  %276 = load i64, i64* %11, align 8
  %277 = add nsw i64 %275, %276
  %278 = call i32 @CVMX_CMD_QUEUE_PKO(i64 %277)
  %279 = call i64 @cvmx_cmd_queue_buffer(i32 %278)
  %280 = inttoptr i64 %279 to i64*
  store i64* %280, i64** %16, align 8
  %281 = load i64*, i64** %16, align 8
  %282 = call i32 @cvmx_ptr_to_phys(i64* %281)
  %283 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 5
  store i32 %282, i32* %284, align 4
  br label %288

285:                                              ; preds = %242
  %286 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to %struct.TYPE_4__*
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 5
  store i32 0, i32* %287, align 4
  br label %288

288:                                              ; preds = %285, %274
  %289 = load i32, i32* @CVMX_SYNCWS, align 4
  %290 = load i32, i32* @OCTEON_CN3XXX, align 4
  %291 = call i64 @OCTEON_IS_MODEL(i32 %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %298, label %293

293:                                              ; preds = %288
  %294 = load i32, i32* @CVMX_PKO_REG_QUEUE_PTRS1, align 4
  %295 = bitcast %union.cvmx_pko_reg_queue_ptrs1* %13 to i64*
  %296 = load i64, i64* %295, align 8
  %297 = call i32 @cvmx_write_csr(i32 %294, i64 %296)
  br label %298

298:                                              ; preds = %293, %288
  %299 = load i32, i32* @CVMX_PKO_MEM_QUEUE_PTRS, align 4
  %300 = bitcast %union.cvmx_pko_mem_queue_ptrs* %12 to i64*
  %301 = load i64, i64* %300, align 8
  %302 = call i32 @cvmx_write_csr(i32 %299, i64 %301)
  br label %303

303:                                              ; preds = %298
  %304 = load i64, i64* %11, align 8
  %305 = add nsw i64 %304, 1
  store i64 %305, i64* %11, align 8
  br label %136

306:                                              ; preds = %136
  %307 = load i32, i32* %10, align 4
  store i32 %307, i32* %5, align 4
  br label %308

308:                                              ; preds = %306, %271, %267, %264, %129, %116, %41, %31, %21
  %309 = load i32, i32* %5, align 4
  ret i32 %309
}

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_dprintf(i8*, ...) #1

declare dso_local i32 @cvmx_octeon_is_pass1(...) #1

declare dso_local i32 @cvmx_cmd_queue_initialize(i32, i32, i32, i64) #1

declare dso_local i32 @CVMX_CMD_QUEUE_PKO(i64) #1

declare dso_local i64 @cvmx_cmd_queue_buffer(i32) #1

declare dso_local i32 @cvmx_ptr_to_phys(i64*) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
