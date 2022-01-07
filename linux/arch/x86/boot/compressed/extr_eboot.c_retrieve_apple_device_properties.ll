; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_eboot.c_retrieve_apple_device_properties.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_eboot.c_retrieve_apple_device_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.boot_params = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.setup_data = type { i64, i32, i32, i32* }

@APPLE_PROPERTIES_PROTOCOL_GUID = common dso_local global i32 0, align 4
@locate_protocol = common dso_local global i32 0, align 4
@EFI_SUCCESS = common dso_local global i64 0, align 8
@apple_properties_protocol = common dso_local global i32 0, align 4
@version = common dso_local global i32 0, align 4
@sys_table = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Unsupported properties proto version\0A\00", align 1
@get_all = common dso_local global i32 0, align 4
@allocate_pool = common dso_local global i32 0, align 4
@EFI_LOADER_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to allocate memory for 'properties'\0A\00", align 1
@EFI_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8
@free_pool = common dso_local global i32 0, align 4
@SETUP_APPLE_PROPERTIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.boot_params*)* @retrieve_apple_device_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retrieve_apple_device_properties(%struct.boot_params* %0) #0 {
  %2 = alloca %struct.boot_params*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.setup_data*, align 8
  %5 = alloca %struct.setup_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.boot_params* %0, %struct.boot_params** %2, align 8
  %9 = load i32, i32* @APPLE_PROPERTIES_PROTOCOL_GUID, align 4
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @locate_protocol, align 4
  %11 = bitcast i32* %3 to %struct.setup_data*
  %12 = call i64 (i32, %struct.setup_data*, ...) @efi_call_early(i32 %10, %struct.setup_data* %11, i8* null, i8** %8)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @EFI_SUCCESS, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %108

17:                                               ; preds = %1
  %18 = load i32, i32* @apple_properties_protocol, align 4
  %19 = load i32, i32* @version, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @efi_table_attr(i32 %18, i32 %19, i8* %20)
  %22 = icmp ne i32 %21, 65536
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @sys_table, align 4
  %25 = call i32 @efi_printk(i32 %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %108

26:                                               ; preds = %17
  %27 = load i32, i32* @apple_properties_protocol, align 4
  %28 = load i32, i32* @get_all, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @efi_call_proto(i32 %27, i32 %28, i8* %29, i32* null, i32* %7)
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %108

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %66, %34
  %36 = load i32, i32* @allocate_pool, align 4
  %37 = load i32, i32* @EFI_LOADER_DATA, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to %struct.setup_data*
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = add i64 %41, 24
  %43 = call i64 (i32, %struct.setup_data*, ...) @efi_call_early(i32 %36, %struct.setup_data* %39, i64 %42, %struct.setup_data** %5)
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @EFI_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load i32, i32* @sys_table, align 4
  %49 = call i32 @efi_printk(i32 %48, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %108

50:                                               ; preds = %35
  %51 = load i32, i32* @apple_properties_protocol, align 4
  %52 = load i32, i32* @get_all, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.setup_data*, %struct.setup_data** %5, align 8
  %55 = getelementptr inbounds %struct.setup_data, %struct.setup_data* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = call i64 @efi_call_proto(i32 %51, i32 %52, i8* %53, i32* %56, i32* %7)
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @EFI_BUFFER_TOO_SMALL, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %50
  %62 = load i32, i32* @free_pool, align 4
  %63 = load %struct.setup_data*, %struct.setup_data** %5, align 8
  %64 = call i64 (i32, %struct.setup_data*, ...) @efi_call_early(i32 %62, %struct.setup_data* %63)
  br label %65

65:                                               ; preds = %61, %50
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* @EFI_BUFFER_TOO_SMALL, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %35, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* @SETUP_APPLE_PROPERTIES, align 4
  %72 = load %struct.setup_data*, %struct.setup_data** %5, align 8
  %73 = getelementptr inbounds %struct.setup_data, %struct.setup_data* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.setup_data*, %struct.setup_data** %5, align 8
  %76 = getelementptr inbounds %struct.setup_data, %struct.setup_data* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load %struct.setup_data*, %struct.setup_data** %5, align 8
  %78 = getelementptr inbounds %struct.setup_data, %struct.setup_data* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load %struct.boot_params*, %struct.boot_params** %2, align 8
  %80 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.setup_data*
  store %struct.setup_data* %83, %struct.setup_data** %4, align 8
  %84 = load %struct.setup_data*, %struct.setup_data** %4, align 8
  %85 = icmp ne %struct.setup_data* %84, null
  br i1 %85, label %92, label %86

86:                                               ; preds = %70
  %87 = load %struct.setup_data*, %struct.setup_data** %5, align 8
  %88 = ptrtoint %struct.setup_data* %87 to i64
  %89 = load %struct.boot_params*, %struct.boot_params** %2, align 8
  %90 = getelementptr inbounds %struct.boot_params, %struct.boot_params* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i64 %88, i64* %91, align 8
  br label %108

92:                                               ; preds = %70
  br label %93

93:                                               ; preds = %98, %92
  %94 = load %struct.setup_data*, %struct.setup_data** %4, align 8
  %95 = getelementptr inbounds %struct.setup_data, %struct.setup_data* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.setup_data*, %struct.setup_data** %4, align 8
  %100 = getelementptr inbounds %struct.setup_data, %struct.setup_data* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to %struct.setup_data*
  store %struct.setup_data* %102, %struct.setup_data** %4, align 8
  br label %93

103:                                              ; preds = %93
  %104 = load %struct.setup_data*, %struct.setup_data** %5, align 8
  %105 = ptrtoint %struct.setup_data* %104 to i64
  %106 = load %struct.setup_data*, %struct.setup_data** %4, align 8
  %107 = getelementptr inbounds %struct.setup_data, %struct.setup_data* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %16, %23, %33, %47, %103, %86
  ret void
}

declare dso_local i64 @efi_call_early(i32, %struct.setup_data*, ...) #1

declare dso_local i32 @efi_table_attr(i32, i32, i8*) #1

declare dso_local i32 @efi_printk(i32, i8*) #1

declare dso_local i64 @efi_call_proto(i32, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
