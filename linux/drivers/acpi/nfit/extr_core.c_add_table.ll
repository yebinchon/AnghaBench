; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_add_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_add_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_nfit_desc = type { %struct.device* }
%struct.device = type { i32 }
%struct.nfit_table_prev = type { i32 }
%struct.acpi_nfit_header = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"found a zero length table '%d' parsing nfit\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"smbios\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"unknown table '%d' parsing nfit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.acpi_nfit_desc*, %struct.nfit_table_prev*, i8*, i8*)* @add_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @add_table(%struct.acpi_nfit_desc* %0, %struct.nfit_table_prev* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.acpi_nfit_desc*, align 8
  %7 = alloca %struct.nfit_table_prev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.acpi_nfit_header*, align 8
  %12 = alloca i8*, align 8
  store %struct.acpi_nfit_desc* %0, %struct.acpi_nfit_desc** %6, align 8
  store %struct.nfit_table_prev* %1, %struct.nfit_table_prev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %6, align 8
  %14 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %10, align 8
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call i8* @ERR_PTR(i32 %17)
  store i8* %18, i8** %12, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = icmp uge i8* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %118

23:                                               ; preds = %4
  %24 = load i8*, i8** %8, align 8
  %25 = bitcast i8* %24 to %struct.acpi_nfit_header*
  store %struct.acpi_nfit_header* %25, %struct.acpi_nfit_header** %11, align 8
  %26 = load %struct.acpi_nfit_header*, %struct.acpi_nfit_header** %11, align 8
  %27 = getelementptr inbounds %struct.acpi_nfit_header, %struct.acpi_nfit_header* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %23
  %31 = load %struct.device*, %struct.device** %10, align 8
  %32 = load %struct.acpi_nfit_header*, %struct.acpi_nfit_header** %11, align 8
  %33 = getelementptr inbounds %struct.acpi_nfit_header, %struct.acpi_nfit_header* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_warn(%struct.device* %31, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i8* null, i8** %5, align 8
  br label %118

36:                                               ; preds = %23
  %37 = load %struct.acpi_nfit_header*, %struct.acpi_nfit_header** %11, align 8
  %38 = getelementptr inbounds %struct.acpi_nfit_header, %struct.acpi_nfit_header* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %105 [
    i32 128, label %40
    i32 130, label %49
    i32 134, label %58
    i32 133, label %67
    i32 131, label %76
    i32 132, label %85
    i32 129, label %94
    i32 135, label %97
  ]

40:                                               ; preds = %36
  %41 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %6, align 8
  %42 = load %struct.nfit_table_prev*, %struct.nfit_table_prev** %7, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @add_spa(%struct.acpi_nfit_desc* %41, %struct.nfit_table_prev* %42, i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = load i8*, i8** %12, align 8
  store i8* %47, i8** %5, align 8
  br label %118

48:                                               ; preds = %40
  br label %111

49:                                               ; preds = %36
  %50 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %6, align 8
  %51 = load %struct.nfit_table_prev*, %struct.nfit_table_prev** %7, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @add_memdev(%struct.acpi_nfit_desc* %50, %struct.nfit_table_prev* %51, i8* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %49
  %56 = load i8*, i8** %12, align 8
  store i8* %56, i8** %5, align 8
  br label %118

57:                                               ; preds = %49
  br label %111

58:                                               ; preds = %36
  %59 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %6, align 8
  %60 = load %struct.nfit_table_prev*, %struct.nfit_table_prev** %7, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @add_dcr(%struct.acpi_nfit_desc* %59, %struct.nfit_table_prev* %60, i8* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %58
  %65 = load i8*, i8** %12, align 8
  store i8* %65, i8** %5, align 8
  br label %118

66:                                               ; preds = %58
  br label %111

67:                                               ; preds = %36
  %68 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %6, align 8
  %69 = load %struct.nfit_table_prev*, %struct.nfit_table_prev** %7, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = call i32 @add_bdw(%struct.acpi_nfit_desc* %68, %struct.nfit_table_prev* %69, i8* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %67
  %74 = load i8*, i8** %12, align 8
  store i8* %74, i8** %5, align 8
  br label %118

75:                                               ; preds = %67
  br label %111

76:                                               ; preds = %36
  %77 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %6, align 8
  %78 = load %struct.nfit_table_prev*, %struct.nfit_table_prev** %7, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @add_idt(%struct.acpi_nfit_desc* %77, %struct.nfit_table_prev* %78, i8* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %76
  %83 = load i8*, i8** %12, align 8
  store i8* %83, i8** %5, align 8
  br label %118

84:                                               ; preds = %76
  br label %111

85:                                               ; preds = %36
  %86 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %6, align 8
  %87 = load %struct.nfit_table_prev*, %struct.nfit_table_prev** %7, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @add_flush(%struct.acpi_nfit_desc* %86, %struct.nfit_table_prev* %87, i8* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %85
  %92 = load i8*, i8** %12, align 8
  store i8* %92, i8** %5, align 8
  br label %118

93:                                               ; preds = %85
  br label %111

94:                                               ; preds = %36
  %95 = load %struct.device*, %struct.device** %10, align 8
  %96 = call i32 @dev_dbg(%struct.device* %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %111

97:                                               ; preds = %36
  %98 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %6, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @add_platform_cap(%struct.acpi_nfit_desc* %98, i8* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %97
  %103 = load i8*, i8** %12, align 8
  store i8* %103, i8** %5, align 8
  br label %118

104:                                              ; preds = %97
  br label %111

105:                                              ; preds = %36
  %106 = load %struct.device*, %struct.device** %10, align 8
  %107 = load %struct.acpi_nfit_header*, %struct.acpi_nfit_header** %11, align 8
  %108 = getelementptr inbounds %struct.acpi_nfit_header, %struct.acpi_nfit_header* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @dev_err(%struct.device* %106, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %105, %104, %94, %93, %84, %75, %66, %57, %48
  %112 = load i8*, i8** %8, align 8
  %113 = load %struct.acpi_nfit_header*, %struct.acpi_nfit_header** %11, align 8
  %114 = getelementptr inbounds %struct.acpi_nfit_header, %struct.acpi_nfit_header* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr i8, i8* %112, i64 %116
  store i8* %117, i8** %5, align 8
  br label %118

118:                                              ; preds = %111, %102, %91, %82, %73, %64, %55, %46, %30, %22
  %119 = load i8*, i8** %5, align 8
  ret i8* %119
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @add_spa(%struct.acpi_nfit_desc*, %struct.nfit_table_prev*, i8*) #1

declare dso_local i32 @add_memdev(%struct.acpi_nfit_desc*, %struct.nfit_table_prev*, i8*) #1

declare dso_local i32 @add_dcr(%struct.acpi_nfit_desc*, %struct.nfit_table_prev*, i8*) #1

declare dso_local i32 @add_bdw(%struct.acpi_nfit_desc*, %struct.nfit_table_prev*, i8*) #1

declare dso_local i32 @add_idt(%struct.acpi_nfit_desc*, %struct.nfit_table_prev*, i8*) #1

declare dso_local i32 @add_flush(%struct.acpi_nfit_desc*, %struct.nfit_table_prev*, i8*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @add_platform_cap(%struct.acpi_nfit_desc*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
