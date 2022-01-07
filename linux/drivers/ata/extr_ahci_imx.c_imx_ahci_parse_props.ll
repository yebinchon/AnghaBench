; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_imx.c_imx_ahci_parse_props.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_ahci_imx.c_imx_ahci_parse_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.reg_property = type { i32, i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [30 x i8] c"%s not specified, using %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s value %u, using %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"DT property %s is not a valid value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.reg_property*, i64)* @imx_ahci_parse_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @imx_ahci_parse_props(%struct.device* %0, %struct.reg_property* %1, i64 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.reg_property*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.reg_property* %1, %struct.reg_property** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %131, %3
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %6, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %136

20:                                               ; preds = %15
  %21 = load %struct.reg_property*, %struct.reg_property** %5, align 8
  %22 = getelementptr inbounds %struct.reg_property, %struct.reg_property* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %20
  %26 = load %struct.device_node*, %struct.device_node** %7, align 8
  %27 = load %struct.reg_property*, %struct.reg_property** %5, align 8
  %28 = getelementptr inbounds %struct.reg_property, %struct.reg_property* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @of_property_read_bool(%struct.device_node* %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load %struct.reg_property*, %struct.reg_property** %5, align 8
  %34 = getelementptr inbounds %struct.reg_property, %struct.reg_property* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %8, align 8
  br label %44

38:                                               ; preds = %25
  %39 = load %struct.reg_property*, %struct.reg_property** %5, align 8
  %40 = getelementptr inbounds %struct.reg_property, %struct.reg_property* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %8, align 8
  br label %44

44:                                               ; preds = %38, %32
  br label %131

45:                                               ; preds = %20
  %46 = load %struct.device_node*, %struct.device_node** %7, align 8
  %47 = load %struct.reg_property*, %struct.reg_property** %5, align 8
  %48 = getelementptr inbounds %struct.reg_property, %struct.reg_property* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @of_property_read_u32(%struct.device_node* %46, i32 %49, i64* %11)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %45
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = load %struct.reg_property*, %struct.reg_property** %5, align 8
  %55 = getelementptr inbounds %struct.reg_property, %struct.reg_property* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.reg_property*, %struct.reg_property** %5, align 8
  %58 = getelementptr inbounds %struct.reg_property, %struct.reg_property* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (%struct.device*, i8*, i32, i64, ...) @dev_info(%struct.device* %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %56, i64 %59)
  %61 = load %struct.reg_property*, %struct.reg_property** %5, align 8
  %62 = getelementptr inbounds %struct.reg_property, %struct.reg_property* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = or i64 %64, %63
  store i64 %65, i64* %8, align 8
  br label %131

66:                                               ; preds = %45
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %110, %66
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.reg_property*, %struct.reg_property** %5, align 8
  %70 = getelementptr inbounds %struct.reg_property, %struct.reg_property* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %113

73:                                               ; preds = %67
  %74 = load %struct.reg_property*, %struct.reg_property** %5, align 8
  %75 = getelementptr inbounds %struct.reg_property, %struct.reg_property* %74, i32 0, i32 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %11, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %109

84:                                               ; preds = %73
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = load %struct.reg_property*, %struct.reg_property** %5, align 8
  %87 = getelementptr inbounds %struct.reg_property, %struct.reg_property* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load i64, i64* %11, align 8
  %90 = load %struct.reg_property*, %struct.reg_property** %5, align 8
  %91 = getelementptr inbounds %struct.reg_property, %struct.reg_property* %90, i32 0, i32 4
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (%struct.device*, i8*, i32, i64, ...) @dev_info(%struct.device* %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %88, i64 %89, i64 %97)
  %99 = load %struct.reg_property*, %struct.reg_property** %5, align 8
  %100 = getelementptr inbounds %struct.reg_property, %struct.reg_property* %99, i32 0, i32 4
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %8, align 8
  %108 = or i64 %107, %106
  store i64 %108, i64* %8, align 8
  br label %113

109:                                              ; preds = %73
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %67

113:                                              ; preds = %84, %67
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.reg_property*, %struct.reg_property** %5, align 8
  %116 = getelementptr inbounds %struct.reg_property, %struct.reg_property* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %114, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %113
  %120 = load %struct.device*, %struct.device** %4, align 8
  %121 = load %struct.reg_property*, %struct.reg_property** %5, align 8
  %122 = getelementptr inbounds %struct.reg_property, %struct.reg_property* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @dev_err(%struct.device* %120, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %123)
  %125 = load %struct.reg_property*, %struct.reg_property** %5, align 8
  %126 = getelementptr inbounds %struct.reg_property, %struct.reg_property* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %8, align 8
  %129 = or i64 %128, %127
  store i64 %129, i64* %8, align 8
  br label %130

130:                                              ; preds = %119, %113
  br label %131

131:                                              ; preds = %130, %52, %44
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  %134 = load %struct.reg_property*, %struct.reg_property** %5, align 8
  %135 = getelementptr inbounds %struct.reg_property, %struct.reg_property* %134, i32 1
  store %struct.reg_property* %135, %struct.reg_property** %5, align 8
  br label %15

136:                                              ; preds = %15
  %137 = load i64, i64* %8, align 8
  ret i64 %137
}

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i32) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i32, i64*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i64, ...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
