; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_tad.c_time_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_tad.c_time_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.acpi_tad_rt = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@ENODATA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @time_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @time_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.acpi_tad_rt, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i32, i32* @ENODATA, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %14, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kmemdup_nul(i8* %17, i64 %18, i32 %19)
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %110

26:                                               ; preds = %4
  %27 = load i8*, i8** %11, align 8
  %28 = call i8* @acpi_tad_rt_next_field(i8* %27, i32* %13)
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %97

32:                                               ; preds = %26
  %33 = load i32, i32* %13, align 4
  %34 = getelementptr inbounds %struct.acpi_tad_rt, %struct.acpi_tad_rt* %10, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = call i8* @acpi_tad_rt_next_field(i8* %35, i32* %13)
  store i8* %36, i8** %12, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  br label %97

40:                                               ; preds = %32
  %41 = load i32, i32* %13, align 4
  %42 = getelementptr inbounds %struct.acpi_tad_rt, %struct.acpi_tad_rt* %10, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load i8*, i8** %12, align 8
  %44 = call i8* @acpi_tad_rt_next_field(i8* %43, i32* %13)
  store i8* %44, i8** %12, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  br label %97

48:                                               ; preds = %40
  %49 = load i32, i32* %13, align 4
  %50 = getelementptr inbounds %struct.acpi_tad_rt, %struct.acpi_tad_rt* %10, i32 0, i32 2
  store i32 %49, i32* %50, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = call i8* @acpi_tad_rt_next_field(i8* %51, i32* %13)
  store i8* %52, i8** %12, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  br label %97

56:                                               ; preds = %48
  %57 = load i32, i32* %13, align 4
  %58 = getelementptr inbounds %struct.acpi_tad_rt, %struct.acpi_tad_rt* %10, i32 0, i32 3
  store i32 %57, i32* %58, align 4
  %59 = load i8*, i8** %12, align 8
  %60 = call i8* @acpi_tad_rt_next_field(i8* %59, i32* %13)
  store i8* %60, i8** %12, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  br label %97

64:                                               ; preds = %56
  %65 = load i32, i32* %13, align 4
  %66 = getelementptr inbounds %struct.acpi_tad_rt, %struct.acpi_tad_rt* %10, i32 0, i32 4
  store i32 %65, i32* %66, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = call i8* @acpi_tad_rt_next_field(i8* %67, i32* %13)
  store i8* %68, i8** %12, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %64
  br label %97

72:                                               ; preds = %64
  %73 = load i32, i32* %13, align 4
  %74 = getelementptr inbounds %struct.acpi_tad_rt, %struct.acpi_tad_rt* %10, i32 0, i32 5
  store i32 %73, i32* %74, align 4
  %75 = load i8*, i8** %12, align 8
  %76 = call i8* @acpi_tad_rt_next_field(i8* %75, i32* %13)
  store i8* %76, i8** %12, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  br label %97

80:                                               ; preds = %72
  %81 = load i32, i32* %13, align 4
  %82 = getelementptr inbounds %struct.acpi_tad_rt, %struct.acpi_tad_rt* %10, i32 0, i32 6
  store i32 %81, i32* %82, align 8
  %83 = load i8*, i8** %12, align 8
  %84 = call i64 @kstrtoint(i8* %83, i32 10, i32* %13)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %97

87:                                               ; preds = %80
  %88 = load i32, i32* %13, align 4
  %89 = getelementptr inbounds %struct.acpi_tad_rt, %struct.acpi_tad_rt* %10, i32 0, i32 7
  store i32 %88, i32* %89, align 4
  %90 = getelementptr inbounds %struct.acpi_tad_rt, %struct.acpi_tad_rt* %10, i32 0, i32 10
  store i64 0, i64* %90, align 8
  %91 = getelementptr inbounds %struct.acpi_tad_rt, %struct.acpi_tad_rt* %10, i32 0, i32 9
  store i64 0, i64* %91, align 8
  %92 = getelementptr inbounds %struct.acpi_tad_rt, %struct.acpi_tad_rt* %10, i32 0, i32 8
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @memset(i32 %93, i32 0, i32 3)
  %95 = load %struct.device*, %struct.device** %6, align 8
  %96 = call i32 @acpi_tad_set_real_time(%struct.device* %95, %struct.acpi_tad_rt* %10)
  store i32 %96, i32* %14, align 4
  br label %97

97:                                               ; preds = %87, %86, %79, %71, %63, %55, %47, %39, %31
  %98 = load i8*, i8** %11, align 8
  %99 = call i32 @kfree(i8* %98)
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  br label %107

105:                                              ; preds = %97
  %106 = load i64, i64* %9, align 8
  br label %107

107:                                              ; preds = %105, %102
  %108 = phi i64 [ %104, %102 ], [ %106, %105 ]
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %107, %23
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i8* @kmemdup_nul(i8*, i64, i32) #1

declare dso_local i8* @acpi_tad_rt_next_field(i8*, i32*) #1

declare dso_local i64 @kstrtoint(i8*, i32, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @acpi_tad_set_real_time(%struct.device*, %struct.acpi_tad_rt*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
