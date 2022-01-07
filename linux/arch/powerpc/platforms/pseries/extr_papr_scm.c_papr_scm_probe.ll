; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_papr_scm.c_papr_scm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_papr_scm.c_papr_scm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.papr_scm_priv = type { i32, i32, i32, %struct.TYPE_5__, i64, %struct.platform_device*, i8*, %struct.TYPE_4__, i8*, %struct.device_node* }
%struct.TYPE_5__ = type { i32, i32, i64, i64 }
%struct.TYPE_4__ = type { i8*, i8* }

@.str = private unnamed_addr constant [17 x i8] c"ibm,my-drc-index\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%pOF: missing drc-index!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"ibm,block-size\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%pOF: missing block-size!\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"ibm,number-of-blocks\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"%pOF: missing number-of-blocks!\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"ibm,unit-guid\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"%pOF: missing unit-guid!\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"ibm,metadata-size\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"ibm,cache-flush-required\00", align 1
@H_OVERLAP = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"bind err: %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @papr_scm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @papr_scm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.papr_scm_priv*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [2 x i8*], align 16
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %4, align 8
  %17 = load %struct.device_node*, %struct.device_node** %4, align 8
  %18 = call i64 @of_property_read_u32(%struct.device_node* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %5)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 1
  %23 = load %struct.device_node*, %struct.device_node** %4, align 8
  %24 = ptrtoint %struct.device_node* %23 to i32
  %25 = call i32 @dev_err(%struct.TYPE_6__* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %188

28:                                               ; preds = %1
  %29 = load %struct.device_node*, %struct.device_node** %4, align 8
  %30 = call i64 @of_property_read_u64(%struct.device_node* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %8)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 1
  %35 = load %struct.device_node*, %struct.device_node** %4, align 8
  %36 = ptrtoint %struct.device_node* %35 to i32
  %37 = call i32 @dev_err(%struct.TYPE_6__* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %188

40:                                               ; preds = %28
  %41 = load %struct.device_node*, %struct.device_node** %4, align 8
  %42 = call i64 @of_property_read_u64(%struct.device_node* %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** %7)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 1
  %47 = load %struct.device_node*, %struct.device_node** %4, align 8
  %48 = ptrtoint %struct.device_node* %47 to i32
  %49 = call i32 @dev_err(%struct.TYPE_6__* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %188

52:                                               ; preds = %40
  %53 = load %struct.device_node*, %struct.device_node** %4, align 8
  %54 = call i64 @of_property_read_string(%struct.device_node* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8** %10)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 1
  %59 = load %struct.device_node*, %struct.device_node** %4, align 8
  %60 = ptrtoint %struct.device_node* %59 to i32
  %61 = call i32 @dev_err(%struct.TYPE_6__* %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %188

64:                                               ; preds = %52
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call %struct.papr_scm_priv* @kzalloc(i32 96, i32 %65)
  store %struct.papr_scm_priv* %66, %struct.papr_scm_priv** %9, align 8
  %67 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %9, align 8
  %68 = icmp ne %struct.papr_scm_priv* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %188

72:                                               ; preds = %64
  %73 = load %struct.device_node*, %struct.device_node** %4, align 8
  %74 = call i64 @of_property_read_u32(%struct.device_node* %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8** %6)
  %75 = load %struct.device_node*, %struct.device_node** %4, align 8
  %76 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %9, align 8
  %77 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %76, i32 0, i32 9
  store %struct.device_node* %75, %struct.device_node** %77, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %9, align 8
  %80 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %79, i32 0, i32 8
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %9, align 8
  %84 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = ptrtoint i8* %85 to i32
  %87 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %9, align 8
  %88 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.device_node*, %struct.device_node** %4, align 8
  %90 = call i32 @of_property_read_bool(%struct.device_node* %89, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %9, align 8
  %95 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  %98 = bitcast i8** %97 to i32*
  %99 = call i32 @uuid_parse(i8* %96, i32* %98)
  %100 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  %101 = load i8*, i8** %100, align 16
  %102 = call i8* @cpu_to_le64(i8* %101)
  %103 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %9, align 8
  %104 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %103, i32 0, i32 7
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store i8* %102, i8** %105, align 8
  %106 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 1
  %107 = load i8*, i8** %106, align 8
  %108 = call i8* @cpu_to_le64(i8* %107)
  %109 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %9, align 8
  %110 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %109, i32 0, i32 7
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store i8* %108, i8** %111, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %9, align 8
  %114 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %113, i32 0, i32 6
  store i8* %112, i8** %114, align 8
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %9, align 8
  %117 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %116, i32 0, i32 5
  store %struct.platform_device* %115, %struct.platform_device** %117, align 8
  %118 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %9, align 8
  %119 = call i32 @drc_pmem_bind(%struct.papr_scm_priv* %118)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* @H_OVERLAP, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %72
  %124 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %9, align 8
  %125 = call i32 @drc_pmem_query_n_bind(%struct.papr_scm_priv* %124)
  store i32 %125, i32* %12, align 4
  br label %126

126:                                              ; preds = %123, %72
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* @H_SUCCESS, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %126
  %131 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %9, align 8
  %132 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %131, i32 0, i32 5
  %133 = load %struct.platform_device*, %struct.platform_device** %132, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 1
  %135 = load i32, i32* %12, align 4
  %136 = call i32 @dev_err(%struct.TYPE_6__* %134, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @ENXIO, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %12, align 4
  br label %184

139:                                              ; preds = %126
  %140 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %9, align 8
  %141 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %9, align 8
  %144 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 3
  store i64 %142, i64* %145, align 8
  %146 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %9, align 8
  %147 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %9, align 8
  %150 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %9, align 8
  %153 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = mul nsw i32 %151, %154
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %148, %156
  %158 = sub nsw i64 %157, 1
  %159 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %9, align 8
  %160 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  store i64 %158, i64* %161, align 8
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %9, align 8
  %166 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  store i32 %164, i32* %167, align 4
  %168 = load i32, i32* @IORESOURCE_MEM, align 4
  %169 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %9, align 8
  %170 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 0
  store i32 %168, i32* %171, align 8
  %172 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %9, align 8
  %173 = call i32 @papr_scm_nvdimm_init(%struct.papr_scm_priv* %172)
  store i32 %173, i32* %12, align 4
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %139
  br label %181

177:                                              ; preds = %139
  %178 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %179 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %9, align 8
  %180 = call i32 @platform_set_drvdata(%struct.platform_device* %178, %struct.papr_scm_priv* %179)
  store i32 0, i32* %2, align 4
  br label %188

181:                                              ; preds = %176
  %182 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %9, align 8
  %183 = call i32 @drc_pmem_unbind(%struct.papr_scm_priv* %182)
  br label %184

184:                                              ; preds = %181, %130
  %185 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %9, align 8
  %186 = call i32 @kfree(%struct.papr_scm_priv* %185)
  %187 = load i32, i32* %12, align 4
  store i32 %187, i32* %2, align 4
  br label %188

188:                                              ; preds = %184, %177, %69, %56, %44, %32, %20
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i64 @of_property_read_u64(%struct.device_node*, i8*, i8**) #1

declare dso_local i64 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local %struct.papr_scm_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @uuid_parse(i8*, i32*) #1

declare dso_local i8* @cpu_to_le64(i8*) #1

declare dso_local i32 @drc_pmem_bind(%struct.papr_scm_priv*) #1

declare dso_local i32 @drc_pmem_query_n_bind(%struct.papr_scm_priv*) #1

declare dso_local i32 @papr_scm_nvdimm_init(%struct.papr_scm_priv*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.papr_scm_priv*) #1

declare dso_local i32 @drc_pmem_unbind(%struct.papr_scm_priv*) #1

declare dso_local i32 @kfree(%struct.papr_scm_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
