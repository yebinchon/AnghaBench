; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_device_str_attr_create_.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_device_str_attr_create_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute = type { i8*, i32 }
%struct.dev_ext_attribute = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.attribute, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@device_show_string = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.attribute* (i8*, i8*)* @device_str_attr_create_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.attribute* @device_str_attr_create_(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.attribute*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dev_ext_attribute*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.dev_ext_attribute* @kzalloc(i32 32, i32 %7)
  store %struct.dev_ext_attribute* %8, %struct.dev_ext_attribute** %6, align 8
  %9 = load %struct.dev_ext_attribute*, %struct.dev_ext_attribute** %6, align 8
  %10 = icmp ne %struct.dev_ext_attribute* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.attribute* null, %struct.attribute** %3, align 8
  br label %36

12:                                               ; preds = %2
  %13 = load %struct.dev_ext_attribute*, %struct.dev_ext_attribute** %6, align 8
  %14 = getelementptr inbounds %struct.dev_ext_attribute, %struct.dev_ext_attribute* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @sysfs_attr_init(%struct.attribute* %15)
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.dev_ext_attribute*, %struct.dev_ext_attribute** %6, align 8
  %19 = getelementptr inbounds %struct.dev_ext_attribute, %struct.dev_ext_attribute* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.dev_ext_attribute*, %struct.dev_ext_attribute** %6, align 8
  %22 = getelementptr inbounds %struct.dev_ext_attribute, %struct.dev_ext_attribute* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.attribute, %struct.attribute* %23, i32 0, i32 0
  store i8* %20, i8** %24, align 8
  %25 = load %struct.dev_ext_attribute*, %struct.dev_ext_attribute** %6, align 8
  %26 = getelementptr inbounds %struct.dev_ext_attribute, %struct.dev_ext_attribute* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.attribute, %struct.attribute* %27, i32 0, i32 1
  store i32 292, i32* %28, align 8
  %29 = load i32, i32* @device_show_string, align 4
  %30 = load %struct.dev_ext_attribute*, %struct.dev_ext_attribute** %6, align 8
  %31 = getelementptr inbounds %struct.dev_ext_attribute, %struct.dev_ext_attribute* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 8
  %33 = load %struct.dev_ext_attribute*, %struct.dev_ext_attribute** %6, align 8
  %34 = getelementptr inbounds %struct.dev_ext_attribute, %struct.dev_ext_attribute* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store %struct.attribute* %35, %struct.attribute** %3, align 8
  br label %36

36:                                               ; preds = %12, %11
  %37 = load %struct.attribute*, %struct.attribute** %3, align 8
  ret %struct.attribute* %37
}

declare dso_local %struct.dev_ext_attribute* @kzalloc(i32, i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
