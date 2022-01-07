; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/mtd/maps/extr_adm5120-flash.c_adm5120_flash_probe.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/mtd/maps/extr_adm5120-flash.c_adm5120_flash_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.adm5120_flash_platform_data* }
%struct.adm5120_flash_platform_data = type { i32, i32 }
%struct.adm5120_flash_info = type { %struct.TYPE_6__*, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64, %struct.map_info }
%struct.map_info = type { i64, i32, i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"no platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@probe_types = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"map_probe failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"reducing map size to %ldKiB\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"found at 0x%lX, size:%ldKiB, width:%d bits\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@parse_types = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @adm5120_flash_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm5120_flash_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.adm5120_flash_platform_data*, align 8
  %5 = alloca %struct.adm5120_flash_info*, align 8
  %6 = alloca %struct.map_info*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.adm5120_flash_platform_data*, %struct.adm5120_flash_platform_data** %11, align 8
  store %struct.adm5120_flash_platform_data* %12, %struct.adm5120_flash_platform_data** %4, align 8
  %13 = load %struct.adm5120_flash_platform_data*, %struct.adm5120_flash_platform_data** %4, align 8
  %14 = icmp ne %struct.adm5120_flash_platform_data* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = call i32 @dev_err(%struct.TYPE_7__* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %174

21:                                               ; preds = %1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.adm5120_flash_info* @kzalloc(i32 56, i32 %22)
  store %struct.adm5120_flash_info* %23, %struct.adm5120_flash_info** %5, align 8
  %24 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %5, align 8
  %25 = icmp eq %struct.adm5120_flash_info* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %170

29:                                               ; preds = %21
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %5, align 8
  %32 = call i32 @platform_set_drvdata(%struct.platform_device* %30, %struct.adm5120_flash_info* %31)
  %33 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %5, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = call i32 @adm5120_flash_initinfo(%struct.adm5120_flash_info* %33, %struct.platform_device* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %170

39:                                               ; preds = %29
  %40 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %5, align 8
  %41 = call i32 @adm5120_flash_initres(%struct.adm5120_flash_info* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %170

45:                                               ; preds = %39
  %46 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %5, align 8
  %47 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store %struct.map_info* %48, %struct.map_info** %6, align 8
  %49 = load i8**, i8*** @probe_types, align 8
  store i8** %49, i8*** %7, align 8
  br label %50

50:                                               ; preds = %68, %45
  %51 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %5, align 8
  %52 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = icmp eq %struct.TYPE_6__* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i8**, i8*** %7, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br label %59

59:                                               ; preds = %55, %50
  %60 = phi i1 [ false, %50 ], [ %58, %55 ]
  br i1 %60, label %61, label %71

61:                                               ; preds = %59
  %62 = load i8**, i8*** %7, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.map_info*, %struct.map_info** %6, align 8
  %65 = call %struct.TYPE_6__* @do_map_probe(i8* %63, %struct.map_info* %64)
  %66 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %5, align 8
  %67 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %66, i32 0, i32 0
  store %struct.TYPE_6__* %65, %struct.TYPE_6__** %67, align 8
  br label %68

68:                                               ; preds = %61
  %69 = load i8**, i8*** %7, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i32 1
  store i8** %70, i8*** %7, align 8
  br label %50

71:                                               ; preds = %59
  %72 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %5, align 8
  %73 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = icmp eq %struct.TYPE_6__* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.map_info*, %struct.map_info** %6, align 8
  %78 = call i32 @MAP_ERR(%struct.map_info* %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @ENXIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %8, align 4
  br label %170

81:                                               ; preds = %71
  %82 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %5, align 8
  %83 = call i32 @adm5120_flash_initbanks(%struct.adm5120_flash_info* %82)
  %84 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %5, align 8
  %85 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %5, align 8
  %90 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %88, %92
  br i1 %93, label %94, label %134

94:                                               ; preds = %81
  %95 = load %struct.map_info*, %struct.map_info** %6, align 8
  %96 = getelementptr inbounds %struct.map_info, %struct.map_info* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @iounmap(i32 %97)
  %99 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %5, align 8
  %100 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @release_resource(i32 %101)
  %103 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %5, align 8
  %104 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @kfree(i32 %105)
  %107 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %5, align 8
  %108 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %5, align 8
  %113 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  store i64 %111, i64* %114, align 8
  %115 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %5, align 8
  %116 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.map_info*, %struct.map_info** %6, align 8
  %121 = getelementptr inbounds %struct.map_info, %struct.map_info* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  %122 = load %struct.map_info*, %struct.map_info** %6, align 8
  %123 = load %struct.map_info*, %struct.map_info** %6, align 8
  %124 = getelementptr inbounds %struct.map_info, %struct.map_info* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = lshr i64 %125, 10
  %127 = call i32 (%struct.map_info*, i8*, i64, ...) @MAP_INFO(%struct.map_info* %122, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %126)
  %128 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %5, align 8
  %129 = call i32 @adm5120_flash_initres(%struct.adm5120_flash_info* %128)
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %94
  br label %170

133:                                              ; preds = %94
  br label %134

134:                                              ; preds = %133, %81
  %135 = load %struct.map_info*, %struct.map_info** %6, align 8
  %136 = load %struct.map_info*, %struct.map_info** %6, align 8
  %137 = getelementptr inbounds %struct.map_info, %struct.map_info* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %5, align 8
  %140 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %139, i32 0, i32 0
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = lshr i64 %143, 10
  %145 = load %struct.map_info*, %struct.map_info** %6, align 8
  %146 = getelementptr inbounds %struct.map_info, %struct.map_info* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = mul nsw i32 %147, 8
  %149 = call i32 (%struct.map_info*, i8*, i64, ...) @MAP_INFO(%struct.map_info* %135, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %138, i64 %144, i32 %148)
  %150 = load i32, i32* @THIS_MODULE, align 4
  %151 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %5, align 8
  %152 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %151, i32 0, i32 0
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  store i32 %150, i32* %154, align 8
  %155 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %5, align 8
  %156 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %155, i32 0, i32 0
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = load i32, i32* @parse_types, align 4
  %159 = load %struct.adm5120_flash_platform_data*, %struct.adm5120_flash_platform_data** %4, align 8
  %160 = getelementptr inbounds %struct.adm5120_flash_platform_data, %struct.adm5120_flash_platform_data* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.adm5120_flash_platform_data*, %struct.adm5120_flash_platform_data** %4, align 8
  %163 = getelementptr inbounds %struct.adm5120_flash_platform_data, %struct.adm5120_flash_platform_data* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @mtd_device_parse_register(%struct.TYPE_6__* %157, i32 %158, i32 0, i32 %161, i32 %164)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %134
  br label %170

169:                                              ; preds = %134
  store i32 0, i32* %2, align 4
  br label %174

170:                                              ; preds = %168, %132, %76, %44, %38, %26
  %171 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %172 = call i32 @adm5120_flash_remove(%struct.platform_device* %171)
  %173 = load i32, i32* %8, align 4
  store i32 %173, i32* %2, align 4
  br label %174

174:                                              ; preds = %170, %169, %15
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.adm5120_flash_info* @kzalloc(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.adm5120_flash_info*) #1

declare dso_local i32 @adm5120_flash_initinfo(%struct.adm5120_flash_info*, %struct.platform_device*) #1

declare dso_local i32 @adm5120_flash_initres(%struct.adm5120_flash_info*) #1

declare dso_local %struct.TYPE_6__* @do_map_probe(i8*, %struct.map_info*) #1

declare dso_local i32 @MAP_ERR(%struct.map_info*, i8*) #1

declare dso_local i32 @adm5120_flash_initbanks(%struct.adm5120_flash_info*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_resource(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @MAP_INFO(%struct.map_info*, i8*, i64, ...) #1

declare dso_local i32 @mtd_device_parse_register(%struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i32 @adm5120_flash_remove(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
