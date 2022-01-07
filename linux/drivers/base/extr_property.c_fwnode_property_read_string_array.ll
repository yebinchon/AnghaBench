; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_property.c_fwnode_property_read_string_array.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_property.c_fwnode_property_read_string_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { %struct.fwnode_handle* }

@property_read_string_array = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fwnode_property_read_string_array(%struct.fwnode_handle* %0, i8* %1, i8** %2, i64 %3) #0 {
  %5 = alloca %struct.fwnode_handle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %11 = load i32, i32* @property_read_string_array, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @fwnode_call_int_op(%struct.fwnode_handle* %10, i32 %11, i8* %12, i8** %13, i64 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %4
  %21 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %22 = call i32 @IS_ERR_OR_NULL(%struct.fwnode_handle* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %20
  %25 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %26 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %25, i32 0, i32 0
  %27 = load %struct.fwnode_handle*, %struct.fwnode_handle** %26, align 8
  %28 = call i32 @IS_ERR_OR_NULL(%struct.fwnode_handle* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %24
  %31 = load %struct.fwnode_handle*, %struct.fwnode_handle** %5, align 8
  %32 = getelementptr inbounds %struct.fwnode_handle, %struct.fwnode_handle* %31, i32 0, i32 0
  %33 = load %struct.fwnode_handle*, %struct.fwnode_handle** %32, align 8
  %34 = load i32, i32* @property_read_string_array, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load i8**, i8*** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @fwnode_call_int_op(%struct.fwnode_handle* %33, i32 %34, i8* %35, i8** %36, i64 %37)
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %30, %24, %20, %4
  %40 = load i32, i32* %9, align 4
  ret i32 %40
}

declare dso_local i32 @fwnode_call_int_op(%struct.fwnode_handle*, i32, i8*, i8**, i64) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.fwnode_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
