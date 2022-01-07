; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc-driver.c_dprc_scan_objects.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/fsl-mc/extr_dprc-driver.c_dprc_scan_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_device = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fsl_mc_obj_desc = type { i8*, i32, i32, i64, i32 }
%struct.fsl_mc_bus = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"dprc_get_obj_count() failed: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"dprc_get_obj(i=%d) failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"dpseci\00", align 1
@FSL_MC_OBJ_FLAG_NO_MEM_SHAREABILITY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Discovered object: type %s, id %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"%d out of %d devices could not be retrieved\0A\00", align 1
@FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"IRQs needed (%u) exceed IRQs preallocated (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_mc_device*, i32*)* @dprc_scan_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dprc_scan_objects(%struct.fsl_mc_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsl_mc_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fsl_mc_obj_desc*, align 8
  %11 = alloca %struct.fsl_mc_bus*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.fsl_mc_obj_desc*, align 8
  store %struct.fsl_mc_device* %0, %struct.fsl_mc_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %15 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  store %struct.fsl_mc_obj_desc* null, %struct.fsl_mc_obj_desc** %10, align 8
  %18 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %19 = call %struct.fsl_mc_bus* @to_fsl_mc_bus(%struct.fsl_mc_device* %18)
  store %struct.fsl_mc_bus* %19, %struct.fsl_mc_bus** %11, align 8
  %20 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %21 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %24 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dprc_get_obj_count(i32 %22, i32 0, i32 %25, i32* %6)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %31 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %30, i32 0, i32 0
  %32 = load i32, i32* %8, align 4
  %33 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %184

35:                                               ; preds = %2
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %132

38:                                               ; preds = %35
  %39 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %40 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %39, i32 0, i32 0
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.fsl_mc_obj_desc* @devm_kmalloc_array(i32* %40, i32 %41, i32 32, i32 %42)
  store %struct.fsl_mc_obj_desc* %43, %struct.fsl_mc_obj_desc** %10, align 8
  %44 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %10, align 8
  %45 = icmp ne %struct.fsl_mc_obj_desc* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %184

49:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %119, %49
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %122

54:                                               ; preds = %50
  %55 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %10, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %55, i64 %57
  store %struct.fsl_mc_obj_desc* %58, %struct.fsl_mc_obj_desc** %13, align 8
  %59 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %60 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %63 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %13, align 8
  %67 = call i32 @dprc_get_obj(i32 %61, i32 0, i32 %64, i32 %65, %struct.fsl_mc_obj_desc* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %54
  %71 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %72 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %71, i32 0, i32 0
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %13, align 8
  %77 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  store i8 0, i8* %79, align 1
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %13, align 8
  %82 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %119

85:                                               ; preds = %54
  %86 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %13, align 8
  %87 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @strcmp(i8* %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %85
  %92 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %13, align 8
  %93 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %94, 4
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load i32, i32* @FSL_MC_OBJ_FLAG_NO_MEM_SHAREABILITY, align 4
  %98 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %13, align 8
  %99 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %96, %91, %85
  %103 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %13, align 8
  %104 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = zext i32 %106 to i64
  %108 = add nsw i64 %107, %105
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %9, align 4
  %110 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %111 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %110, i32 0, i32 0
  %112 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %13, align 8
  %113 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %13, align 8
  %116 = getelementptr inbounds %struct.fsl_mc_obj_desc, %struct.fsl_mc_obj_desc* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @dev_dbg(i32* %111, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %114, i32 %117)
  br label %119

119:                                              ; preds = %102, %70
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %12, align 4
  br label %50

122:                                              ; preds = %50
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %127 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %126, i32 0, i32 0
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %6, align 4
  %130 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %127, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %125, %122
  br label %132

132:                                              ; preds = %131, %35
  %133 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %134 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %133, i32 0, i32 0
  %135 = call i64 @dev_get_msi_domain(i32* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %161

137:                                              ; preds = %132
  %138 = load %struct.fsl_mc_bus*, %struct.fsl_mc_bus** %11, align 8
  %139 = getelementptr inbounds %struct.fsl_mc_bus, %struct.fsl_mc_bus* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %161, label %142

142:                                              ; preds = %137
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS, align 4
  %145 = icmp ugt i32 %143, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %142
  %147 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %148 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %147, i32 0, i32 0
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* @FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS, align 4
  %151 = call i32 @dev_warn(i32* %148, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %146, %142
  %153 = load %struct.fsl_mc_bus*, %struct.fsl_mc_bus** %11, align 8
  %154 = load i32, i32* @FSL_MC_IRQ_POOL_MAX_TOTAL_IRQS, align 4
  %155 = call i32 @fsl_mc_populate_irq_pool(%struct.fsl_mc_bus* %153, i32 %154)
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %3, align 4
  br label %184

160:                                              ; preds = %152
  br label %161

161:                                              ; preds = %160, %137, %132
  %162 = load i32*, i32** %5, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32, i32* %9, align 4
  %166 = load i32*, i32** %5, align 8
  store i32 %165, i32* %166, align 4
  br label %167

167:                                              ; preds = %164, %161
  %168 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %169 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %10, align 8
  %170 = load i32, i32* %6, align 4
  %171 = call i32 @dprc_remove_devices(%struct.fsl_mc_device* %168, %struct.fsl_mc_obj_desc* %169, i32 %170)
  %172 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %173 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %10, align 8
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @dprc_add_new_devices(%struct.fsl_mc_device* %172, %struct.fsl_mc_obj_desc* %173, i32 %174)
  %176 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %10, align 8
  %177 = icmp ne %struct.fsl_mc_obj_desc* %176, null
  br i1 %177, label %178, label %183

178:                                              ; preds = %167
  %179 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %180 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %179, i32 0, i32 0
  %181 = load %struct.fsl_mc_obj_desc*, %struct.fsl_mc_obj_desc** %10, align 8
  %182 = call i32 @devm_kfree(i32* %180, %struct.fsl_mc_obj_desc* %181)
  br label %183

183:                                              ; preds = %178, %167
  store i32 0, i32* %3, align 4
  br label %184

184:                                              ; preds = %183, %158, %46, %29
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local %struct.fsl_mc_bus* @to_fsl_mc_bus(%struct.fsl_mc_device*) #1

declare dso_local i32 @dprc_get_obj_count(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local %struct.fsl_mc_obj_desc* @devm_kmalloc_array(i32*, i32, i32, i32) #1

declare dso_local i32 @dprc_get_obj(i32, i32, i32, i32, %struct.fsl_mc_obj_desc*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i32) #1

declare dso_local i64 @dev_get_msi_domain(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @fsl_mc_populate_irq_pool(%struct.fsl_mc_bus*, i32) #1

declare dso_local i32 @dprc_remove_devices(%struct.fsl_mc_device*, %struct.fsl_mc_obj_desc*, i32) #1

declare dso_local i32 @dprc_add_new_devices(%struct.fsl_mc_device*, %struct.fsl_mc_obj_desc*, i32) #1

declare dso_local i32 @devm_kfree(i32*, %struct.fsl_mc_obj_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
