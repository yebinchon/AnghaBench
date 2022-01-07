; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_property.c_fwnode_property_read_int_array.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_property.c_fwnode_property_read_int_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { %struct.fwnode_handle* }

@property_read_int_array = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)* @fwnode_property_read_int_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwnode_property_read_int_array(%struct.fwnode_handle* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.fwnode_handle*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %13 = load i32, i32* @property_read_int_array, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i32 @fwnode_call_int_op(%struct.fwnode_handle* %12, i32 %13, i8* %14, i32 %15, i8* %16, i64 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %5
  %24 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %25 = call i32 @IS_ERR_OR_NULL(%struct.fwnode_handle* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %23
  %28 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %29 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %28, i32 0, i32 0
  %30 = load %struct.fwnode_handle*, %struct.fwnode_handle** %29, align 8
  %31 = call i32 @IS_ERR_OR_NULL(%struct.fwnode_handle* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %27
  %34 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %35 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %34, i32 0, i32 0
  %36 = load %struct.fwnode_handle*, %struct.fwnode_handle** %35, align 8
  %37 = load i32, i32* @property_read_int_array, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @fwnode_call_int_op(%struct.fwnode_handle* %36, i32 %37, i8* %38, i32 %39, i8* %40, i64 %41)
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %33, %27, %23, %5
  %44 = load i32, i32* %11, align 4
  ret i32 %44
}

declare dso_local i32 @fwnode_call_int_op(%struct.fwnode_handle*, i32, i8*, i32, i8*, i64) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.fwnode_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
