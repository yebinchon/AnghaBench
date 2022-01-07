; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-elog.c_create_elog_obj.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-elog.c_create_elog_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elog_obj = type { i64, %struct.TYPE_10__, %struct.TYPE_11__, i32*, i8*, i8* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@elog_kset = common dso_local global i32 0, align 4
@elog_ktype = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@raw_attr_read = common dso_local global i32 0, align 4
@OPAL_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"ELOG: log read failed for log-id=%llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.elog_obj* (i8*, i64, i8*)* @create_elog_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.elog_obj* @create_elog_obj(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.elog_obj*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.elog_obj*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kzalloc(i32 72, i32 %10)
  %12 = bitcast i8* %11 to %struct.elog_obj*
  store %struct.elog_obj* %12, %struct.elog_obj** %8, align 8
  %13 = load %struct.elog_obj*, %struct.elog_obj** %8, align 8
  %14 = icmp ne %struct.elog_obj* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.elog_obj* null, %struct.elog_obj** %4, align 8
  br label %122

16:                                               ; preds = %3
  %17 = load i32, i32* @elog_kset, align 4
  %18 = load %struct.elog_obj*, %struct.elog_obj** %8, align 8
  %19 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load %struct.elog_obj*, %struct.elog_obj** %8, align 8
  %22 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %21, i32 0, i32 1
  %23 = call i32 @kobject_init(%struct.TYPE_10__* %22, i32* @elog_ktype)
  %24 = load %struct.elog_obj*, %struct.elog_obj** %8, align 8
  %25 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %24, i32 0, i32 2
  %26 = call i32 @sysfs_bin_attr_init(%struct.TYPE_11__* %25)
  %27 = load %struct.elog_obj*, %struct.elog_obj** %8, align 8
  %28 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %30, align 8
  %31 = load %struct.elog_obj*, %struct.elog_obj** %8, align 8
  %32 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  store i32 256, i32* %34, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.elog_obj*, %struct.elog_obj** %8, align 8
  %37 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  store i64 %35, i64* %38, align 8
  %39 = load i32, i32* @raw_attr_read, align 4
  %40 = load %struct.elog_obj*, %struct.elog_obj** %8, align 8
  %41 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load %struct.elog_obj*, %struct.elog_obj** %8, align 8
  %45 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.elog_obj*, %struct.elog_obj** %8, align 8
  %48 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load %struct.elog_obj*, %struct.elog_obj** %8, align 8
  %51 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  %52 = load %struct.elog_obj*, %struct.elog_obj** %8, align 8
  %53 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i8* @kzalloc(i32 %55, i32 %56)
  %58 = bitcast i8* %57 to i32*
  %59 = load %struct.elog_obj*, %struct.elog_obj** %8, align 8
  %60 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %59, i32 0, i32 3
  store i32* %58, i32** %60, align 8
  %61 = load %struct.elog_obj*, %struct.elog_obj** %8, align 8
  %62 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %93

65:                                               ; preds = %16
  %66 = load %struct.elog_obj*, %struct.elog_obj** %8, align 8
  %67 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @__pa(i32* %68)
  %70 = load %struct.elog_obj*, %struct.elog_obj** %8, align 8
  %71 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = load %struct.elog_obj*, %struct.elog_obj** %8, align 8
  %75 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %74, i32 0, i32 4
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @opal_read_elog(i32 %69, i32 %73, i8* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @OPAL_SUCCESS, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %65
  %82 = load %struct.elog_obj*, %struct.elog_obj** %8, align 8
  %83 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %82, i32 0, i32 4
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %84)
  %86 = load %struct.elog_obj*, %struct.elog_obj** %8, align 8
  %87 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @kfree(i32* %88)
  %90 = load %struct.elog_obj*, %struct.elog_obj** %8, align 8
  %91 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %90, i32 0, i32 3
  store i32* null, i32** %91, align 8
  br label %92

92:                                               ; preds = %81, %65
  br label %93

93:                                               ; preds = %92, %16
  %94 = load %struct.elog_obj*, %struct.elog_obj** %8, align 8
  %95 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %94, i32 0, i32 1
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 @kobject_add(%struct.TYPE_10__* %95, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load %struct.elog_obj*, %struct.elog_obj** %8, align 8
  %102 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %101, i32 0, i32 1
  %103 = call i32 @kobject_put(%struct.TYPE_10__* %102)
  store %struct.elog_obj* null, %struct.elog_obj** %4, align 8
  br label %122

104:                                              ; preds = %93
  %105 = load %struct.elog_obj*, %struct.elog_obj** %8, align 8
  %106 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %105, i32 0, i32 1
  %107 = load %struct.elog_obj*, %struct.elog_obj** %8, align 8
  %108 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %107, i32 0, i32 2
  %109 = call i32 @sysfs_create_bin_file(%struct.TYPE_10__* %106, %struct.TYPE_11__* %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %104
  %113 = load %struct.elog_obj*, %struct.elog_obj** %8, align 8
  %114 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %113, i32 0, i32 1
  %115 = call i32 @kobject_put(%struct.TYPE_10__* %114)
  store %struct.elog_obj* null, %struct.elog_obj** %4, align 8
  br label %122

116:                                              ; preds = %104
  %117 = load %struct.elog_obj*, %struct.elog_obj** %8, align 8
  %118 = getelementptr inbounds %struct.elog_obj, %struct.elog_obj* %117, i32 0, i32 1
  %119 = load i32, i32* @KOBJ_ADD, align 4
  %120 = call i32 @kobject_uevent(%struct.TYPE_10__* %118, i32 %119)
  %121 = load %struct.elog_obj*, %struct.elog_obj** %8, align 8
  store %struct.elog_obj* %121, %struct.elog_obj** %4, align 8
  br label %122

122:                                              ; preds = %116, %112, %100, %15
  %123 = load %struct.elog_obj*, %struct.elog_obj** %4, align 8
  ret %struct.elog_obj* %123
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kobject_init(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @sysfs_bin_attr_init(%struct.TYPE_11__*) #1

declare dso_local i32 @opal_read_elog(i32, i32, i8*) #1

declare dso_local i32 @__pa(i32*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @kobject_add(%struct.TYPE_10__*, i32*, i8*, i8*) #1

declare dso_local i32 @kobject_put(%struct.TYPE_10__*) #1

declare dso_local i32 @sysfs_create_bin_file(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @kobject_uevent(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
