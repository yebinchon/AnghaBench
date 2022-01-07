; ModuleID = '/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_attribute_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/counter/extr_counter.c_counter_attribute_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter_attr_parm = type { %struct.TYPE_3__*, i32, i64, i64, i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.list_head }
%struct.list_head = type { i32 }
%struct.counter_device_attr = type { i32, i32, %struct.device_attribute }
%struct.device_attribute = type { i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.counter_attr_parm*)* @counter_attribute_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @counter_attribute_create(%struct.counter_attr_parm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.counter_attr_parm*, align 8
  %4 = alloca %struct.counter_device_attr*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_head*, align 8
  store %struct.counter_attr_parm* %0, %struct.counter_attr_parm** %3, align 8
  %8 = load %struct.counter_attr_parm*, %struct.counter_attr_parm** %3, align 8
  %9 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store %struct.list_head* %11, %struct.list_head** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.counter_device_attr* @kzalloc(i32 32, i32 %12)
  store %struct.counter_device_attr* %13, %struct.counter_device_attr** %4, align 8
  %14 = load %struct.counter_device_attr*, %struct.counter_device_attr** %4, align 8
  %15 = icmp ne %struct.counter_device_attr* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %96

19:                                               ; preds = %1
  %20 = load %struct.counter_device_attr*, %struct.counter_device_attr** %4, align 8
  %21 = getelementptr inbounds %struct.counter_device_attr, %struct.counter_device_attr* %20, i32 0, i32 2
  store %struct.device_attribute* %21, %struct.device_attribute** %5, align 8
  %22 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %23 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %22, i32 0, i32 1
  %24 = call i32 @sysfs_attr_init(%struct.TYPE_4__* %23)
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = load %struct.counter_attr_parm*, %struct.counter_attr_parm** %3, align 8
  %27 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.counter_attr_parm*, %struct.counter_attr_parm** %3, align 8
  %30 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @kasprintf(i32 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31)
  %33 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %34 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %37 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %19
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %92

44:                                               ; preds = %19
  %45 = load %struct.counter_attr_parm*, %struct.counter_attr_parm** %3, align 8
  %46 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %51 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, 292
  store i32 %54, i32* %52, align 8
  %55 = load %struct.counter_attr_parm*, %struct.counter_attr_parm** %3, align 8
  %56 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %59 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %58, i32 0, i32 2
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %49, %44
  %61 = load %struct.counter_attr_parm*, %struct.counter_attr_parm** %3, align 8
  %62 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %67 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, 128
  store i32 %70, i32* %68, align 8
  %71 = load %struct.counter_attr_parm*, %struct.counter_attr_parm** %3, align 8
  %72 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.device_attribute*, %struct.device_attribute** %5, align 8
  %75 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %65, %60
  %77 = load %struct.counter_attr_parm*, %struct.counter_attr_parm** %3, align 8
  %78 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.counter_device_attr*, %struct.counter_device_attr** %4, align 8
  %81 = getelementptr inbounds %struct.counter_device_attr, %struct.counter_device_attr* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.counter_device_attr*, %struct.counter_device_attr** %4, align 8
  %83 = getelementptr inbounds %struct.counter_device_attr, %struct.counter_device_attr* %82, i32 0, i32 0
  %84 = load %struct.list_head*, %struct.list_head** %7, align 8
  %85 = call i32 @list_add(i32* %83, %struct.list_head* %84)
  %86 = load %struct.counter_attr_parm*, %struct.counter_attr_parm** %3, align 8
  %87 = getelementptr inbounds %struct.counter_attr_parm, %struct.counter_attr_parm* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  store i32 0, i32* %2, align 4
  br label %96

92:                                               ; preds = %41
  %93 = load %struct.counter_device_attr*, %struct.counter_device_attr** %4, align 8
  %94 = call i32 @kfree(%struct.counter_device_attr* %93)
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %92, %76, %16
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.counter_device_attr* @kzalloc(i32, i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_4__*) #1

declare dso_local i32 @kasprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @kfree(%struct.counter_device_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
