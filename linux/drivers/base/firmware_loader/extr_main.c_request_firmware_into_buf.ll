; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/firmware_loader/extr_main.c_request_firmware_into_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/firmware_loader/extr_main.c_request_firmware_into_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32 }
%struct.device = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@FW_OPT_UEVENT = common dso_local global i32 0, align 4
@FW_OPT_NOCACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @request_firmware_into_buf(%struct.firmware** %0, i8* %1, %struct.device* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.firmware**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.firmware** %0, %struct.firmware*** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.device* %2, %struct.device** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.device*, %struct.device** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i64 @fw_cache_is_setup(%struct.device* %13, i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %35

20:                                               ; preds = %5
  %21 = load i32, i32* @THIS_MODULE, align 4
  %22 = call i32 @__module_get(i32 %21)
  %23 = load %struct.firmware**, %struct.firmware*** %7, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.device*, %struct.device** %9, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i32, i32* @FW_OPT_UEVENT, align 4
  %29 = load i32, i32* @FW_OPT_NOCACHE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @_request_firmware(%struct.firmware** %23, i8* %24, %struct.device* %25, i8* %26, i64 %27, i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* @THIS_MODULE, align 4
  %33 = call i32 @module_put(i32 %32)
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %20, %17
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i64 @fw_cache_is_setup(%struct.device*, i8*) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i32 @_request_firmware(%struct.firmware**, i8*, %struct.device*, i8*, i64, i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
