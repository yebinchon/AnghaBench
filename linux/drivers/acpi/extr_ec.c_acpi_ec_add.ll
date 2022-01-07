; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_acpi_ec_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_ec.c_acpi_ec_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ec = type { i64, i64, i32 }
%struct.acpi_device = type { %struct.acpi_ec*, i32 }

@ACPI_EC_DEVICE_NAME = common dso_local global i32 0, align 4
@ACPI_EC_CLASS = common dso_local global i32 0, align 4
@ACPI_ECDT_HID = common dso_local global i32 0, align 4
@boot_ec_is_ecdt = common dso_local global i32 0, align 4
@boot_ec = common dso_local global %struct.acpi_ec* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@AE_CTRL_TERMINATE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"duplicated.\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Boot %s EC used to handle transactions and events\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ECDT\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"DSDT\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"EC data\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Could not request EC data io port 0x%lx\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"EC cmd\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Could not request EC cmd io port 0x%lx\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"enumerated.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_ec_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ec_add(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.acpi_ec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store %struct.acpi_ec* null, %struct.acpi_ec** %4, align 8
  store i32 1, i32* %5, align 4
  %8 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %9 = call i32 @acpi_device_name(%struct.acpi_device* %8)
  %10 = load i32, i32* @ACPI_EC_DEVICE_NAME, align 4
  %11 = call i32 @strcpy(i32 %9, i32 %10)
  %12 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %13 = call i32 @acpi_device_class(%struct.acpi_device* %12)
  %14 = load i32, i32* @ACPI_EC_CLASS, align 4
  %15 = call i32 @strcpy(i32 %13, i32 %14)
  %16 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %17 = call i32 @acpi_device_hid(%struct.acpi_device* %16)
  %18 = load i32, i32* @ACPI_ECDT_HID, align 4
  %19 = call i32 @strcmp(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  store i32 1, i32* @boot_ec_is_ecdt, align 4
  %22 = load %struct.acpi_ec*, %struct.acpi_ec** @boot_ec, align 8
  store %struct.acpi_ec* %22, %struct.acpi_ec** %4, align 8
  store i32 0, i32* %5, align 4
  br label %75

23:                                               ; preds = %1
  %24 = call %struct.acpi_ec* (...) @acpi_ec_alloc()
  store %struct.acpi_ec* %24, %struct.acpi_ec** %4, align 8
  %25 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %26 = icmp ne %struct.acpi_ec* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %159

30:                                               ; preds = %23
  %31 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %32 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %35 = call i64 @ec_parse_device(i32 %33, i32 0, %struct.acpi_ec* %34, i32* null)
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @AE_CTRL_TERMINATE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %150

42:                                               ; preds = %30
  %43 = load %struct.acpi_ec*, %struct.acpi_ec** @boot_ec, align 8
  %44 = icmp ne %struct.acpi_ec* %43, null
  br i1 %44, label %45, label %74

45:                                               ; preds = %42
  %46 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %47 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.acpi_ec*, %struct.acpi_ec** @boot_ec, align 8
  %50 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %45
  %54 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %55 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.acpi_ec*, %struct.acpi_ec** @boot_ec, align 8
  %58 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %53
  store i32 0, i32* @boot_ec_is_ecdt, align 4
  %62 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %63 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.acpi_ec*, %struct.acpi_ec** @boot_ec, align 8
  %66 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %68 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @acpi_handle_debug(i32 %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %72 = call i32 @acpi_ec_free(%struct.acpi_ec* %71)
  %73 = load %struct.acpi_ec*, %struct.acpi_ec** @boot_ec, align 8
  store %struct.acpi_ec* %73, %struct.acpi_ec** %4, align 8
  br label %74

74:                                               ; preds = %61, %53, %45, %42
  br label %75

75:                                               ; preds = %74, %21
  %76 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %77 = call i32 @acpi_ec_setup(%struct.acpi_ec* %76, i32 1)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %142

81:                                               ; preds = %75
  %82 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %83 = load %struct.acpi_ec*, %struct.acpi_ec** @boot_ec, align 8
  %84 = icmp eq %struct.acpi_ec* %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load %struct.acpi_ec*, %struct.acpi_ec** @boot_ec, align 8
  %87 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @boot_ec_is_ecdt, align 4
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %93 = call i32 @acpi_handle_info(i32 %88, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %85, %81
  %95 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %96 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %97 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %96, i32 0, i32 0
  store %struct.acpi_ec* %95, %struct.acpi_ec** %97, align 8
  %98 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %99 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @request_region(i64 %100, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %111 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @WARN(i32 %109, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i64 %112)
  %114 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %115 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @request_region(i64 %116, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %127 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @WARN(i32 %125, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i64 %128)
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %94
  %133 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %134 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @acpi_walk_dep_device_list(i32 %135)
  br label %137

137:                                              ; preds = %132, %94
  %138 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %139 = getelementptr inbounds %struct.acpi_ec, %struct.acpi_ec* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @acpi_handle_debug(i32 %140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %159

142:                                              ; preds = %80
  %143 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %144 = load %struct.acpi_ec*, %struct.acpi_ec** @boot_ec, align 8
  %145 = icmp ne %struct.acpi_ec* %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %148 = call i32 @acpi_ec_remove_query_handlers(%struct.acpi_ec* %147, i32 1, i32 0)
  br label %149

149:                                              ; preds = %146, %142
  br label %150

150:                                              ; preds = %149, %39
  %151 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %152 = load %struct.acpi_ec*, %struct.acpi_ec** @boot_ec, align 8
  %153 = icmp ne %struct.acpi_ec* %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load %struct.acpi_ec*, %struct.acpi_ec** %4, align 8
  %156 = call i32 @acpi_ec_free(%struct.acpi_ec* %155)
  br label %157

157:                                              ; preds = %154, %150
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %157, %137, %27
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @acpi_device_name(%struct.acpi_device*) #1

declare dso_local i32 @acpi_device_class(%struct.acpi_device*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @acpi_device_hid(%struct.acpi_device*) #1

declare dso_local %struct.acpi_ec* @acpi_ec_alloc(...) #1

declare dso_local i64 @ec_parse_device(i32, i32, %struct.acpi_ec*, i32*) #1

declare dso_local i32 @acpi_handle_debug(i32, i8*) #1

declare dso_local i32 @acpi_ec_free(%struct.acpi_ec*) #1

declare dso_local i32 @acpi_ec_setup(%struct.acpi_ec*, i32) #1

declare dso_local i32 @acpi_handle_info(i32, i8*, i8*) #1

declare dso_local i32 @request_region(i64, i32, i8*) #1

declare dso_local i32 @WARN(i32, i8*, i64) #1

declare dso_local i32 @acpi_walk_dep_device_list(i32) #1

declare dso_local i32 @acpi_ec_remove_query_handlers(%struct.acpi_ec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
