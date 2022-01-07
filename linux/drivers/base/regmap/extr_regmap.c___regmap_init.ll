; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c___regmap_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c___regmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i64, i32, i64, %struct.regmap*, i32*, %struct.TYPE_2__, %struct.device*, i32, i32, %struct.regmap*, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.regmap_bus*, i32, i32, i32, %struct.regmap*, i32, i64, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i8*, i64, i8*, i32, i8*, i8*, i8* }
%struct.device = type { i32 }
%struct.regmap_bus = type { i32, i64, i32, i64, i32, i32, i64 }
%struct.regmap_config = type { i32, i32, i32, i32, i32, i64, i32, i32, %struct.regmap_range_cfg*, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i64, %struct.regmap_range_node*, i64, i64, i64 }
%struct.regmap_range_cfg = type { i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.regmap_range_node = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i64, i32, i64, %struct.regmap_range_node*, i32*, %struct.TYPE_2__, %struct.device*, i32, i32, %struct.regmap_range_node*, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.regmap_bus*, i32, i32, i32, %struct.regmap_range_node*, i32, i64, i64, i32 }
%struct.lock_class_key = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@regmap_lock_unlock_none = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@regmap_lock_hwlock_irqsave = common dso_local global i64 0, align 8
@regmap_unlock_hwlock_irqrestore = common dso_local global i64 0, align 8
@regmap_lock_hwlock_irq = common dso_local global i64 0, align 8
@regmap_unlock_hwlock_irq = common dso_local global i64 0, align 8
@regmap_lock_hwlock = common dso_local global i64 0, align 8
@regmap_unlock_hwlock = common dso_local global i64 0, align 8
@regmap_lock_spinlock = common dso_local global i64 0, align 8
@regmap_unlock_spinlock = common dso_local global i64 0, align 8
@regmap_lock_mutex = common dso_local global i64 0, align 8
@regmap_unlock_mutex = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@_regmap_bus_reg_read = common dso_local global i32 0, align 4
@_regmap_bus_reg_write = common dso_local global i32 0, align 4
@_regmap_bus_read = common dso_local global i32 0, align 4
@regmap_format_2_6_write = common dso_local global i64 0, align 8
@regmap_format_4_12_write = common dso_local global i64 0, align 8
@regmap_format_7_9_write = common dso_local global i64 0, align 8
@regmap_format_10_14_write = common dso_local global i64 0, align 8
@regmap_format_8 = common dso_local global i8* null, align 8
@regmap_format_16_be = common dso_local global i8* null, align 8
@regmap_format_16_le = common dso_local global i8* null, align 8
@regmap_format_16_native = common dso_local global i8* null, align 8
@regmap_format_24 = common dso_local global i8* null, align 8
@regmap_format_32_be = common dso_local global i8* null, align 8
@regmap_format_32_le = common dso_local global i8* null, align 8
@regmap_format_32_native = common dso_local global i8* null, align 8
@regmap_parse_inplace_noop = common dso_local global i8* null, align 8
@regmap_parse_8 = common dso_local global i32 0, align 4
@regmap_parse_16_be = common dso_local global i32 0, align 4
@regmap_parse_16_be_inplace = common dso_local global i8* null, align 8
@regmap_parse_16_le = common dso_local global i32 0, align 4
@regmap_parse_16_le_inplace = common dso_local global i8* null, align 8
@regmap_parse_16_native = common dso_local global i32 0, align 4
@regmap_parse_24 = common dso_local global i32 0, align 4
@regmap_parse_32_be = common dso_local global i32 0, align 4
@regmap_parse_32_be_inplace = common dso_local global i8* null, align 8
@regmap_parse_32_le = common dso_local global i32 0, align 4
@regmap_parse_32_le_inplace = common dso_local global i8* null, align 8
@regmap_parse_32_native = common dso_local global i32 0, align 4
@_regmap_bus_formatted_write = common dso_local global i32 0, align 4
@_regmap_bus_raw_write = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid range %d: %d < %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid range %d: %d > %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Invalid range %d: selector out of map\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Invalid range %d: window_len 0\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Range %d: selector for %d in window\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Range %d: window for %d in window\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Failed to add range %d\0A\00", align 1
@regmap_format_64_be = common dso_local global i8* null, align 8
@regmap_format_64_le = common dso_local global i8* null, align 8
@regmap_format_64_native = common dso_local global i8* null, align 8
@regmap_parse_64_be = common dso_local global i32 0, align 4
@regmap_parse_64_be_inplace = common dso_local global i8* null, align 8
@regmap_parse_64_le = common dso_local global i32 0, align 4
@regmap_parse_64_le_inplace = common dso_local global i8* null, align 8
@regmap_parse_64_native = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.regmap* @__regmap_init(%struct.device* %0, %struct.regmap_bus* %1, i8* %2, %struct.regmap_config* %3, %struct.lock_class_key* %4, i8* %5) #0 {
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.regmap_bus*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.regmap_config*, align 8
  %12 = alloca %struct.lock_class_key*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.regmap*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.regmap_range_cfg*, align 8
  %21 = alloca %struct.regmap_range_node*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.regmap_bus* %1, %struct.regmap_bus** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.regmap_config* %3, %struct.regmap_config** %11, align 8
  store %struct.lock_class_key* %4, %struct.lock_class_key** %12, align 8
  store i8* %5, i8** %13, align 8
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %15, align 4
  %27 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %28 = icmp ne %struct.regmap_config* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %6
  br label %1165

30:                                               ; preds = %6
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kzalloc(i32 368, i32 %31)
  %33 = bitcast i8* %32 to %struct.regmap*
  store %struct.regmap* %33, %struct.regmap** %14, align 8
  %34 = load %struct.regmap*, %struct.regmap** %14, align 8
  %35 = icmp eq %struct.regmap* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %15, align 4
  br label %1165

39:                                               ; preds = %30
  %40 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %41 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %39
  %45 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %46 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i32 @kstrdup_const(i32 %47, i32 %48)
  %50 = load %struct.regmap*, %struct.regmap** %14, align 8
  %51 = getelementptr inbounds %struct.regmap, %struct.regmap* %50, i32 0, i32 13
  store i32 %49, i32* %51, align 8
  %52 = load %struct.regmap*, %struct.regmap** %14, align 8
  %53 = getelementptr inbounds %struct.regmap, %struct.regmap* %52, i32 0, i32 13
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %44
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %15, align 4
  br label %1161

59:                                               ; preds = %44
  br label %60

60:                                               ; preds = %59, %39
  %61 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %62 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %61, i32 0, i32 36
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load i64, i64* @regmap_lock_unlock_none, align 8
  %67 = load %struct.regmap*, %struct.regmap** %14, align 8
  %68 = getelementptr inbounds %struct.regmap, %struct.regmap* %67, i32 0, i32 52
  store i64 %66, i64* %68, align 8
  %69 = load %struct.regmap*, %struct.regmap** %14, align 8
  %70 = getelementptr inbounds %struct.regmap, %struct.regmap* %69, i32 0, i32 53
  store i64 %66, i64* %70, align 8
  %71 = load %struct.regmap*, %struct.regmap** %14, align 8
  %72 = bitcast %struct.regmap* %71 to %struct.regmap_range_node*
  %73 = call i32 @regmap_debugfs_disable(%struct.regmap_range_node* %72)
  br label %198

74:                                               ; preds = %60
  %75 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %76 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %75, i32 0, i32 35
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %74
  %80 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %81 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %80, i32 0, i32 34
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %79
  %85 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %86 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %85, i32 0, i32 35
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.regmap*, %struct.regmap** %14, align 8
  %89 = getelementptr inbounds %struct.regmap, %struct.regmap* %88, i32 0, i32 53
  store i64 %87, i64* %89, align 8
  %90 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %91 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %90, i32 0, i32 34
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.regmap*, %struct.regmap** %14, align 8
  %94 = getelementptr inbounds %struct.regmap, %struct.regmap* %93, i32 0, i32 52
  store i64 %92, i64* %94, align 8
  %95 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %96 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %95, i32 0, i32 33
  %97 = load %struct.regmap_range_node*, %struct.regmap_range_node** %96, align 8
  %98 = bitcast %struct.regmap_range_node* %97 to %struct.regmap*
  %99 = load %struct.regmap*, %struct.regmap** %14, align 8
  %100 = getelementptr inbounds %struct.regmap, %struct.regmap* %99, i32 0, i32 50
  store %struct.regmap* %98, %struct.regmap** %100, align 8
  br label %197

101:                                              ; preds = %79, %74
  %102 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %103 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %102, i32 0, i32 32
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %149

106:                                              ; preds = %101
  %107 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %108 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %107, i32 0, i32 31
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @hwspin_lock_request_specific(i32 %109)
  %111 = load %struct.regmap*, %struct.regmap** %14, align 8
  %112 = getelementptr inbounds %struct.regmap, %struct.regmap* %111, i32 0, i32 14
  store i64 %110, i64* %112, align 8
  %113 = load %struct.regmap*, %struct.regmap** %14, align 8
  %114 = getelementptr inbounds %struct.regmap, %struct.regmap* %113, i32 0, i32 14
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %106
  %118 = load i32, i32* @ENXIO, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %15, align 4
  br label %1156

120:                                              ; preds = %106
  %121 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %122 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  switch i32 %123, label %138 [
    i32 131, label %124
    i32 132, label %131
  ]

124:                                              ; preds = %120
  %125 = load i64, i64* @regmap_lock_hwlock_irqsave, align 8
  %126 = load %struct.regmap*, %struct.regmap** %14, align 8
  %127 = getelementptr inbounds %struct.regmap, %struct.regmap* %126, i32 0, i32 53
  store i64 %125, i64* %127, align 8
  %128 = load i64, i64* @regmap_unlock_hwlock_irqrestore, align 8
  %129 = load %struct.regmap*, %struct.regmap** %14, align 8
  %130 = getelementptr inbounds %struct.regmap, %struct.regmap* %129, i32 0, i32 52
  store i64 %128, i64* %130, align 8
  br label %145

131:                                              ; preds = %120
  %132 = load i64, i64* @regmap_lock_hwlock_irq, align 8
  %133 = load %struct.regmap*, %struct.regmap** %14, align 8
  %134 = getelementptr inbounds %struct.regmap, %struct.regmap* %133, i32 0, i32 53
  store i64 %132, i64* %134, align 8
  %135 = load i64, i64* @regmap_unlock_hwlock_irq, align 8
  %136 = load %struct.regmap*, %struct.regmap** %14, align 8
  %137 = getelementptr inbounds %struct.regmap, %struct.regmap* %136, i32 0, i32 52
  store i64 %135, i64* %137, align 8
  br label %145

138:                                              ; preds = %120
  %139 = load i64, i64* @regmap_lock_hwlock, align 8
  %140 = load %struct.regmap*, %struct.regmap** %14, align 8
  %141 = getelementptr inbounds %struct.regmap, %struct.regmap* %140, i32 0, i32 53
  store i64 %139, i64* %141, align 8
  %142 = load i64, i64* @regmap_unlock_hwlock, align 8
  %143 = load %struct.regmap*, %struct.regmap** %14, align 8
  %144 = getelementptr inbounds %struct.regmap, %struct.regmap* %143, i32 0, i32 52
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %138, %131, %124
  %146 = load %struct.regmap*, %struct.regmap** %14, align 8
  %147 = load %struct.regmap*, %struct.regmap** %14, align 8
  %148 = getelementptr inbounds %struct.regmap, %struct.regmap* %147, i32 0, i32 50
  store %struct.regmap* %146, %struct.regmap** %148, align 8
  br label %196

149:                                              ; preds = %101
  %150 = load %struct.regmap_bus*, %struct.regmap_bus** %9, align 8
  %151 = icmp ne %struct.regmap_bus* %150, null
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load %struct.regmap_bus*, %struct.regmap_bus** %9, align 8
  %154 = getelementptr inbounds %struct.regmap_bus, %struct.regmap_bus* %153, i32 0, i32 6
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %152, %149
  %158 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %159 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %158, i32 0, i32 30
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %177

162:                                              ; preds = %157, %152
  %163 = load %struct.regmap*, %struct.regmap** %14, align 8
  %164 = getelementptr inbounds %struct.regmap, %struct.regmap* %163, i32 0, i32 54
  %165 = call i32 @spin_lock_init(i32* %164)
  %166 = load i64, i64* @regmap_lock_spinlock, align 8
  %167 = load %struct.regmap*, %struct.regmap** %14, align 8
  %168 = getelementptr inbounds %struct.regmap, %struct.regmap* %167, i32 0, i32 53
  store i64 %166, i64* %168, align 8
  %169 = load i64, i64* @regmap_unlock_spinlock, align 8
  %170 = load %struct.regmap*, %struct.regmap** %14, align 8
  %171 = getelementptr inbounds %struct.regmap, %struct.regmap* %170, i32 0, i32 52
  store i64 %169, i64* %171, align 8
  %172 = load %struct.regmap*, %struct.regmap** %14, align 8
  %173 = getelementptr inbounds %struct.regmap, %struct.regmap* %172, i32 0, i32 54
  %174 = load %struct.lock_class_key*, %struct.lock_class_key** %12, align 8
  %175 = load i8*, i8** %13, align 8
  %176 = call i32 @lockdep_set_class_and_name(i32* %173, %struct.lock_class_key* %174, i8* %175)
  br label %192

177:                                              ; preds = %157
  %178 = load %struct.regmap*, %struct.regmap** %14, align 8
  %179 = getelementptr inbounds %struct.regmap, %struct.regmap* %178, i32 0, i32 51
  %180 = call i32 @mutex_init(i32* %179)
  %181 = load i64, i64* @regmap_lock_mutex, align 8
  %182 = load %struct.regmap*, %struct.regmap** %14, align 8
  %183 = getelementptr inbounds %struct.regmap, %struct.regmap* %182, i32 0, i32 53
  store i64 %181, i64* %183, align 8
  %184 = load i64, i64* @regmap_unlock_mutex, align 8
  %185 = load %struct.regmap*, %struct.regmap** %14, align 8
  %186 = getelementptr inbounds %struct.regmap, %struct.regmap* %185, i32 0, i32 52
  store i64 %184, i64* %186, align 8
  %187 = load %struct.regmap*, %struct.regmap** %14, align 8
  %188 = getelementptr inbounds %struct.regmap, %struct.regmap* %187, i32 0, i32 51
  %189 = load %struct.lock_class_key*, %struct.lock_class_key** %12, align 8
  %190 = load i8*, i8** %13, align 8
  %191 = call i32 @lockdep_set_class_and_name(i32* %188, %struct.lock_class_key* %189, i8* %190)
  br label %192

192:                                              ; preds = %177, %162
  %193 = load %struct.regmap*, %struct.regmap** %14, align 8
  %194 = load %struct.regmap*, %struct.regmap** %14, align 8
  %195 = getelementptr inbounds %struct.regmap, %struct.regmap* %194, i32 0, i32 50
  store %struct.regmap* %193, %struct.regmap** %195, align 8
  br label %196

196:                                              ; preds = %192, %145
  br label %197

197:                                              ; preds = %196, %84
  br label %198

198:                                              ; preds = %197, %65
  %199 = load %struct.regmap_bus*, %struct.regmap_bus** %9, align 8
  %200 = icmp ne %struct.regmap_bus* %199, null
  br i1 %200, label %201, label %206

201:                                              ; preds = %198
  %202 = load %struct.regmap_bus*, %struct.regmap_bus** %9, align 8
  %203 = getelementptr inbounds %struct.regmap_bus, %struct.regmap_bus* %202, i32 0, i32 6
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %201, %198
  %207 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %208 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %207, i32 0, i32 30
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %206, %201
  %212 = load i32, i32* @GFP_ATOMIC, align 4
  %213 = load %struct.regmap*, %struct.regmap** %14, align 8
  %214 = getelementptr inbounds %struct.regmap, %struct.regmap* %213, i32 0, i32 49
  store i32 %212, i32* %214, align 8
  br label %219

215:                                              ; preds = %206
  %216 = load i32, i32* @GFP_KERNEL, align 4
  %217 = load %struct.regmap*, %struct.regmap** %14, align 8
  %218 = getelementptr inbounds %struct.regmap, %struct.regmap* %217, i32 0, i32 49
  store i32 %216, i32* %218, align 8
  br label %219

219:                                              ; preds = %215, %211
  %220 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %221 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i8* @DIV_ROUND_UP(i32 %222, i32 8)
  %224 = load %struct.regmap*, %struct.regmap** %14, align 8
  %225 = getelementptr inbounds %struct.regmap, %struct.regmap* %224, i32 0, i32 17
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 8
  store i8* %223, i8** %226, align 8
  %227 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %228 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = sdiv i32 %229, 8
  %231 = load %struct.regmap*, %struct.regmap** %14, align 8
  %232 = getelementptr inbounds %struct.regmap, %struct.regmap* %231, i32 0, i32 17
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 0
  store i32 %230, i32* %233, align 8
  %234 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %235 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = call i8* @DIV_ROUND_UP(i32 %236, i32 8)
  %238 = load %struct.regmap*, %struct.regmap** %14, align 8
  %239 = getelementptr inbounds %struct.regmap, %struct.regmap* %238, i32 0, i32 17
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 7
  store i8* %237, i8** %240, align 8
  %241 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %242 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %245 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %243, %246
  %248 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %249 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = add nsw i32 %247, %250
  %252 = call i8* @DIV_ROUND_UP(i32 %251, i32 8)
  %253 = ptrtoint i8* %252 to i32
  %254 = load %struct.regmap*, %struct.regmap** %14, align 8
  %255 = getelementptr inbounds %struct.regmap, %struct.regmap* %254, i32 0, i32 17
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 1
  store i32 %253, i32* %256, align 4
  %257 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %258 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = srem i32 %259, 8
  %261 = load %struct.regmap*, %struct.regmap** %14, align 8
  %262 = getelementptr inbounds %struct.regmap, %struct.regmap* %261, i32 0, i32 0
  store i32 %260, i32* %262, align 8
  %263 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %264 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 8
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %219
  %268 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %269 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.regmap*, %struct.regmap** %14, align 8
  %272 = getelementptr inbounds %struct.regmap, %struct.regmap* %271, i32 0, i32 1
  store i32 %270, i32* %272, align 4
  br label %276

273:                                              ; preds = %219
  %274 = load %struct.regmap*, %struct.regmap** %14, align 8
  %275 = getelementptr inbounds %struct.regmap, %struct.regmap* %274, i32 0, i32 1
  store i32 1, i32* %275, align 4
  br label %276

276:                                              ; preds = %273, %267
  %277 = load %struct.regmap*, %struct.regmap** %14, align 8
  %278 = getelementptr inbounds %struct.regmap, %struct.regmap* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = call i64 @is_power_of_2(i32 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %289

282:                                              ; preds = %276
  %283 = load %struct.regmap*, %struct.regmap** %14, align 8
  %284 = getelementptr inbounds %struct.regmap, %struct.regmap* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @ilog2(i32 %285)
  %287 = load %struct.regmap*, %struct.regmap** %14, align 8
  %288 = getelementptr inbounds %struct.regmap, %struct.regmap* %287, i32 0, i32 2
  store i32 %286, i32* %288, align 8
  br label %292

289:                                              ; preds = %276
  %290 = load %struct.regmap*, %struct.regmap** %14, align 8
  %291 = getelementptr inbounds %struct.regmap, %struct.regmap* %290, i32 0, i32 2
  store i32 -1, i32* %291, align 8
  br label %292

292:                                              ; preds = %289, %282
  %293 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %294 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %293, i32 0, i32 29
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %306, label %297

297:                                              ; preds = %292
  %298 = load %struct.regmap_bus*, %struct.regmap_bus** %9, align 8
  %299 = icmp ne %struct.regmap_bus* %298, null
  br i1 %299, label %300, label %306

300:                                              ; preds = %297
  %301 = load %struct.regmap_bus*, %struct.regmap_bus** %9, align 8
  %302 = getelementptr inbounds %struct.regmap_bus, %struct.regmap_bus* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = icmp ne i32 %303, 0
  %305 = xor i1 %304, true
  br label %306

306:                                              ; preds = %300, %297, %292
  %307 = phi i1 [ true, %297 ], [ true, %292 ], [ %305, %300 ]
  %308 = zext i1 %307 to i32
  %309 = load %struct.regmap*, %struct.regmap** %14, align 8
  %310 = getelementptr inbounds %struct.regmap, %struct.regmap* %309, i32 0, i32 3
  store i32 %308, i32* %310, align 4
  %311 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %312 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %311, i32 0, i32 28
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %324, label %315

315:                                              ; preds = %306
  %316 = load %struct.regmap_bus*, %struct.regmap_bus** %9, align 8
  %317 = icmp ne %struct.regmap_bus* %316, null
  br i1 %317, label %318, label %324

318:                                              ; preds = %315
  %319 = load %struct.regmap_bus*, %struct.regmap_bus** %9, align 8
  %320 = getelementptr inbounds %struct.regmap_bus, %struct.regmap_bus* %319, i32 0, i32 1
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  %323 = xor i1 %322, true
  br label %324

324:                                              ; preds = %318, %315, %306
  %325 = phi i1 [ true, %315 ], [ true, %306 ], [ %323, %318 ]
  %326 = zext i1 %325 to i32
  %327 = load %struct.regmap*, %struct.regmap** %14, align 8
  %328 = getelementptr inbounds %struct.regmap, %struct.regmap* %327, i32 0, i32 4
  store i32 %326, i32* %328, align 8
  %329 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %330 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %329, i32 0, i32 27
  %331 = load i64, i64* %330, align 8
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %341

333:                                              ; preds = %324
  %334 = load %struct.regmap_bus*, %struct.regmap_bus** %9, align 8
  %335 = icmp ne %struct.regmap_bus* %334, null
  br i1 %335, label %336, label %341

336:                                              ; preds = %333
  %337 = load %struct.regmap_bus*, %struct.regmap_bus** %9, align 8
  %338 = getelementptr inbounds %struct.regmap_bus, %struct.regmap_bus* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %339, 0
  br label %341

341:                                              ; preds = %336, %333, %324
  %342 = phi i1 [ false, %333 ], [ false, %324 ], [ %340, %336 ]
  %343 = zext i1 %342 to i32
  %344 = load %struct.regmap*, %struct.regmap** %14, align 8
  %345 = getelementptr inbounds %struct.regmap, %struct.regmap* %344, i32 0, i32 5
  store i32 %343, i32* %345, align 4
  %346 = load %struct.regmap_bus*, %struct.regmap_bus** %9, align 8
  %347 = icmp ne %struct.regmap_bus* %346, null
  br i1 %347, label %348, label %359

348:                                              ; preds = %341
  %349 = load %struct.regmap_bus*, %struct.regmap_bus** %9, align 8
  %350 = getelementptr inbounds %struct.regmap_bus, %struct.regmap_bus* %349, i32 0, i32 5
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.regmap*, %struct.regmap** %14, align 8
  %353 = getelementptr inbounds %struct.regmap, %struct.regmap* %352, i32 0, i32 48
  store i32 %351, i32* %353, align 4
  %354 = load %struct.regmap_bus*, %struct.regmap_bus** %9, align 8
  %355 = getelementptr inbounds %struct.regmap_bus, %struct.regmap_bus* %354, i32 0, i32 4
  %356 = load i32, i32* %355, align 8
  %357 = load %struct.regmap*, %struct.regmap** %14, align 8
  %358 = getelementptr inbounds %struct.regmap, %struct.regmap* %357, i32 0, i32 47
  store i32 %356, i32* %358, align 8
  br label %359

359:                                              ; preds = %348, %341
  %360 = load %struct.device*, %struct.device** %8, align 8
  %361 = load %struct.regmap*, %struct.regmap** %14, align 8
  %362 = getelementptr inbounds %struct.regmap, %struct.regmap* %361, i32 0, i32 18
  store %struct.device* %360, %struct.device** %362, align 8
  %363 = load %struct.regmap_bus*, %struct.regmap_bus** %9, align 8
  %364 = load %struct.regmap*, %struct.regmap** %14, align 8
  %365 = getelementptr inbounds %struct.regmap, %struct.regmap* %364, i32 0, i32 46
  store %struct.regmap_bus* %363, %struct.regmap_bus** %365, align 8
  %366 = load i8*, i8** %10, align 8
  %367 = load %struct.regmap*, %struct.regmap** %14, align 8
  %368 = getelementptr inbounds %struct.regmap, %struct.regmap* %367, i32 0, i32 45
  store i8* %366, i8** %368, align 8
  %369 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %370 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %369, i32 0, i32 5
  %371 = load i64, i64* %370, align 8
  %372 = load %struct.regmap*, %struct.regmap** %14, align 8
  %373 = getelementptr inbounds %struct.regmap, %struct.regmap* %372, i32 0, i32 6
  store i64 %371, i64* %373, align 8
  %374 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %375 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %374, i32 0, i32 26
  %376 = load i32, i32* %375, align 8
  %377 = load %struct.regmap*, %struct.regmap** %14, align 8
  %378 = getelementptr inbounds %struct.regmap, %struct.regmap* %377, i32 0, i32 44
  store i32 %376, i32* %378, align 8
  %379 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %380 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %379, i32 0, i32 25
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.regmap*, %struct.regmap** %14, align 8
  %383 = getelementptr inbounds %struct.regmap, %struct.regmap* %382, i32 0, i32 43
  store i32 %381, i32* %383, align 4
  %384 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %385 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %384, i32 0, i32 24
  %386 = load i32, i32* %385, align 8
  %387 = load %struct.regmap*, %struct.regmap** %14, align 8
  %388 = getelementptr inbounds %struct.regmap, %struct.regmap* %387, i32 0, i32 42
  store i32 %386, i32* %388, align 8
  %389 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %390 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %389, i32 0, i32 23
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.regmap*, %struct.regmap** %14, align 8
  %393 = getelementptr inbounds %struct.regmap, %struct.regmap* %392, i32 0, i32 41
  store i32 %391, i32* %393, align 4
  %394 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %395 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %394, i32 0, i32 22
  %396 = load i32, i32* %395, align 8
  %397 = load %struct.regmap*, %struct.regmap** %14, align 8
  %398 = getelementptr inbounds %struct.regmap, %struct.regmap* %397, i32 0, i32 40
  store i32 %396, i32* %398, align 8
  %399 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %400 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %399, i32 0, i32 21
  %401 = load i32, i32* %400, align 4
  %402 = load %struct.regmap*, %struct.regmap** %14, align 8
  %403 = getelementptr inbounds %struct.regmap, %struct.regmap* %402, i32 0, i32 39
  store i32 %401, i32* %403, align 4
  %404 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %405 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %404, i32 0, i32 20
  %406 = load i32, i32* %405, align 8
  %407 = load %struct.regmap*, %struct.regmap** %14, align 8
  %408 = getelementptr inbounds %struct.regmap, %struct.regmap* %407, i32 0, i32 38
  store i32 %406, i32* %408, align 8
  %409 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %410 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %409, i32 0, i32 19
  %411 = load i32, i32* %410, align 4
  %412 = load %struct.regmap*, %struct.regmap** %14, align 8
  %413 = getelementptr inbounds %struct.regmap, %struct.regmap* %412, i32 0, i32 37
  store i32 %411, i32* %413, align 4
  %414 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %415 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %414, i32 0, i32 18
  %416 = load i32, i32* %415, align 8
  %417 = load %struct.regmap*, %struct.regmap** %14, align 8
  %418 = getelementptr inbounds %struct.regmap, %struct.regmap* %417, i32 0, i32 36
  store i32 %416, i32* %418, align 8
  %419 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %420 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %419, i32 0, i32 17
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.regmap*, %struct.regmap** %14, align 8
  %423 = getelementptr inbounds %struct.regmap, %struct.regmap* %422, i32 0, i32 35
  store i32 %421, i32* %423, align 4
  %424 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %425 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %424, i32 0, i32 16
  %426 = load i32, i32* %425, align 8
  %427 = load %struct.regmap*, %struct.regmap** %14, align 8
  %428 = getelementptr inbounds %struct.regmap, %struct.regmap* %427, i32 0, i32 34
  store i32 %426, i32* %428, align 8
  %429 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %430 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %429, i32 0, i32 15
  %431 = load i32, i32* %430, align 4
  %432 = load %struct.regmap*, %struct.regmap** %14, align 8
  %433 = getelementptr inbounds %struct.regmap, %struct.regmap* %432, i32 0, i32 33
  store i32 %431, i32* %433, align 4
  %434 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %435 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %434, i32 0, i32 14
  %436 = load i32, i32* %435, align 8
  %437 = load %struct.regmap*, %struct.regmap** %14, align 8
  %438 = getelementptr inbounds %struct.regmap, %struct.regmap* %437, i32 0, i32 32
  store i32 %436, i32* %438, align 8
  %439 = load %struct.regmap*, %struct.regmap** %14, align 8
  %440 = getelementptr inbounds %struct.regmap, %struct.regmap* %439, i32 0, i32 31
  %441 = call i32 @spin_lock_init(i32* %440)
  %442 = load %struct.regmap*, %struct.regmap** %14, align 8
  %443 = getelementptr inbounds %struct.regmap, %struct.regmap* %442, i32 0, i32 30
  %444 = call i32 @INIT_LIST_HEAD(i32* %443)
  %445 = load %struct.regmap*, %struct.regmap** %14, align 8
  %446 = getelementptr inbounds %struct.regmap, %struct.regmap* %445, i32 0, i32 29
  %447 = call i32 @INIT_LIST_HEAD(i32* %446)
  %448 = load %struct.regmap*, %struct.regmap** %14, align 8
  %449 = getelementptr inbounds %struct.regmap, %struct.regmap* %448, i32 0, i32 28
  %450 = call i32 @init_waitqueue_head(i32* %449)
  %451 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %452 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %451, i32 0, i32 12
  %453 = load i64, i64* %452, align 8
  %454 = icmp ne i64 %453, 0
  br i1 %454, label %465, label %455

455:                                              ; preds = %359
  %456 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %457 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %456, i32 0, i32 11
  %458 = load i64, i64* %457, align 8
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %465, label %460

460:                                              ; preds = %455
  %461 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %462 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %461, i32 0, i32 13
  %463 = load i64, i64* %462, align 8
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %465, label %476

465:                                              ; preds = %460, %455, %359
  %466 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %467 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %466, i32 0, i32 12
  %468 = load i64, i64* %467, align 8
  %469 = load %struct.regmap*, %struct.regmap** %14, align 8
  %470 = getelementptr inbounds %struct.regmap, %struct.regmap* %469, i32 0, i32 26
  store i64 %468, i64* %470, align 8
  %471 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %472 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %471, i32 0, i32 11
  %473 = load i64, i64* %472, align 8
  %474 = load %struct.regmap*, %struct.regmap** %14, align 8
  %475 = getelementptr inbounds %struct.regmap, %struct.regmap* %474, i32 0, i32 27
  store i64 %473, i64* %475, align 8
  br label %486

476:                                              ; preds = %460
  %477 = load %struct.regmap_bus*, %struct.regmap_bus** %9, align 8
  %478 = icmp ne %struct.regmap_bus* %477, null
  br i1 %478, label %479, label %485

479:                                              ; preds = %476
  %480 = load %struct.regmap_bus*, %struct.regmap_bus** %9, align 8
  %481 = getelementptr inbounds %struct.regmap_bus, %struct.regmap_bus* %480, i32 0, i32 3
  %482 = load i64, i64* %481, align 8
  %483 = load %struct.regmap*, %struct.regmap** %14, align 8
  %484 = getelementptr inbounds %struct.regmap, %struct.regmap* %483, i32 0, i32 26
  store i64 %482, i64* %484, align 8
  br label %485

485:                                              ; preds = %479, %476
  br label %486

486:                                              ; preds = %485, %465
  %487 = load %struct.regmap_bus*, %struct.regmap_bus** %9, align 8
  %488 = icmp ne %struct.regmap_bus* %487, null
  br i1 %488, label %502, label %489

489:                                              ; preds = %486
  %490 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %491 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %490, i32 0, i32 10
  %492 = load i32, i32* %491, align 4
  %493 = load %struct.regmap*, %struct.regmap** %14, align 8
  %494 = getelementptr inbounds %struct.regmap, %struct.regmap* %493, i32 0, i32 25
  store i32 %492, i32* %494, align 4
  %495 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %496 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %495, i32 0, i32 9
  %497 = load i32, i32* %496, align 8
  %498 = load %struct.regmap*, %struct.regmap** %14, align 8
  %499 = getelementptr inbounds %struct.regmap, %struct.regmap* %498, i32 0, i32 23
  store i32 %497, i32* %499, align 4
  %500 = load %struct.regmap*, %struct.regmap** %14, align 8
  %501 = getelementptr inbounds %struct.regmap, %struct.regmap* %500, i32 0, i32 7
  store i32 0, i32* %501, align 8
  br label %837

502:                                              ; preds = %486
  %503 = load %struct.regmap_bus*, %struct.regmap_bus** %9, align 8
  %504 = getelementptr inbounds %struct.regmap_bus, %struct.regmap_bus* %503, i32 0, i32 2
  %505 = load i32, i32* %504, align 8
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %512

507:                                              ; preds = %502
  %508 = load %struct.regmap_bus*, %struct.regmap_bus** %9, align 8
  %509 = getelementptr inbounds %struct.regmap_bus, %struct.regmap_bus* %508, i32 0, i32 1
  %510 = load i64, i64* %509, align 8
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %521, label %512

512:                                              ; preds = %507, %502
  %513 = load i32, i32* @_regmap_bus_reg_read, align 4
  %514 = load %struct.regmap*, %struct.regmap** %14, align 8
  %515 = getelementptr inbounds %struct.regmap, %struct.regmap* %514, i32 0, i32 25
  store i32 %513, i32* %515, align 4
  %516 = load i32, i32* @_regmap_bus_reg_write, align 4
  %517 = load %struct.regmap*, %struct.regmap** %14, align 8
  %518 = getelementptr inbounds %struct.regmap, %struct.regmap* %517, i32 0, i32 23
  store i32 %516, i32* %518, align 4
  %519 = load %struct.regmap*, %struct.regmap** %14, align 8
  %520 = getelementptr inbounds %struct.regmap, %struct.regmap* %519, i32 0, i32 7
  store i32 0, i32* %520, align 8
  br label %837

521:                                              ; preds = %507
  %522 = load i32, i32* @_regmap_bus_read, align 4
  %523 = load %struct.regmap*, %struct.regmap** %14, align 8
  %524 = getelementptr inbounds %struct.regmap, %struct.regmap* %523, i32 0, i32 25
  store i32 %522, i32* %524, align 4
  %525 = load %struct.regmap_bus*, %struct.regmap_bus** %9, align 8
  %526 = getelementptr inbounds %struct.regmap_bus, %struct.regmap_bus* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 8
  %528 = load %struct.regmap*, %struct.regmap** %14, align 8
  %529 = getelementptr inbounds %struct.regmap, %struct.regmap* %528, i32 0, i32 24
  store i32 %527, i32* %529, align 8
  br label %530

530:                                              ; preds = %521
  br label %531

531:                                              ; preds = %530
  %532 = load %struct.regmap_bus*, %struct.regmap_bus** %9, align 8
  %533 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %534 = call i32 @regmap_get_reg_endian(%struct.regmap_bus* %532, %struct.regmap_config* %533)
  store i32 %534, i32* %16, align 4
  %535 = load %struct.device*, %struct.device** %8, align 8
  %536 = load %struct.regmap_bus*, %struct.regmap_bus** %9, align 8
  %537 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %538 = call i32 @regmap_get_val_endian(%struct.device* %535, %struct.regmap_bus* %536, %struct.regmap_config* %537)
  store i32 %538, i32* %17, align 4
  %539 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %540 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %539, i32 0, i32 1
  %541 = load i32, i32* %540, align 4
  %542 = load %struct.regmap*, %struct.regmap** %14, align 8
  %543 = getelementptr inbounds %struct.regmap, %struct.regmap* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 8
  %545 = add nsw i32 %541, %544
  switch i32 %545, label %642 [
    i32 2, label %546
    i32 4, label %557
    i32 7, label %568
    i32 10, label %579
    i32 8, label %590
    i32 16, label %595
    i32 24, label %614
    i32 32, label %623
  ]

546:                                              ; preds = %531
  %547 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %548 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %547, i32 0, i32 3
  %549 = load i32, i32* %548, align 4
  switch i32 %549, label %555 [
    i32 6, label %550
  ]

550:                                              ; preds = %546
  %551 = load i64, i64* @regmap_format_2_6_write, align 8
  %552 = load %struct.regmap*, %struct.regmap** %14, align 8
  %553 = getelementptr inbounds %struct.regmap, %struct.regmap* %552, i32 0, i32 17
  %554 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %553, i32 0, i32 3
  store i64 %551, i64* %554, align 8
  br label %556

555:                                              ; preds = %546
  br label %1145

556:                                              ; preds = %550
  br label %643

557:                                              ; preds = %531
  %558 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %559 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %558, i32 0, i32 3
  %560 = load i32, i32* %559, align 4
  switch i32 %560, label %566 [
    i32 12, label %561
  ]

561:                                              ; preds = %557
  %562 = load i64, i64* @regmap_format_4_12_write, align 8
  %563 = load %struct.regmap*, %struct.regmap** %14, align 8
  %564 = getelementptr inbounds %struct.regmap, %struct.regmap* %563, i32 0, i32 17
  %565 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %564, i32 0, i32 3
  store i64 %562, i64* %565, align 8
  br label %567

566:                                              ; preds = %557
  br label %1145

567:                                              ; preds = %561
  br label %643

568:                                              ; preds = %531
  %569 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %570 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %569, i32 0, i32 3
  %571 = load i32, i32* %570, align 4
  switch i32 %571, label %577 [
    i32 9, label %572
  ]

572:                                              ; preds = %568
  %573 = load i64, i64* @regmap_format_7_9_write, align 8
  %574 = load %struct.regmap*, %struct.regmap** %14, align 8
  %575 = getelementptr inbounds %struct.regmap, %struct.regmap* %574, i32 0, i32 17
  %576 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %575, i32 0, i32 3
  store i64 %573, i64* %576, align 8
  br label %578

577:                                              ; preds = %568
  br label %1145

578:                                              ; preds = %572
  br label %643

579:                                              ; preds = %531
  %580 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %581 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %580, i32 0, i32 3
  %582 = load i32, i32* %581, align 4
  switch i32 %582, label %588 [
    i32 14, label %583
  ]

583:                                              ; preds = %579
  %584 = load i64, i64* @regmap_format_10_14_write, align 8
  %585 = load %struct.regmap*, %struct.regmap** %14, align 8
  %586 = getelementptr inbounds %struct.regmap, %struct.regmap* %585, i32 0, i32 17
  %587 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %586, i32 0, i32 3
  store i64 %584, i64* %587, align 8
  br label %589

588:                                              ; preds = %579
  br label %1145

589:                                              ; preds = %583
  br label %643

590:                                              ; preds = %531
  %591 = load i8*, i8** @regmap_format_8, align 8
  %592 = load %struct.regmap*, %struct.regmap** %14, align 8
  %593 = getelementptr inbounds %struct.regmap, %struct.regmap* %592, i32 0, i32 17
  %594 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %593, i32 0, i32 4
  store i8* %591, i8** %594, align 8
  br label %643

595:                                              ; preds = %531
  %596 = load i32, i32* %16, align 4
  switch i32 %596, label %612 [
    i32 130, label %597
    i32 129, label %602
    i32 128, label %607
  ]

597:                                              ; preds = %595
  %598 = load i8*, i8** @regmap_format_16_be, align 8
  %599 = load %struct.regmap*, %struct.regmap** %14, align 8
  %600 = getelementptr inbounds %struct.regmap, %struct.regmap* %599, i32 0, i32 17
  %601 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %600, i32 0, i32 4
  store i8* %598, i8** %601, align 8
  br label %613

602:                                              ; preds = %595
  %603 = load i8*, i8** @regmap_format_16_le, align 8
  %604 = load %struct.regmap*, %struct.regmap** %14, align 8
  %605 = getelementptr inbounds %struct.regmap, %struct.regmap* %604, i32 0, i32 17
  %606 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %605, i32 0, i32 4
  store i8* %603, i8** %606, align 8
  br label %613

607:                                              ; preds = %595
  %608 = load i8*, i8** @regmap_format_16_native, align 8
  %609 = load %struct.regmap*, %struct.regmap** %14, align 8
  %610 = getelementptr inbounds %struct.regmap, %struct.regmap* %609, i32 0, i32 17
  %611 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %610, i32 0, i32 4
  store i8* %608, i8** %611, align 8
  br label %613

612:                                              ; preds = %595
  br label %1145

613:                                              ; preds = %607, %602, %597
  br label %643

614:                                              ; preds = %531
  %615 = load i32, i32* %16, align 4
  %616 = icmp ne i32 %615, 130
  br i1 %616, label %617, label %618

617:                                              ; preds = %614
  br label %1145

618:                                              ; preds = %614
  %619 = load i8*, i8** @regmap_format_24, align 8
  %620 = load %struct.regmap*, %struct.regmap** %14, align 8
  %621 = getelementptr inbounds %struct.regmap, %struct.regmap* %620, i32 0, i32 17
  %622 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %621, i32 0, i32 4
  store i8* %619, i8** %622, align 8
  br label %643

623:                                              ; preds = %531
  %624 = load i32, i32* %16, align 4
  switch i32 %624, label %640 [
    i32 130, label %625
    i32 129, label %630
    i32 128, label %635
  ]

625:                                              ; preds = %623
  %626 = load i8*, i8** @regmap_format_32_be, align 8
  %627 = load %struct.regmap*, %struct.regmap** %14, align 8
  %628 = getelementptr inbounds %struct.regmap, %struct.regmap* %627, i32 0, i32 17
  %629 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %628, i32 0, i32 4
  store i8* %626, i8** %629, align 8
  br label %641

630:                                              ; preds = %623
  %631 = load i8*, i8** @regmap_format_32_le, align 8
  %632 = load %struct.regmap*, %struct.regmap** %14, align 8
  %633 = getelementptr inbounds %struct.regmap, %struct.regmap* %632, i32 0, i32 17
  %634 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %633, i32 0, i32 4
  store i8* %631, i8** %634, align 8
  br label %641

635:                                              ; preds = %623
  %636 = load i8*, i8** @regmap_format_32_native, align 8
  %637 = load %struct.regmap*, %struct.regmap** %14, align 8
  %638 = getelementptr inbounds %struct.regmap, %struct.regmap* %637, i32 0, i32 17
  %639 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %638, i32 0, i32 4
  store i8* %636, i8** %639, align 8
  br label %641

640:                                              ; preds = %623
  br label %1145

641:                                              ; preds = %635, %630, %625
  br label %643

642:                                              ; preds = %531
  br label %1145

643:                                              ; preds = %641, %618, %613, %590, %589, %578, %567, %556
  %644 = load i32, i32* %17, align 4
  %645 = icmp eq i32 %644, 128
  br i1 %645, label %646, label %651

646:                                              ; preds = %643
  %647 = load i8*, i8** @regmap_parse_inplace_noop, align 8
  %648 = load %struct.regmap*, %struct.regmap** %14, align 8
  %649 = getelementptr inbounds %struct.regmap, %struct.regmap* %648, i32 0, i32 17
  %650 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %649, i32 0, i32 6
  store i8* %647, i8** %650, align 8
  br label %651

651:                                              ; preds = %646, %643
  %652 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %653 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %652, i32 0, i32 3
  %654 = load i32, i32* %653, align 4
  switch i32 %654, label %759 [
    i32 8, label %655
    i32 16, label %668
    i32 24, label %707
    i32 32, label %720
  ]

655:                                              ; preds = %651
  %656 = load i8*, i8** @regmap_format_8, align 8
  %657 = load %struct.regmap*, %struct.regmap** %14, align 8
  %658 = getelementptr inbounds %struct.regmap, %struct.regmap* %657, i32 0, i32 17
  %659 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %658, i32 0, i32 2
  store i8* %656, i8** %659, align 8
  %660 = load i32, i32* @regmap_parse_8, align 4
  %661 = load %struct.regmap*, %struct.regmap** %14, align 8
  %662 = getelementptr inbounds %struct.regmap, %struct.regmap* %661, i32 0, i32 17
  %663 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %662, i32 0, i32 5
  store i32 %660, i32* %663, align 8
  %664 = load i8*, i8** @regmap_parse_inplace_noop, align 8
  %665 = load %struct.regmap*, %struct.regmap** %14, align 8
  %666 = getelementptr inbounds %struct.regmap, %struct.regmap* %665, i32 0, i32 17
  %667 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %666, i32 0, i32 6
  store i8* %664, i8** %667, align 8
  br label %759

668:                                              ; preds = %651
  %669 = load i32, i32* %17, align 4
  switch i32 %669, label %705 [
    i32 130, label %670
    i32 129, label %683
    i32 128, label %696
  ]

670:                                              ; preds = %668
  %671 = load i8*, i8** @regmap_format_16_be, align 8
  %672 = load %struct.regmap*, %struct.regmap** %14, align 8
  %673 = getelementptr inbounds %struct.regmap, %struct.regmap* %672, i32 0, i32 17
  %674 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %673, i32 0, i32 2
  store i8* %671, i8** %674, align 8
  %675 = load i32, i32* @regmap_parse_16_be, align 4
  %676 = load %struct.regmap*, %struct.regmap** %14, align 8
  %677 = getelementptr inbounds %struct.regmap, %struct.regmap* %676, i32 0, i32 17
  %678 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %677, i32 0, i32 5
  store i32 %675, i32* %678, align 8
  %679 = load i8*, i8** @regmap_parse_16_be_inplace, align 8
  %680 = load %struct.regmap*, %struct.regmap** %14, align 8
  %681 = getelementptr inbounds %struct.regmap, %struct.regmap* %680, i32 0, i32 17
  %682 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %681, i32 0, i32 6
  store i8* %679, i8** %682, align 8
  br label %706

683:                                              ; preds = %668
  %684 = load i8*, i8** @regmap_format_16_le, align 8
  %685 = load %struct.regmap*, %struct.regmap** %14, align 8
  %686 = getelementptr inbounds %struct.regmap, %struct.regmap* %685, i32 0, i32 17
  %687 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %686, i32 0, i32 2
  store i8* %684, i8** %687, align 8
  %688 = load i32, i32* @regmap_parse_16_le, align 4
  %689 = load %struct.regmap*, %struct.regmap** %14, align 8
  %690 = getelementptr inbounds %struct.regmap, %struct.regmap* %689, i32 0, i32 17
  %691 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %690, i32 0, i32 5
  store i32 %688, i32* %691, align 8
  %692 = load i8*, i8** @regmap_parse_16_le_inplace, align 8
  %693 = load %struct.regmap*, %struct.regmap** %14, align 8
  %694 = getelementptr inbounds %struct.regmap, %struct.regmap* %693, i32 0, i32 17
  %695 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %694, i32 0, i32 6
  store i8* %692, i8** %695, align 8
  br label %706

696:                                              ; preds = %668
  %697 = load i8*, i8** @regmap_format_16_native, align 8
  %698 = load %struct.regmap*, %struct.regmap** %14, align 8
  %699 = getelementptr inbounds %struct.regmap, %struct.regmap* %698, i32 0, i32 17
  %700 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %699, i32 0, i32 2
  store i8* %697, i8** %700, align 8
  %701 = load i32, i32* @regmap_parse_16_native, align 4
  %702 = load %struct.regmap*, %struct.regmap** %14, align 8
  %703 = getelementptr inbounds %struct.regmap, %struct.regmap* %702, i32 0, i32 17
  %704 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %703, i32 0, i32 5
  store i32 %701, i32* %704, align 8
  br label %706

705:                                              ; preds = %668
  br label %1145

706:                                              ; preds = %696, %683, %670
  br label %759

707:                                              ; preds = %651
  %708 = load i32, i32* %17, align 4
  %709 = icmp ne i32 %708, 130
  br i1 %709, label %710, label %711

710:                                              ; preds = %707
  br label %1145

711:                                              ; preds = %707
  %712 = load i8*, i8** @regmap_format_24, align 8
  %713 = load %struct.regmap*, %struct.regmap** %14, align 8
  %714 = getelementptr inbounds %struct.regmap, %struct.regmap* %713, i32 0, i32 17
  %715 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %714, i32 0, i32 2
  store i8* %712, i8** %715, align 8
  %716 = load i32, i32* @regmap_parse_24, align 4
  %717 = load %struct.regmap*, %struct.regmap** %14, align 8
  %718 = getelementptr inbounds %struct.regmap, %struct.regmap* %717, i32 0, i32 17
  %719 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %718, i32 0, i32 5
  store i32 %716, i32* %719, align 8
  br label %759

720:                                              ; preds = %651
  %721 = load i32, i32* %17, align 4
  switch i32 %721, label %757 [
    i32 130, label %722
    i32 129, label %735
    i32 128, label %748
  ]

722:                                              ; preds = %720
  %723 = load i8*, i8** @regmap_format_32_be, align 8
  %724 = load %struct.regmap*, %struct.regmap** %14, align 8
  %725 = getelementptr inbounds %struct.regmap, %struct.regmap* %724, i32 0, i32 17
  %726 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %725, i32 0, i32 2
  store i8* %723, i8** %726, align 8
  %727 = load i32, i32* @regmap_parse_32_be, align 4
  %728 = load %struct.regmap*, %struct.regmap** %14, align 8
  %729 = getelementptr inbounds %struct.regmap, %struct.regmap* %728, i32 0, i32 17
  %730 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %729, i32 0, i32 5
  store i32 %727, i32* %730, align 8
  %731 = load i8*, i8** @regmap_parse_32_be_inplace, align 8
  %732 = load %struct.regmap*, %struct.regmap** %14, align 8
  %733 = getelementptr inbounds %struct.regmap, %struct.regmap* %732, i32 0, i32 17
  %734 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %733, i32 0, i32 6
  store i8* %731, i8** %734, align 8
  br label %758

735:                                              ; preds = %720
  %736 = load i8*, i8** @regmap_format_32_le, align 8
  %737 = load %struct.regmap*, %struct.regmap** %14, align 8
  %738 = getelementptr inbounds %struct.regmap, %struct.regmap* %737, i32 0, i32 17
  %739 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %738, i32 0, i32 2
  store i8* %736, i8** %739, align 8
  %740 = load i32, i32* @regmap_parse_32_le, align 4
  %741 = load %struct.regmap*, %struct.regmap** %14, align 8
  %742 = getelementptr inbounds %struct.regmap, %struct.regmap* %741, i32 0, i32 17
  %743 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %742, i32 0, i32 5
  store i32 %740, i32* %743, align 8
  %744 = load i8*, i8** @regmap_parse_32_le_inplace, align 8
  %745 = load %struct.regmap*, %struct.regmap** %14, align 8
  %746 = getelementptr inbounds %struct.regmap, %struct.regmap* %745, i32 0, i32 17
  %747 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %746, i32 0, i32 6
  store i8* %744, i8** %747, align 8
  br label %758

748:                                              ; preds = %720
  %749 = load i8*, i8** @regmap_format_32_native, align 8
  %750 = load %struct.regmap*, %struct.regmap** %14, align 8
  %751 = getelementptr inbounds %struct.regmap, %struct.regmap* %750, i32 0, i32 17
  %752 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %751, i32 0, i32 2
  store i8* %749, i8** %752, align 8
  %753 = load i32, i32* @regmap_parse_32_native, align 4
  %754 = load %struct.regmap*, %struct.regmap** %14, align 8
  %755 = getelementptr inbounds %struct.regmap, %struct.regmap* %754, i32 0, i32 17
  %756 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %755, i32 0, i32 5
  store i32 %753, i32* %756, align 8
  br label %758

757:                                              ; preds = %720
  br label %1145

758:                                              ; preds = %748, %735, %722
  br label %759

759:                                              ; preds = %651, %758, %711, %706, %655
  %760 = load %struct.regmap*, %struct.regmap** %14, align 8
  %761 = getelementptr inbounds %struct.regmap, %struct.regmap* %760, i32 0, i32 17
  %762 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %761, i32 0, i32 3
  %763 = load i64, i64* %762, align 8
  %764 = icmp ne i64 %763, 0
  br i1 %764, label %765, label %775

765:                                              ; preds = %759
  %766 = load i32, i32* %16, align 4
  %767 = icmp ne i32 %766, 130
  br i1 %767, label %771, label %768

768:                                              ; preds = %765
  %769 = load i32, i32* %17, align 4
  %770 = icmp ne i32 %769, 130
  br i1 %770, label %771, label %772

771:                                              ; preds = %768, %765
  br label %1145

772:                                              ; preds = %768
  %773 = load %struct.regmap*, %struct.regmap** %14, align 8
  %774 = getelementptr inbounds %struct.regmap, %struct.regmap* %773, i32 0, i32 4
  store i32 1, i32* %774, align 8
  br label %775

775:                                              ; preds = %772, %759
  %776 = load %struct.regmap*, %struct.regmap** %14, align 8
  %777 = getelementptr inbounds %struct.regmap, %struct.regmap* %776, i32 0, i32 17
  %778 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %777, i32 0, i32 3
  %779 = load i64, i64* %778, align 8
  %780 = icmp ne i64 %779, 0
  br i1 %780, label %794, label %781

781:                                              ; preds = %775
  %782 = load %struct.regmap*, %struct.regmap** %14, align 8
  %783 = getelementptr inbounds %struct.regmap, %struct.regmap* %782, i32 0, i32 17
  %784 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %783, i32 0, i32 4
  %785 = load i8*, i8** %784, align 8
  %786 = icmp ne i8* %785, null
  br i1 %786, label %787, label %793

787:                                              ; preds = %781
  %788 = load %struct.regmap*, %struct.regmap** %14, align 8
  %789 = getelementptr inbounds %struct.regmap, %struct.regmap* %788, i32 0, i32 17
  %790 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %789, i32 0, i32 2
  %791 = load i8*, i8** %790, align 8
  %792 = icmp ne i8* %791, null
  br i1 %792, label %794, label %793

793:                                              ; preds = %787, %781
  br label %1145

794:                                              ; preds = %787, %775
  %795 = load %struct.regmap*, %struct.regmap** %14, align 8
  %796 = getelementptr inbounds %struct.regmap, %struct.regmap* %795, i32 0, i32 17
  %797 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %796, i32 0, i32 1
  %798 = load i32, i32* %797, align 4
  %799 = load i32, i32* @GFP_KERNEL, align 4
  %800 = call i8* @kzalloc(i32 %798, i32 %799)
  %801 = bitcast i8* %800 to %struct.regmap*
  %802 = load %struct.regmap*, %struct.regmap** %14, align 8
  %803 = getelementptr inbounds %struct.regmap, %struct.regmap* %802, i32 0, i32 15
  store %struct.regmap* %801, %struct.regmap** %803, align 8
  %804 = load %struct.regmap*, %struct.regmap** %14, align 8
  %805 = getelementptr inbounds %struct.regmap, %struct.regmap* %804, i32 0, i32 15
  %806 = load %struct.regmap*, %struct.regmap** %805, align 8
  %807 = icmp eq %struct.regmap* %806, null
  br i1 %807, label %808, label %811

808:                                              ; preds = %794
  %809 = load i32, i32* @ENOMEM, align 4
  %810 = sub nsw i32 0, %809
  store i32 %810, i32* %15, align 4
  br label %1145

811:                                              ; preds = %794
  %812 = load %struct.regmap*, %struct.regmap** %14, align 8
  %813 = getelementptr inbounds %struct.regmap, %struct.regmap* %812, i32 0, i32 17
  %814 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %813, i32 0, i32 3
  %815 = load i64, i64* %814, align 8
  %816 = icmp ne i64 %815, 0
  br i1 %816, label %817, label %823

817:                                              ; preds = %811
  %818 = load %struct.regmap*, %struct.regmap** %14, align 8
  %819 = getelementptr inbounds %struct.regmap, %struct.regmap* %818, i32 0, i32 7
  store i32 0, i32* %819, align 8
  %820 = load i32, i32* @_regmap_bus_formatted_write, align 4
  %821 = load %struct.regmap*, %struct.regmap** %14, align 8
  %822 = getelementptr inbounds %struct.regmap, %struct.regmap* %821, i32 0, i32 23
  store i32 %820, i32* %822, align 4
  br label %836

823:                                              ; preds = %811
  %824 = load %struct.regmap*, %struct.regmap** %14, align 8
  %825 = getelementptr inbounds %struct.regmap, %struct.regmap* %824, i32 0, i32 17
  %826 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %825, i32 0, i32 2
  %827 = load i8*, i8** %826, align 8
  %828 = icmp ne i8* %827, null
  br i1 %828, label %829, label %835

829:                                              ; preds = %823
  %830 = load %struct.regmap*, %struct.regmap** %14, align 8
  %831 = getelementptr inbounds %struct.regmap, %struct.regmap* %830, i32 0, i32 7
  store i32 1, i32* %831, align 8
  %832 = load i32, i32* @_regmap_bus_raw_write, align 4
  %833 = load %struct.regmap*, %struct.regmap** %14, align 8
  %834 = getelementptr inbounds %struct.regmap, %struct.regmap* %833, i32 0, i32 23
  store i32 %832, i32* %834, align 4
  br label %835

835:                                              ; preds = %829, %823
  br label %836

836:                                              ; preds = %835, %817
  br label %837

837:                                              ; preds = %836, %512, %489
  %838 = load i32, i32* @RB_ROOT, align 4
  %839 = load %struct.regmap*, %struct.regmap** %14, align 8
  %840 = getelementptr inbounds %struct.regmap, %struct.regmap* %839, i32 0, i32 22
  store i32 %838, i32* %840, align 8
  store i32 0, i32* %18, align 4
  br label %841

841:                                              ; preds = %1099, %837
  %842 = load i32, i32* %18, align 4
  %843 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %844 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %843, i32 0, i32 6
  %845 = load i32, i32* %844, align 8
  %846 = icmp slt i32 %842, %845
  br i1 %846, label %847, label %1102

847:                                              ; preds = %841
  %848 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %849 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %848, i32 0, i32 8
  %850 = load %struct.regmap_range_cfg*, %struct.regmap_range_cfg** %849, align 8
  %851 = load i32, i32* %18, align 4
  %852 = sext i32 %851 to i64
  %853 = getelementptr inbounds %struct.regmap_range_cfg, %struct.regmap_range_cfg* %850, i64 %852
  store %struct.regmap_range_cfg* %853, %struct.regmap_range_cfg** %20, align 8
  %854 = load %struct.regmap_range_cfg*, %struct.regmap_range_cfg** %20, align 8
  %855 = getelementptr inbounds %struct.regmap_range_cfg, %struct.regmap_range_cfg* %854, i32 0, i32 0
  %856 = load i64, i64* %855, align 8
  %857 = load %struct.regmap_range_cfg*, %struct.regmap_range_cfg** %20, align 8
  %858 = getelementptr inbounds %struct.regmap_range_cfg, %struct.regmap_range_cfg* %857, i32 0, i32 1
  %859 = load i64, i64* %858, align 8
  %860 = icmp slt i64 %856, %859
  br i1 %860, label %861, label %873

861:                                              ; preds = %847
  %862 = load %struct.regmap*, %struct.regmap** %14, align 8
  %863 = getelementptr inbounds %struct.regmap, %struct.regmap* %862, i32 0, i32 18
  %864 = load %struct.device*, %struct.device** %863, align 8
  %865 = load i32, i32* %18, align 4
  %866 = load %struct.regmap_range_cfg*, %struct.regmap_range_cfg** %20, align 8
  %867 = getelementptr inbounds %struct.regmap_range_cfg, %struct.regmap_range_cfg* %866, i32 0, i32 0
  %868 = load i64, i64* %867, align 8
  %869 = load %struct.regmap_range_cfg*, %struct.regmap_range_cfg** %20, align 8
  %870 = getelementptr inbounds %struct.regmap_range_cfg, %struct.regmap_range_cfg* %869, i32 0, i32 1
  %871 = load i64, i64* %870, align 8
  %872 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %864, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %865, i64 %868, i64 %871)
  br label %1136

873:                                              ; preds = %847
  %874 = load %struct.regmap_range_cfg*, %struct.regmap_range_cfg** %20, align 8
  %875 = getelementptr inbounds %struct.regmap_range_cfg, %struct.regmap_range_cfg* %874, i32 0, i32 0
  %876 = load i64, i64* %875, align 8
  %877 = load %struct.regmap*, %struct.regmap** %14, align 8
  %878 = getelementptr inbounds %struct.regmap, %struct.regmap* %877, i32 0, i32 6
  %879 = load i64, i64* %878, align 8
  %880 = icmp sgt i64 %876, %879
  br i1 %880, label %881, label %893

881:                                              ; preds = %873
  %882 = load %struct.regmap*, %struct.regmap** %14, align 8
  %883 = getelementptr inbounds %struct.regmap, %struct.regmap* %882, i32 0, i32 18
  %884 = load %struct.device*, %struct.device** %883, align 8
  %885 = load i32, i32* %18, align 4
  %886 = load %struct.regmap_range_cfg*, %struct.regmap_range_cfg** %20, align 8
  %887 = getelementptr inbounds %struct.regmap_range_cfg, %struct.regmap_range_cfg* %886, i32 0, i32 0
  %888 = load i64, i64* %887, align 8
  %889 = load %struct.regmap*, %struct.regmap** %14, align 8
  %890 = getelementptr inbounds %struct.regmap, %struct.regmap* %889, i32 0, i32 6
  %891 = load i64, i64* %890, align 8
  %892 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %884, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %885, i64 %888, i64 %891)
  br label %1136

893:                                              ; preds = %873
  %894 = load %struct.regmap_range_cfg*, %struct.regmap_range_cfg** %20, align 8
  %895 = getelementptr inbounds %struct.regmap_range_cfg, %struct.regmap_range_cfg* %894, i32 0, i32 2
  %896 = load i64, i64* %895, align 8
  %897 = load %struct.regmap*, %struct.regmap** %14, align 8
  %898 = getelementptr inbounds %struct.regmap, %struct.regmap* %897, i32 0, i32 6
  %899 = load i64, i64* %898, align 8
  %900 = icmp sgt i64 %896, %899
  br i1 %900, label %901, label %907

901:                                              ; preds = %893
  %902 = load %struct.regmap*, %struct.regmap** %14, align 8
  %903 = getelementptr inbounds %struct.regmap, %struct.regmap* %902, i32 0, i32 18
  %904 = load %struct.device*, %struct.device** %903, align 8
  %905 = load i32, i32* %18, align 4
  %906 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %904, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %905)
  br label %1136

907:                                              ; preds = %893
  %908 = load %struct.regmap_range_cfg*, %struct.regmap_range_cfg** %20, align 8
  %909 = getelementptr inbounds %struct.regmap_range_cfg, %struct.regmap_range_cfg* %908, i32 0, i32 3
  %910 = load i64, i64* %909, align 8
  %911 = icmp eq i64 %910, 0
  br i1 %911, label %912, label %918

912:                                              ; preds = %907
  %913 = load %struct.regmap*, %struct.regmap** %14, align 8
  %914 = getelementptr inbounds %struct.regmap, %struct.regmap* %913, i32 0, i32 18
  %915 = load %struct.device*, %struct.device** %914, align 8
  %916 = load i32, i32* %18, align 4
  %917 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %915, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %916)
  br label %1136

918:                                              ; preds = %907
  store i32 0, i32* %19, align 4
  br label %919

919:                                              ; preds = %1003, %918
  %920 = load i32, i32* %19, align 4
  %921 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %922 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %921, i32 0, i32 6
  %923 = load i32, i32* %922, align 8
  %924 = icmp slt i32 %920, %923
  br i1 %924, label %925, label %1006

925:                                              ; preds = %919
  %926 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %927 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %926, i32 0, i32 8
  %928 = load %struct.regmap_range_cfg*, %struct.regmap_range_cfg** %927, align 8
  %929 = load i32, i32* %19, align 4
  %930 = sext i32 %929 to i64
  %931 = getelementptr inbounds %struct.regmap_range_cfg, %struct.regmap_range_cfg* %928, i64 %930
  %932 = getelementptr inbounds %struct.regmap_range_cfg, %struct.regmap_range_cfg* %931, i32 0, i32 2
  %933 = load i64, i64* %932, align 8
  %934 = trunc i64 %933 to i32
  store i32 %934, i32* %22, align 4
  %935 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %936 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %935, i32 0, i32 8
  %937 = load %struct.regmap_range_cfg*, %struct.regmap_range_cfg** %936, align 8
  %938 = load i32, i32* %19, align 4
  %939 = sext i32 %938 to i64
  %940 = getelementptr inbounds %struct.regmap_range_cfg, %struct.regmap_range_cfg* %937, i64 %939
  %941 = getelementptr inbounds %struct.regmap_range_cfg, %struct.regmap_range_cfg* %940, i32 0, i32 4
  %942 = load i32, i32* %941, align 8
  store i32 %942, i32* %23, align 4
  %943 = load i32, i32* %23, align 4
  %944 = zext i32 %943 to i64
  %945 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %946 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %945, i32 0, i32 8
  %947 = load %struct.regmap_range_cfg*, %struct.regmap_range_cfg** %946, align 8
  %948 = load i32, i32* %19, align 4
  %949 = sext i32 %948 to i64
  %950 = getelementptr inbounds %struct.regmap_range_cfg, %struct.regmap_range_cfg* %947, i64 %949
  %951 = getelementptr inbounds %struct.regmap_range_cfg, %struct.regmap_range_cfg* %950, i32 0, i32 3
  %952 = load i64, i64* %951, align 8
  %953 = add nsw i64 %944, %952
  %954 = sub nsw i64 %953, 1
  %955 = trunc i64 %954 to i32
  store i32 %955, i32* %24, align 4
  %956 = load i32, i32* %19, align 4
  %957 = load i32, i32* %18, align 4
  %958 = icmp eq i32 %956, %957
  br i1 %958, label %959, label %960

959:                                              ; preds = %925
  br label %1003

960:                                              ; preds = %925
  %961 = load %struct.regmap_range_cfg*, %struct.regmap_range_cfg** %20, align 8
  %962 = getelementptr inbounds %struct.regmap_range_cfg, %struct.regmap_range_cfg* %961, i32 0, i32 1
  %963 = load i64, i64* %962, align 8
  %964 = load i32, i32* %22, align 4
  %965 = zext i32 %964 to i64
  %966 = icmp sle i64 %963, %965
  br i1 %966, label %967, label %981

967:                                              ; preds = %960
  %968 = load i32, i32* %22, align 4
  %969 = zext i32 %968 to i64
  %970 = load %struct.regmap_range_cfg*, %struct.regmap_range_cfg** %20, align 8
  %971 = getelementptr inbounds %struct.regmap_range_cfg, %struct.regmap_range_cfg* %970, i32 0, i32 0
  %972 = load i64, i64* %971, align 8
  %973 = icmp sle i64 %969, %972
  br i1 %973, label %974, label %981

974:                                              ; preds = %967
  %975 = load %struct.regmap*, %struct.regmap** %14, align 8
  %976 = getelementptr inbounds %struct.regmap, %struct.regmap* %975, i32 0, i32 18
  %977 = load %struct.device*, %struct.device** %976, align 8
  %978 = load i32, i32* %18, align 4
  %979 = load i32, i32* %19, align 4
  %980 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %977, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %978, i32 %979)
  br label %1136

981:                                              ; preds = %967, %960
  %982 = load i32, i32* %24, align 4
  %983 = zext i32 %982 to i64
  %984 = load %struct.regmap_range_cfg*, %struct.regmap_range_cfg** %20, align 8
  %985 = getelementptr inbounds %struct.regmap_range_cfg, %struct.regmap_range_cfg* %984, i32 0, i32 1
  %986 = load i64, i64* %985, align 8
  %987 = icmp slt i64 %983, %986
  br i1 %987, label %1002, label %988

988:                                              ; preds = %981
  %989 = load i32, i32* %23, align 4
  %990 = zext i32 %989 to i64
  %991 = load %struct.regmap_range_cfg*, %struct.regmap_range_cfg** %20, align 8
  %992 = getelementptr inbounds %struct.regmap_range_cfg, %struct.regmap_range_cfg* %991, i32 0, i32 0
  %993 = load i64, i64* %992, align 8
  %994 = icmp sgt i64 %990, %993
  br i1 %994, label %1002, label %995

995:                                              ; preds = %988
  %996 = load %struct.regmap*, %struct.regmap** %14, align 8
  %997 = getelementptr inbounds %struct.regmap, %struct.regmap* %996, i32 0, i32 18
  %998 = load %struct.device*, %struct.device** %997, align 8
  %999 = load i32, i32* %18, align 4
  %1000 = load i32, i32* %19, align 4
  %1001 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %998, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %999, i32 %1000)
  br label %1136

1002:                                             ; preds = %988, %981
  br label %1003

1003:                                             ; preds = %1002, %959
  %1004 = load i32, i32* %19, align 4
  %1005 = add nsw i32 %1004, 1
  store i32 %1005, i32* %19, align 4
  br label %919

1006:                                             ; preds = %919
  %1007 = load i32, i32* @GFP_KERNEL, align 4
  %1008 = call i8* @kzalloc(i32 368, i32 %1007)
  %1009 = bitcast i8* %1008 to %struct.regmap_range_node*
  store %struct.regmap_range_node* %1009, %struct.regmap_range_node** %21, align 8
  %1010 = load %struct.regmap_range_node*, %struct.regmap_range_node** %21, align 8
  %1011 = icmp eq %struct.regmap_range_node* %1010, null
  br i1 %1011, label %1012, label %1015

1012:                                             ; preds = %1006
  %1013 = load i32, i32* @ENOMEM, align 4
  %1014 = sub nsw i32 0, %1013
  store i32 %1014, i32* %15, align 4
  br label %1136

1015:                                             ; preds = %1006
  %1016 = load %struct.regmap*, %struct.regmap** %14, align 8
  %1017 = bitcast %struct.regmap* %1016 to %struct.regmap_range_node*
  %1018 = load %struct.regmap_range_node*, %struct.regmap_range_node** %21, align 8
  %1019 = getelementptr inbounds %struct.regmap_range_node, %struct.regmap_range_node* %1018, i32 0, i32 21
  store %struct.regmap_range_node* %1017, %struct.regmap_range_node** %1019, align 8
  %1020 = load %struct.regmap_range_cfg*, %struct.regmap_range_cfg** %20, align 8
  %1021 = getelementptr inbounds %struct.regmap_range_cfg, %struct.regmap_range_cfg* %1020, i32 0, i32 7
  %1022 = load i32, i32* %1021, align 4
  %1023 = load %struct.regmap_range_node*, %struct.regmap_range_node** %21, align 8
  %1024 = getelementptr inbounds %struct.regmap_range_node, %struct.regmap_range_node* %1023, i32 0, i32 13
  store i32 %1022, i32* %1024, align 8
  %1025 = load %struct.regmap_range_cfg*, %struct.regmap_range_cfg** %20, align 8
  %1026 = getelementptr inbounds %struct.regmap_range_cfg, %struct.regmap_range_cfg* %1025, i32 0, i32 1
  %1027 = load i64, i64* %1026, align 8
  %1028 = trunc i64 %1027 to i32
  %1029 = load %struct.regmap_range_node*, %struct.regmap_range_node** %21, align 8
  %1030 = getelementptr inbounds %struct.regmap_range_node, %struct.regmap_range_node* %1029, i32 0, i32 8
  store i32 %1028, i32* %1030, align 4
  %1031 = load %struct.regmap_range_cfg*, %struct.regmap_range_cfg** %20, align 8
  %1032 = getelementptr inbounds %struct.regmap_range_cfg, %struct.regmap_range_cfg* %1031, i32 0, i32 0
  %1033 = load i64, i64* %1032, align 8
  %1034 = trunc i64 %1033 to i32
  %1035 = load %struct.regmap_range_node*, %struct.regmap_range_node** %21, align 8
  %1036 = getelementptr inbounds %struct.regmap_range_node, %struct.regmap_range_node* %1035, i32 0, i32 9
  store i32 %1034, i32* %1036, align 8
  %1037 = load %struct.regmap_range_cfg*, %struct.regmap_range_cfg** %20, align 8
  %1038 = getelementptr inbounds %struct.regmap_range_cfg, %struct.regmap_range_cfg* %1037, i32 0, i32 2
  %1039 = load i64, i64* %1038, align 8
  %1040 = load %struct.regmap_range_node*, %struct.regmap_range_node** %21, align 8
  %1041 = getelementptr inbounds %struct.regmap_range_node, %struct.regmap_range_node* %1040, i32 0, i32 10
  store i64 %1039, i64* %1041, align 8
  %1042 = load %struct.regmap_range_cfg*, %struct.regmap_range_cfg** %20, align 8
  %1043 = getelementptr inbounds %struct.regmap_range_cfg, %struct.regmap_range_cfg* %1042, i32 0, i32 6
  %1044 = load i32, i32* %1043, align 8
  %1045 = load %struct.regmap_range_node*, %struct.regmap_range_node** %21, align 8
  %1046 = getelementptr inbounds %struct.regmap_range_node, %struct.regmap_range_node* %1045, i32 0, i32 20
  store i32 %1044, i32* %1046, align 4
  %1047 = load %struct.regmap_range_cfg*, %struct.regmap_range_cfg** %20, align 8
  %1048 = getelementptr inbounds %struct.regmap_range_cfg, %struct.regmap_range_cfg* %1047, i32 0, i32 5
  %1049 = load i32, i32* %1048, align 4
  %1050 = load %struct.regmap_range_node*, %struct.regmap_range_node** %21, align 8
  %1051 = getelementptr inbounds %struct.regmap_range_node, %struct.regmap_range_node* %1050, i32 0, i32 19
  store i32 %1049, i32* %1051, align 8
  %1052 = load %struct.regmap_range_cfg*, %struct.regmap_range_cfg** %20, align 8
  %1053 = getelementptr inbounds %struct.regmap_range_cfg, %struct.regmap_range_cfg* %1052, i32 0, i32 4
  %1054 = load i32, i32* %1053, align 8
  %1055 = load %struct.regmap_range_node*, %struct.regmap_range_node** %21, align 8
  %1056 = getelementptr inbounds %struct.regmap_range_node, %struct.regmap_range_node* %1055, i32 0, i32 11
  store i32 %1054, i32* %1056, align 8
  %1057 = load %struct.regmap_range_cfg*, %struct.regmap_range_cfg** %20, align 8
  %1058 = getelementptr inbounds %struct.regmap_range_cfg, %struct.regmap_range_cfg* %1057, i32 0, i32 3
  %1059 = load i64, i64* %1058, align 8
  %1060 = load %struct.regmap_range_node*, %struct.regmap_range_node** %21, align 8
  %1061 = getelementptr inbounds %struct.regmap_range_node, %struct.regmap_range_node* %1060, i32 0, i32 12
  store i64 %1059, i64* %1061, align 8
  %1062 = load %struct.regmap*, %struct.regmap** %14, align 8
  %1063 = bitcast %struct.regmap* %1062 to %struct.regmap_range_node*
  %1064 = load %struct.regmap_range_node*, %struct.regmap_range_node** %21, align 8
  %1065 = call i32 @_regmap_range_add(%struct.regmap_range_node* %1063, %struct.regmap_range_node* %1064)
  %1066 = icmp ne i32 %1065, 0
  br i1 %1066, label %1075, label %1067

1067:                                             ; preds = %1015
  %1068 = load %struct.regmap*, %struct.regmap** %14, align 8
  %1069 = getelementptr inbounds %struct.regmap, %struct.regmap* %1068, i32 0, i32 18
  %1070 = load %struct.device*, %struct.device** %1069, align 8
  %1071 = load i32, i32* %18, align 4
  %1072 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %1070, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %1071)
  %1073 = load %struct.regmap_range_node*, %struct.regmap_range_node** %21, align 8
  %1074 = call i32 @kfree(%struct.regmap_range_node* %1073)
  br label %1136

1075:                                             ; preds = %1015
  %1076 = load %struct.regmap*, %struct.regmap** %14, align 8
  %1077 = getelementptr inbounds %struct.regmap, %struct.regmap* %1076, i32 0, i32 16
  %1078 = load i32*, i32** %1077, align 8
  %1079 = icmp eq i32* %1078, null
  br i1 %1079, label %1080, label %1098

1080:                                             ; preds = %1075
  %1081 = load %struct.regmap*, %struct.regmap** %14, align 8
  %1082 = getelementptr inbounds %struct.regmap, %struct.regmap* %1081, i32 0, i32 17
  %1083 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1082, i32 0, i32 1
  %1084 = load i32, i32* %1083, align 4
  %1085 = load i32, i32* @GFP_KERNEL, align 4
  %1086 = call i8* @kzalloc(i32 %1084, i32 %1085)
  %1087 = bitcast i8* %1086 to i32*
  %1088 = load %struct.regmap*, %struct.regmap** %14, align 8
  %1089 = getelementptr inbounds %struct.regmap, %struct.regmap* %1088, i32 0, i32 16
  store i32* %1087, i32** %1089, align 8
  %1090 = load %struct.regmap*, %struct.regmap** %14, align 8
  %1091 = getelementptr inbounds %struct.regmap, %struct.regmap* %1090, i32 0, i32 16
  %1092 = load i32*, i32** %1091, align 8
  %1093 = icmp eq i32* %1092, null
  br i1 %1093, label %1094, label %1097

1094:                                             ; preds = %1080
  %1095 = load i32, i32* @ENOMEM, align 4
  %1096 = sub nsw i32 0, %1095
  store i32 %1096, i32* %15, align 4
  br label %1136

1097:                                             ; preds = %1080
  br label %1098

1098:                                             ; preds = %1097, %1075
  br label %1099

1099:                                             ; preds = %1098
  %1100 = load i32, i32* %18, align 4
  %1101 = add nsw i32 %1100, 1
  store i32 %1101, i32* %18, align 4
  br label %841

1102:                                             ; preds = %841
  %1103 = load %struct.regmap*, %struct.regmap** %14, align 8
  %1104 = bitcast %struct.regmap* %1103 to %struct.regmap_range_node*
  %1105 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %1106 = call i32 @regcache_init(%struct.regmap_range_node* %1104, %struct.regmap_config* %1105)
  store i32 %1106, i32* %15, align 4
  %1107 = load i32, i32* %15, align 4
  %1108 = icmp ne i32 %1107, 0
  br i1 %1108, label %1109, label %1110

1109:                                             ; preds = %1102
  br label %1136

1110:                                             ; preds = %1102
  %1111 = load %struct.device*, %struct.device** %8, align 8
  %1112 = icmp ne %struct.device* %1111, null
  br i1 %1112, label %1113, label %1123

1113:                                             ; preds = %1110
  %1114 = load %struct.device*, %struct.device** %8, align 8
  %1115 = load %struct.regmap*, %struct.regmap** %14, align 8
  %1116 = bitcast %struct.regmap* %1115 to %struct.regmap_range_node*
  %1117 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %1118 = call i32 @regmap_attach_dev(%struct.device* %1114, %struct.regmap_range_node* %1116, %struct.regmap_config* %1117)
  store i32 %1118, i32* %15, align 4
  %1119 = load i32, i32* %15, align 4
  %1120 = icmp ne i32 %1119, 0
  br i1 %1120, label %1121, label %1122

1121:                                             ; preds = %1113
  br label %1132

1122:                                             ; preds = %1113
  br label %1130

1123:                                             ; preds = %1110
  %1124 = load %struct.regmap*, %struct.regmap** %14, align 8
  %1125 = bitcast %struct.regmap* %1124 to %struct.regmap_range_node*
  %1126 = load %struct.regmap_config*, %struct.regmap_config** %11, align 8
  %1127 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %1126, i32 0, i32 7
  %1128 = load i32, i32* %1127, align 4
  %1129 = call i32 @regmap_debugfs_init(%struct.regmap_range_node* %1125, i32 %1128)
  br label %1130

1130:                                             ; preds = %1123, %1122
  %1131 = load %struct.regmap*, %struct.regmap** %14, align 8
  store %struct.regmap* %1131, %struct.regmap** %7, align 8
  br label %1169

1132:                                             ; preds = %1121
  %1133 = load %struct.regmap*, %struct.regmap** %14, align 8
  %1134 = bitcast %struct.regmap* %1133 to %struct.regmap_range_node*
  %1135 = call i32 @regcache_exit(%struct.regmap_range_node* %1134)
  br label %1136

1136:                                             ; preds = %1132, %1109, %1094, %1067, %1012, %995, %974, %912, %901, %881, %861
  %1137 = load %struct.regmap*, %struct.regmap** %14, align 8
  %1138 = bitcast %struct.regmap* %1137 to %struct.regmap_range_node*
  %1139 = call i32 @regmap_range_exit(%struct.regmap_range_node* %1138)
  %1140 = load %struct.regmap*, %struct.regmap** %14, align 8
  %1141 = getelementptr inbounds %struct.regmap, %struct.regmap* %1140, i32 0, i32 15
  %1142 = load %struct.regmap*, %struct.regmap** %1141, align 8
  %1143 = bitcast %struct.regmap* %1142 to %struct.regmap_range_node*
  %1144 = call i32 @kfree(%struct.regmap_range_node* %1143)
  br label %1145

1145:                                             ; preds = %1136, %808, %793, %771, %757, %710, %705, %642, %640, %617, %612, %588, %577, %566, %555
  %1146 = load %struct.regmap*, %struct.regmap** %14, align 8
  %1147 = getelementptr inbounds %struct.regmap, %struct.regmap* %1146, i32 0, i32 14
  %1148 = load i64, i64* %1147, align 8
  %1149 = icmp ne i64 %1148, 0
  br i1 %1149, label %1150, label %1155

1150:                                             ; preds = %1145
  %1151 = load %struct.regmap*, %struct.regmap** %14, align 8
  %1152 = getelementptr inbounds %struct.regmap, %struct.regmap* %1151, i32 0, i32 14
  %1153 = load i64, i64* %1152, align 8
  %1154 = call i32 @hwspin_lock_free(i64 %1153)
  br label %1155

1155:                                             ; preds = %1150, %1145
  br label %1156

1156:                                             ; preds = %1155, %117
  %1157 = load %struct.regmap*, %struct.regmap** %14, align 8
  %1158 = getelementptr inbounds %struct.regmap, %struct.regmap* %1157, i32 0, i32 13
  %1159 = load i32, i32* %1158, align 8
  %1160 = call i32 @kfree_const(i32 %1159)
  br label %1161

1161:                                             ; preds = %1156, %56
  %1162 = load %struct.regmap*, %struct.regmap** %14, align 8
  %1163 = bitcast %struct.regmap* %1162 to %struct.regmap_range_node*
  %1164 = call i32 @kfree(%struct.regmap_range_node* %1163)
  br label %1165

1165:                                             ; preds = %1161, %36, %29
  %1166 = load i32, i32* %15, align 4
  %1167 = call %struct.regmap_range_node* @ERR_PTR(i32 %1166)
  %1168 = bitcast %struct.regmap_range_node* %1167 to %struct.regmap*
  store %struct.regmap* %1168, %struct.regmap** %7, align 8
  br label %1169

1169:                                             ; preds = %1165, %1130
  %1170 = load %struct.regmap*, %struct.regmap** %7, align 8
  ret %struct.regmap* %1170
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kstrdup_const(i32, i32) #1

declare dso_local i32 @regmap_debugfs_disable(%struct.regmap_range_node*) #1

declare dso_local i64 @hwspin_lock_request_specific(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @lockdep_set_class_and_name(i32*, %struct.lock_class_key*, i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @is_power_of_2(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @regmap_get_reg_endian(%struct.regmap_bus*, %struct.regmap_config*) #1

declare dso_local i32 @regmap_get_val_endian(%struct.device*, %struct.regmap_bus*, %struct.regmap_config*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @_regmap_range_add(%struct.regmap_range_node*, %struct.regmap_range_node*) #1

declare dso_local i32 @kfree(%struct.regmap_range_node*) #1

declare dso_local i32 @regcache_init(%struct.regmap_range_node*, %struct.regmap_config*) #1

declare dso_local i32 @regmap_attach_dev(%struct.device*, %struct.regmap_range_node*, %struct.regmap_config*) #1

declare dso_local i32 @regmap_debugfs_init(%struct.regmap_range_node*, i32) #1

declare dso_local i32 @regcache_exit(%struct.regmap_range_node*) #1

declare dso_local i32 @regmap_range_exit(%struct.regmap_range_node*) #1

declare dso_local i32 @hwspin_lock_free(i64) #1

declare dso_local i32 @kfree_const(i32) #1

declare dso_local %struct.regmap_range_node* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
