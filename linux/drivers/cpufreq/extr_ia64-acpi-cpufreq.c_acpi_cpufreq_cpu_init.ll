; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_ia64-acpi-cpufreq.c_acpi_cpufreq_cpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_ia64-acpi-cpufreq.c_acpi_cpufreq_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_acpi_io = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.cpufreq_policy = type { i32, %struct.cpufreq_frequency_table*, %struct.TYPE_8__ }
%struct.cpufreq_frequency_table = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"acpi_cpufreq_cpu_init\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@acpi_io_data = common dso_local global %struct.cpufreq_acpi_io** null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"No P-States\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_FIXED_HARDWARE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Unsupported address space [%d, %d]\0A\00", align 1
@CPUFREQ_TABLE_END = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"CPU%u - ACPI performance management activated\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"     %cP%d: %d MHz, %d mW, %d uS, %d uS, 0x%x 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @acpi_cpufreq_cpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_cpufreq_cpu_init(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpufreq_acpi_io*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpufreq_frequency_table*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  %9 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %10 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %12 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.cpufreq_acpi_io* @kzalloc(i32 40, i32 %13)
  store %struct.cpufreq_acpi_io* %14, %struct.cpufreq_acpi_io** %6, align 8
  %15 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %16 = icmp ne %struct.cpufreq_acpi_io* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %277

20:                                               ; preds = %1
  %21 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %22 = load %struct.cpufreq_acpi_io**, %struct.cpufreq_acpi_io*** @acpi_io_data, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %22, i64 %24
  store %struct.cpufreq_acpi_io* %21, %struct.cpufreq_acpi_io** %25, align 8
  %26 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %27 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %26, i32 0, i32 1
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @acpi_processor_register_performance(%struct.TYPE_10__* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %269

33:                                               ; preds = %20
  %34 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %35 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sle i32 %37, 1
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %266

43:                                               ; preds = %33
  %44 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %45 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ACPI_ADR_SPACE_FIXED_HARDWARE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %43
  %52 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %53 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ACPI_ADR_SPACE_FIXED_HARDWARE, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %51, %43
  %60 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %61 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %67 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %71)
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub i32 0, %73
  store i32 %74, i32* %7, align 4
  br label %266

75:                                               ; preds = %51
  %76 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %77 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call %struct.cpufreq_frequency_table* @kcalloc(i32 %80, i32 4, i32 %81)
  store %struct.cpufreq_frequency_table* %82, %struct.cpufreq_frequency_table** %8, align 8
  %83 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %84 = icmp ne %struct.cpufreq_frequency_table* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %75
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %7, align 4
  br label %266

88:                                               ; preds = %75
  %89 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %90 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %130, %88
  %93 = load i32, i32* %4, align 4
  %94 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %95 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ult i32 %93, %97
  br i1 %98, label %99, label %133

99:                                               ; preds = %92
  %100 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %101 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  %104 = load i32, i32* %4, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = mul nsw i32 %108, 1000
  %110 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %111 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp sgt i32 %109, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %99
  %116 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %117 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = load i32, i32* %4, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = mul nsw i32 %124, 1000
  %126 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %127 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 8
  br label %129

129:                                              ; preds = %115, %99
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %4, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %4, align 4
  br label %92

133:                                              ; preds = %92
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %172, %133
  %135 = load i32, i32* %4, align 4
  %136 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %137 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ule i32 %135, %139
  br i1 %140, label %141, label %175

141:                                              ; preds = %134
  %142 = load i32, i32* %4, align 4
  %143 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %144 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp ult i32 %142, %146
  br i1 %147, label %148, label %164

148:                                              ; preds = %141
  %149 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %150 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = load i32, i32* %4, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = mul nsw i32 %157, 1000
  %159 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %160 = load i32, i32* %4, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %159, i64 %161
  %163 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %162, i32 0, i32 0
  store i32 %158, i32* %163, align 4
  br label %171

164:                                              ; preds = %141
  %165 = load i32, i32* @CPUFREQ_TABLE_END, align 4
  %166 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %167 = load i32, i32* %4, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %166, i64 %168
  %170 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %169, i32 0, i32 0
  store i32 %165, i32* %170, align 4
  br label %171

171:                                              ; preds = %164, %148
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %4, align 4
  %174 = add i32 %173, 1
  store i32 %174, i32* %4, align 4
  br label %134

175:                                              ; preds = %134
  %176 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %177 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %178 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %177, i32 0, i32 1
  store %struct.cpufreq_frequency_table* %176, %struct.cpufreq_frequency_table** %178, align 8
  %179 = load i32, i32* @THIS_MODULE, align 4
  %180 = call i32 @acpi_processor_notify_smm(i32 %179)
  %181 = load i32, i32* %5, align 4
  %182 = call i32 @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %181)
  store i32 0, i32* %4, align 4
  br label %183

183:                                              ; preds = %259, %175
  %184 = load i32, i32* %4, align 4
  %185 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %186 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp ult i32 %184, %188
  br i1 %189, label %190, label %262

190:                                              ; preds = %183
  %191 = load i32, i32* %4, align 4
  %192 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %193 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %191, %195
  %197 = zext i1 %196 to i64
  %198 = select i1 %196, i32 42, i32 32
  %199 = load i32, i32* %4, align 4
  %200 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %201 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 2
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %202, align 8
  %204 = load i32, i32* %4, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %210 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 2
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %211, align 8
  %213 = load i32, i32* %4, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 5
  %217 = load i64, i64* %216, align 8
  %218 = trunc i64 %217 to i32
  %219 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %220 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 2
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %221, align 8
  %223 = load i32, i32* %4, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %229 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 2
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %230, align 8
  %232 = load i32, i32* %4, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = trunc i64 %236 to i32
  %238 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %239 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %240, align 8
  %242 = load i32, i32* %4, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  %247 = trunc i64 %246 to i32
  %248 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %249 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 2
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %250, align 8
  %252 = load i32, i32* %4, align 4
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = trunc i64 %256 to i32
  %258 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %198, i32 %199, i32 %208, i32 %218, i32 %227, i32 %237, i32 %247, i32 %257)
  br label %259

259:                                              ; preds = %190
  %260 = load i32, i32* %4, align 4
  %261 = add i32 %260, 1
  store i32 %261, i32* %4, align 4
  br label %183

262:                                              ; preds = %183
  %263 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %264 = getelementptr inbounds %struct.cpufreq_acpi_io, %struct.cpufreq_acpi_io* %263, i32 0, i32 0
  store i32 1, i32* %264, align 8
  %265 = load i32, i32* %7, align 4
  store i32 %265, i32* %2, align 4
  br label %277

266:                                              ; preds = %85, %59, %39
  %267 = load i32, i32* %5, align 4
  %268 = call i32 @acpi_processor_unregister_performance(i32 %267)
  br label %269

269:                                              ; preds = %266, %32
  %270 = load %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %6, align 8
  %271 = call i32 @kfree(%struct.cpufreq_acpi_io* %270)
  %272 = load %struct.cpufreq_acpi_io**, %struct.cpufreq_acpi_io*** @acpi_io_data, align 8
  %273 = load i32, i32* %5, align 4
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds %struct.cpufreq_acpi_io*, %struct.cpufreq_acpi_io** %272, i64 %274
  store %struct.cpufreq_acpi_io* null, %struct.cpufreq_acpi_io** %275, align 8
  %276 = load i32, i32* %7, align 4
  store i32 %276, i32* %2, align 4
  br label %277

277:                                              ; preds = %269, %262, %17
  %278 = load i32, i32* %2, align 4
  ret i32 %278
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.cpufreq_acpi_io* @kzalloc(i32, i32) #1

declare dso_local i32 @acpi_processor_register_performance(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.cpufreq_frequency_table* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @acpi_processor_notify_smm(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @acpi_processor_unregister_performance(i32) #1

declare dso_local i32 @kfree(%struct.cpufreq_acpi_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
