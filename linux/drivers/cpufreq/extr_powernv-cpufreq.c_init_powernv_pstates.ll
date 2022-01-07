; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernv-cpufreq.c_init_powernv_pstates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernv-cpufreq.c_init_powernv_pstates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i64 }
%struct.device_node = type { i32 }
%struct.pstate_idx_revmap_data = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"/ibm,opal/power-mgt\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"power-mgt node not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ibm,pstate-min\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"ibm,pstate-min node not found\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"ibm,pstate-max\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"ibm,pstate-max node not found\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"ibm,pstate-nominal\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"ibm,pstate-nominal not found\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"ibm,pstate-ultra-turbo\00", align 1
@powernv_pstate_info = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"ibm,pstate-turbo\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"cpufreq pstate min 0x%x nominal 0x%x max 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"Workload Optimized Frequency is %s in the platform\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"ibm,pstate-ids\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"ibm,pstate-ids not found\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"ibm,pstate-frequencies-mhz\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"ibm,pstate-frequencies-mhz not found\0A\00", align 1
@.str.18 = private unnamed_addr constant [73 x i8] c"Entries in ibm,pstate-ids and ibm,pstate-frequencies-mhz does not match\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"No PStates found\0A\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"NR PStates %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"PState id %d freq %d MHz\0A\00", align 1
@powernv_freqs = common dso_local global %struct.TYPE_4__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@POWERNV_MAX_PSTATES = common dso_local global i32 0, align 4
@pstate_revmap = common dso_local global i32 0, align 4
@CPUFREQ_BOOST_FREQ = common dso_local global i32 0, align 4
@CPUFREQ_TABLE_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_powernv_pstates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_powernv_pstates() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.pstate_idx_revmap_data*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %14, align 4
  %22 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %22, %struct.device_node** %2, align 8
  %23 = load %struct.device_node*, %struct.device_node** %2, align 8
  %24 = icmp ne %struct.device_node* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %0
  %26 = call i32 @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %1, align 4
  br label %229

29:                                               ; preds = %0
  %30 = load %struct.device_node*, %struct.device_node** %2, align 8
  %31 = call i64 @of_property_read_u32(%struct.device_node* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64* %9)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %225

35:                                               ; preds = %29
  %36 = load %struct.device_node*, %struct.device_node** %2, align 8
  %37 = call i64 @of_property_read_u32(%struct.device_node* %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64* %10)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 @pr_warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %225

41:                                               ; preds = %35
  %42 = load %struct.device_node*, %struct.device_node** %2, align 8
  %43 = call i64 @of_property_read_u32(%struct.device_node* %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64* %11)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 @pr_warn(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %225

47:                                               ; preds = %41
  %48 = load %struct.device_node*, %struct.device_node** %2, align 8
  %49 = call i64 @of_property_read_u32(%struct.device_node* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64* %13)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @powernv_pstate_info, i32 0, i32 0), align 4
  br label %64

52:                                               ; preds = %47
  %53 = load %struct.device_node*, %struct.device_node** %2, align 8
  %54 = call i64 @of_property_read_u32(%struct.device_node* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i64* %12)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @powernv_pstate_info, i32 0, i32 0), align 4
  br label %64

57:                                               ; preds = %52
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* %13, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @powernv_pstate_info, i32 0, i32 0), align 4
  br label %63

62:                                               ; preds = %57
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @powernv_pstate_info, i32 0, i32 0), align 4
  br label %63

63:                                               ; preds = %62, %61
  br label %64

64:                                               ; preds = %63, %56, %51
  %65 = load i64, i64* %9, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %10, align 8
  %69 = call i32 (i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i64 0, i64 0), i8* %66, i64 %67, i64 %68)
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @powernv_pstate_info, i32 0, i32 0), align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)
  %74 = call i32 (i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i64 0, i64 0), i8* %73)
  %75 = load %struct.device_node*, %struct.device_node** %2, align 8
  %76 = call i32* @of_get_property(%struct.device_node* %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i64* %7)
  store i32* %76, i32** %5, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %64
  %80 = call i32 @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  br label %225

81:                                               ; preds = %64
  %82 = load %struct.device_node*, %struct.device_node** %2, align 8
  %83 = call i32* @of_get_property(%struct.device_node* %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i64* %8)
  store i32* %83, i32** %6, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %81
  %87 = call i32 @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0))
  br label %225

88:                                               ; preds = %81
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* %8, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = call i32 @pr_warn(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.18, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %88
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @min(i64 %95, i64 %96)
  %98 = sext i32 %97 to i64
  %99 = udiv i64 %98, 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %94
  %104 = call i32 @pr_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  br label %225

105:                                              ; preds = %94
  %106 = load i32, i32* %4, align 4
  store i32 %106, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @powernv_pstate_info, i32 0, i32 1), align 4
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i64 %108)
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %213, %105
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %216

114:                                              ; preds = %110
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @be32_to_cpu(i32 %119)
  store i64 %120, i64* %15, align 8
  %121 = load i32*, i32** %6, align 8
  %122 = load i32, i32* %3, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @be32_to_cpu(i32 %125)
  store i64 %126, i64* %16, align 8
  %127 = load i64, i64* %15, align 8
  %128 = load i64, i64* %16, align 8
  %129 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i64 %127, i64 %128)
  %130 = load i64, i64* %16, align 8
  %131 = mul nsw i64 %130, 1000
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** @powernv_freqs, align 8
  %133 = load i32, i32* %3, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  store i64 %131, i64* %136, align 8
  %137 = load i64, i64* %15, align 8
  %138 = and i64 %137, 255
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** @powernv_freqs, align 8
  %140 = load i32, i32* %3, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  store i64 %138, i64* %143, align 8
  %144 = load i32, i32* @GFP_KERNEL, align 4
  %145 = call %struct.pstate_idx_revmap_data* @kmalloc(i32 12, i32 %144)
  store %struct.pstate_idx_revmap_data* %145, %struct.pstate_idx_revmap_data** %17, align 8
  %146 = load %struct.pstate_idx_revmap_data*, %struct.pstate_idx_revmap_data** %17, align 8
  %147 = icmp ne %struct.pstate_idx_revmap_data* %146, null
  br i1 %147, label %151, label %148

148:                                              ; preds = %114
  %149 = load i32, i32* @ENOMEM, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %14, align 4
  br label %225

151:                                              ; preds = %114
  %152 = load i64, i64* %15, align 8
  %153 = and i64 %152, 255
  %154 = trunc i64 %153 to i32
  %155 = load %struct.pstate_idx_revmap_data*, %struct.pstate_idx_revmap_data** %17, align 8
  %156 = getelementptr inbounds %struct.pstate_idx_revmap_data, %struct.pstate_idx_revmap_data* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* %3, align 4
  %158 = load %struct.pstate_idx_revmap_data*, %struct.pstate_idx_revmap_data** %17, align 8
  %159 = getelementptr inbounds %struct.pstate_idx_revmap_data, %struct.pstate_idx_revmap_data* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load %struct.pstate_idx_revmap_data*, %struct.pstate_idx_revmap_data** %17, align 8
  %161 = getelementptr inbounds %struct.pstate_idx_revmap_data, %struct.pstate_idx_revmap_data* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @POWERNV_MAX_PSTATES, align 4
  %164 = urem i32 %162, %163
  store i32 %164, i32* %18, align 4
  %165 = load i32, i32* @pstate_revmap, align 4
  %166 = load %struct.pstate_idx_revmap_data*, %struct.pstate_idx_revmap_data** %17, align 8
  %167 = getelementptr inbounds %struct.pstate_idx_revmap_data, %struct.pstate_idx_revmap_data* %166, i32 0, i32 2
  %168 = load i32, i32* %18, align 4
  %169 = call i32 @hash_add(i32 %165, i32* %167, i32 %168)
  %170 = load i64, i64* %15, align 8
  %171 = load i64, i64* %10, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %151
  %174 = load i32, i32* %3, align 4
  store i32 %174, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @powernv_pstate_info, i32 0, i32 2), align 4
  br label %175

175:                                              ; preds = %173, %151
  %176 = load i64, i64* %15, align 8
  %177 = load i64, i64* %11, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = load i32, i32* %3, align 4
  store i32 %180, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @powernv_pstate_info, i32 0, i32 3), align 4
  br label %181

181:                                              ; preds = %179, %175
  %182 = load i64, i64* %15, align 8
  %183 = load i64, i64* %9, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %181
  %186 = load i32, i32* %3, align 4
  store i32 %186, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @powernv_pstate_info, i32 0, i32 4), align 4
  br label %187

187:                                              ; preds = %185, %181
  %188 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @powernv_pstate_info, i32 0, i32 0), align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %212

190:                                              ; preds = %187
  %191 = load i64, i64* %15, align 8
  %192 = load i64, i64* %12, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %212

194:                                              ; preds = %190
  %195 = load i32, i32* %3, align 4
  %196 = sub nsw i32 %195, 1
  store i32 %196, i32* %19, align 4
  br label %197

197:                                              ; preds = %208, %194
  %198 = load i32, i32* %19, align 4
  %199 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @powernv_pstate_info, i32 0, i32 2), align 4
  %200 = icmp sge i32 %198, %199
  br i1 %200, label %201, label %211

201:                                              ; preds = %197
  %202 = load i32, i32* @CPUFREQ_BOOST_FREQ, align 4
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** @powernv_freqs, align 8
  %204 = load i32, i32* %19, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 1
  store i32 %202, i32* %207, align 8
  br label %208

208:                                              ; preds = %201
  %209 = load i32, i32* %19, align 4
  %210 = add nsw i32 %209, -1
  store i32 %210, i32* %19, align 4
  br label %197

211:                                              ; preds = %197
  br label %212

212:                                              ; preds = %211, %190, %187
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %3, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %3, align 4
  br label %110

216:                                              ; preds = %110
  %217 = load i64, i64* @CPUFREQ_TABLE_END, align 8
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** @powernv_freqs, align 8
  %219 = load i32, i32* %3, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  store i64 %217, i64* %222, align 8
  %223 = load %struct.device_node*, %struct.device_node** %2, align 8
  %224 = call i32 @of_node_put(%struct.device_node* %223)
  store i32 0, i32* %1, align 4
  br label %229

225:                                              ; preds = %148, %103, %86, %79, %45, %39, %33
  %226 = load %struct.device_node*, %struct.device_node** %2, align 8
  %227 = call i32 @of_node_put(%struct.device_node* %226)
  %228 = load i32, i32* %14, align 4
  store i32 %228, i32* %1, align 4
  br label %229

229:                                              ; preds = %225, %216, %25
  %230 = load i32, i32* %1, align 4
  ret i32 %230
}

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @pr_info(i8*, i8*, ...) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @pr_debug(i8*, i64, ...) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local %struct.pstate_idx_revmap_data* @kmalloc(i32, i32) #1

declare dso_local i32 @hash_add(i32, i32*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
