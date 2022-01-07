; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_try_smi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_intf.c_try_smi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 (i32)*, i32 (i32, %struct.TYPE_12__*)*, i32 (...)* }
%struct.TYPE_12__ = type { i64, i64, i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)*, %struct.TYPE_14__*, i32, i64, i64, i32, i32 }
%struct.TYPE_14__ = type { i32* }
%struct.smi_info = type { i32, i32, i32, i32, %struct.TYPE_12__, i32, i32, i32*, i32*, i32*, i32, %struct.TYPE_13__*, i32 }

@.str = private unnamed_addr constant [86 x i8] c"Trying %s-specified %s state machine at %s address 0x%lx, slave address 0x%x, irq %d\0A\00", align 1
@si_to_str = common dso_local global i32* null, align 8
@addr_space_to_str = common dso_local global i32* null, align 8
@kcs_smi_handlers = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@smic_smi_handlers = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@bt_smi_handlers = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@EIO = common dso_local global i32 0, align 4
@smi_num = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"IPMI interface added with no device\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Could not set up I/O space\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Interface detection failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"There appears to be no BMC at this location\0A\00", align 1
@SI_NUM_STATS = common dso_local global i32 0, align 4
@ipmi_si_dev_attr_group = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Unable to add device attributes: error %d\0A\00", align 1
@handlers = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Unable to register device: error %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"IPMI %s interface initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smi_info*)* @try_smi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_smi_init(%struct.smi_info* %0) #0 {
  %2 = alloca %struct.smi_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.smi_info* %0, %struct.smi_info** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %6 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 7
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @ipmi_addr_src_to_str(i64 %8)
  %10 = load i32*, i32** @si_to_str, align 8
  %11 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %12 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %10, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** @addr_space_to_str, align 8
  %18 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %19 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %25 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %29 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %33 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @pr_info(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %16, i32 %23, i32 %27, i32 %31, i64 %35)
  %37 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %38 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  switch i64 %40, label %50 [
    i64 129, label %41
    i64 128, label %44
    i64 130, label %47
  ]

41:                                               ; preds = %1
  %42 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %43 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %42, i32 0, i32 11
  store %struct.TYPE_13__* @kcs_smi_handlers, %struct.TYPE_13__** %43, align 8
  br label %53

44:                                               ; preds = %1
  %45 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %46 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %45, i32 0, i32 11
  store %struct.TYPE_13__* @smic_smi_handlers, %struct.TYPE_13__** %46, align 8
  br label %53

47:                                               ; preds = %1
  %48 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %49 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %48, i32 0, i32 11
  store %struct.TYPE_13__* @bt_smi_handlers, %struct.TYPE_13__** %49, align 8
  br label %53

50:                                               ; preds = %1
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %282

53:                                               ; preds = %47, %44, %41
  %54 = load i32, i32* @smi_num, align 4
  %55 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %56 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %55, i32 0, i32 12
  store i32 %54, i32* %56, align 8
  %57 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %58 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = icmp ne %struct.TYPE_14__* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %53
  %63 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @EIO, align 4
  store i32 %64, i32* %3, align 4
  br label %282

65:                                               ; preds = %53
  %66 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %67 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %66, i32 0, i32 11
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  %70 = load i32 (...)*, i32 (...)** %69, align 8
  %71 = call i32 (...) %70()
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i32 @kmalloc(i32 %71, i32 %72)
  %74 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %75 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %74, i32 0, i32 10
  store i32 %73, i32* %75, align 8
  %76 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %77 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %76, i32 0, i32 10
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %65
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %282

83:                                               ; preds = %65
  %84 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %85 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %84, i32 0, i32 11
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load i32 (i32, %struct.TYPE_12__*)*, i32 (i32, %struct.TYPE_12__*)** %87, align 8
  %89 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %90 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %89, i32 0, i32 10
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %93 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %92, i32 0, i32 4
  %94 = call i32 %88(i32 %91, %struct.TYPE_12__* %93)
  %95 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %96 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 8
  store i32 %94, i32* %97, align 8
  %98 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %99 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %100, align 8
  %102 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %103 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %102, i32 0, i32 4
  %104 = call i32 %101(%struct.TYPE_12__* %103)
  store i32 %104, i32* %3, align 4
  %105 = load i32, i32* %3, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %83
  %108 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %109 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 4
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %282

113:                                              ; preds = %83
  %114 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %115 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %114, i32 0, i32 11
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i64 (i32)*, i64 (i32)** %117, align 8
  %119 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %120 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %119, i32 0, i32 10
  %121 = load i32, i32* %120, align 8
  %122 = call i64 %118(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %113
  %125 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %126 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 7
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %124
  %131 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %132 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 4
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %133, align 8
  %135 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %134, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %136

136:                                              ; preds = %130, %124
  %137 = load i32, i32* @ENODEV, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %3, align 4
  br label %282

139:                                              ; preds = %113
  %140 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %141 = call i32 @try_get_dev_id(%struct.smi_info* %140)
  store i32 %141, i32* %3, align 4
  %142 = load i32, i32* %3, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %139
  %145 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %146 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 7
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %144
  %151 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %152 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 4
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %153, align 8
  %155 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %154, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %156

156:                                              ; preds = %150, %144
  br label %282

157:                                              ; preds = %139
  %158 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %159 = call i32 @setup_oem_data_handler(%struct.smi_info* %158)
  %160 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %161 = call i32 @setup_xaction_handlers(%struct.smi_info* %160)
  %162 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %163 = call i32 @check_for_broken_irqs(%struct.smi_info* %162)
  %164 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %165 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %164, i32 0, i32 9
  store i32* null, i32** %165, align 8
  %166 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %167 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %166, i32 0, i32 8
  store i32* null, i32** %167, align 8
  %168 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %169 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %168, i32 0, i32 5
  %170 = call i32 @atomic_set(i32* %169, i32 0)
  %171 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %172 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %171, i32 0, i32 0
  store i32 0, i32* %172, align 8
  store i32 0, i32* %4, align 4
  br label %173

173:                                              ; preds = %185, %157
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* @SI_NUM_STATS, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %188

177:                                              ; preds = %173
  %178 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %179 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %178, i32 0, i32 7
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %4, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = call i32 @atomic_set(i32* %183, i32 0)
  br label %185

185:                                              ; preds = %177
  %186 = load i32, i32* %4, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %4, align 4
  br label %173

188:                                              ; preds = %173
  %189 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %190 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %189, i32 0, i32 1
  store i32 1, i32* %190, align 4
  %191 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %192 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %191, i32 0, i32 6
  %193 = call i32 @atomic_set(i32* %192, i32 0)
  %194 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %195 = call i32 @try_enable_event_buffer(%struct.smi_info* %194)
  store i32 %195, i32* %3, align 4
  %196 = load i32, i32* %3, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %188
  %199 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %200 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %199, i32 0, i32 2
  store i32 1, i32* %200, align 8
  br label %201

201:                                              ; preds = %198, %188
  %202 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %203 = call i32 @start_clear_flags(%struct.smi_info* %202)
  %204 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %205 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %204, i32 0, i32 4
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 6
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %201
  %210 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %211 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %210, i32 0, i32 1
  store i32 0, i32* %211, align 4
  %212 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %213 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %212, i32 0, i32 5
  %214 = call i32 @atomic_set(i32* %213, i32 1)
  br label %215

215:                                              ; preds = %209, %201
  %216 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %217 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %216, i32 0, i32 4
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 4
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %218, align 8
  %220 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %221 = call i32 @dev_set_drvdata(%struct.TYPE_14__* %219, %struct.smi_info* %220)
  %222 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %223 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %222, i32 0, i32 4
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 4
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %224, align 8
  %226 = call i32 @device_add_group(%struct.TYPE_14__* %225, i32* @ipmi_si_dev_attr_group)
  store i32 %226, i32* %3, align 4
  %227 = load i32, i32* %3, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %215
  %230 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %231 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %230, i32 0, i32 4
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 4
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %232, align 8
  %234 = load i32, i32* %3, align 4
  %235 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %233, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %234)
  br label %282

236:                                              ; preds = %215
  %237 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %238 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %237, i32 0, i32 3
  store i32 1, i32* %238, align 4
  %239 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %240 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %241 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %240, i32 0, i32 4
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 4
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %242, align 8
  %244 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %245 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %244, i32 0, i32 4
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @ipmi_register_smi(i32* @handlers, %struct.smi_info* %239, %struct.TYPE_14__* %243, i32 %247)
  store i32 %248, i32* %3, align 4
  %249 = load i32, i32* %3, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %258

251:                                              ; preds = %236
  %252 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %253 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %252, i32 0, i32 4
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 4
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %254, align 8
  %256 = load i32, i32* %3, align 4
  %257 = call i32 (%struct.TYPE_14__*, i8*, ...) @dev_err(%struct.TYPE_14__* %255, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %256)
  br label %282

258:                                              ; preds = %236
  %259 = load i32, i32* @smi_num, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* @smi_num, align 4
  %261 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %262 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %261, i32 0, i32 4
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i32 0, i32 4
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %263, align 8
  %265 = load i32*, i32** @si_to_str, align 8
  %266 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %267 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %266, i32 0, i32 4
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds i32, i32* %265, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @dev_info(%struct.TYPE_14__* %264, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %271)
  %273 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %274 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %273, i32 0, i32 4
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 4
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 0
  %278 = load i32*, i32** %277, align 8
  %279 = icmp ne i32* %278, null
  %280 = zext i1 %279 to i32
  %281 = call i32 @WARN_ON(i32 %280)
  br label %282

282:                                              ; preds = %258, %251, %229, %156, %136, %107, %80, %62, %50
  %283 = load i32, i32* %3, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %302

285:                                              ; preds = %282
  %286 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %287 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %286, i32 0, i32 4
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 3
  %289 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %288, align 8
  %290 = icmp ne i32 (%struct.TYPE_12__*)* %289, null
  br i1 %290, label %291, label %302

291:                                              ; preds = %285
  %292 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %293 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %292, i32 0, i32 4
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 3
  %295 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %294, align 8
  %296 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %297 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %296, i32 0, i32 4
  %298 = call i32 %295(%struct.TYPE_12__* %297)
  %299 = load %struct.smi_info*, %struct.smi_info** %2, align 8
  %300 = getelementptr inbounds %struct.smi_info, %struct.smi_info* %299, i32 0, i32 4
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 3
  store i32 (%struct.TYPE_12__*)* null, i32 (%struct.TYPE_12__*)** %301, align 8
  br label %302

302:                                              ; preds = %291, %285, %282
  %303 = load i32, i32* %3, align 4
  ret i32 %303
}

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @ipmi_addr_src_to_str(i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*, ...) #1

declare dso_local i32 @try_get_dev_id(%struct.smi_info*) #1

declare dso_local i32 @setup_oem_data_handler(%struct.smi_info*) #1

declare dso_local i32 @setup_xaction_handlers(%struct.smi_info*) #1

declare dso_local i32 @check_for_broken_irqs(%struct.smi_info*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @try_enable_event_buffer(%struct.smi_info*) #1

declare dso_local i32 @start_clear_flags(%struct.smi_info*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_14__*, %struct.smi_info*) #1

declare dso_local i32 @device_add_group(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @ipmi_register_smi(i32*, %struct.smi_info*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
