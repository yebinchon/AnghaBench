; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_device_sysfs.c_acpi_device_setup_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_device_sysfs.c_acpi_device_setup_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_9__, i64, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, i32*, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.acpi_buffer = type { i32*, i32*, i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@dev_attr_path = common dso_local global i32 0, align 4
@dev_attr_hid = common dso_local global i32 0, align 4
@dev_attr_modalias = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_STR\00", align 1
@dev_attr_description = common dso_local global i32 0, align 4
@dev_attr_adr = common dso_local global i32 0, align 4
@dev_attr_uid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"_SUN\00", align 1
@dev_attr_sun = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"_HRV\00", align 1
@dev_attr_hrv = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"_STA\00", align 1
@dev_attr_status = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"_EJ0\00", align 1
@dev_attr_eject = common dso_local global i32 0, align 4
@dev_attr_power_state = common dso_local global i32 0, align 4
@dev_attr_real_power_state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_device_setup_files(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.acpi_buffer, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %7 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 0
  %8 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %7, align 8
  %11 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 1
  store i32* null, i32** %11, align 8
  %12 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 2
  store i32 0, i32* %12, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %19 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %18, i32 0, i32 1
  %20 = call i32 @device_create_file(%struct.TYPE_12__* %19, i32* @dev_attr_path)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %186

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %1
  %26 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %27 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  %29 = call i32 @list_empty(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %25
  %32 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %33 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %32, i32 0, i32 1
  %34 = call i32 @device_create_file(%struct.TYPE_12__* %33, i32* @dev_attr_hid)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %186

38:                                               ; preds = %31
  %39 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %40 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %39, i32 0, i32 1
  %41 = call i32 @device_create_file(%struct.TYPE_12__* %40, i32* @dev_attr_modalias)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %186

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %25
  %47 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %48 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @acpi_has_method(i64 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %46
  %53 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %54 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @acpi_evaluate_object(i64 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.acpi_buffer* %4)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @ACPI_FAILURE(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 0
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %60, %52
  %63 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %66 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  store i32* %64, i32** %67, align 8
  %68 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %69 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %68, i32 0, i32 1
  %70 = call i32 @device_create_file(%struct.TYPE_12__* %69, i32* @dev_attr_description)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %186

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74, %46
  %76 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %77 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %84 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %83, i32 0, i32 1
  %85 = call i32 @device_create_file(%struct.TYPE_12__* %84, i32* @dev_attr_adr)
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %82, %75
  %87 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %88 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %94 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %93, i32 0, i32 1
  %95 = call i32 @device_create_file(%struct.TYPE_12__* %94, i32* @dev_attr_uid)
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %92, %86
  %97 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %98 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @acpi_has_method(i64 %99, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %96
  %103 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %104 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %103, i32 0, i32 1
  %105 = call i32 @device_create_file(%struct.TYPE_12__* %104, i32* @dev_attr_sun)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %186

109:                                              ; preds = %102
  br label %110

110:                                              ; preds = %109, %96
  %111 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %112 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @acpi_has_method(i64 %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %110
  %117 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %118 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %117, i32 0, i32 1
  %119 = call i32 @device_create_file(%struct.TYPE_12__* %118, i32* @dev_attr_hrv)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %186

123:                                              ; preds = %116
  br label %124

124:                                              ; preds = %123, %110
  %125 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %126 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @acpi_has_method(i64 %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %124
  %131 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %132 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %131, i32 0, i32 1
  %133 = call i32 @device_create_file(%struct.TYPE_12__* %132, i32* @dev_attr_status)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %186

137:                                              ; preds = %130
  br label %138

138:                                              ; preds = %137, %124
  %139 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %140 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = call i64 @acpi_has_method(i64 %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %138
  %145 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %146 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %145, i32 0, i32 1
  %147 = call i32 @device_create_file(%struct.TYPE_12__* %146, i32* @dev_attr_eject)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %144
  %151 = load i32, i32* %6, align 4
  store i32 %151, i32* %2, align 4
  br label %188

152:                                              ; preds = %144
  br label %153

153:                                              ; preds = %152, %138
  %154 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %155 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %179

159:                                              ; preds = %153
  %160 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %161 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %160, i32 0, i32 1
  %162 = call i32 @device_create_file(%struct.TYPE_12__* %161, i32* @dev_attr_power_state)
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = load i32, i32* %6, align 4
  store i32 %166, i32* %2, align 4
  br label %188

167:                                              ; preds = %159
  %168 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %169 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %167
  %175 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %176 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %175, i32 0, i32 1
  %177 = call i32 @device_create_file(%struct.TYPE_12__* %176, i32* @dev_attr_real_power_state)
  store i32 %177, i32* %6, align 4
  br label %178

178:                                              ; preds = %174, %167
  br label %179

179:                                              ; preds = %178, %153
  %180 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %181 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %184 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %183, i32 0, i32 0
  %185 = call i32 @acpi_expose_nondev_subnodes(i32* %182, i32* %184)
  br label %186

186:                                              ; preds = %179, %136, %122, %108, %73, %44, %37, %23
  %187 = load i32, i32* %6, align 4
  store i32 %187, i32* %2, align 4
  br label %188

188:                                              ; preds = %186, %165, %150
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local i32 @device_create_file(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @acpi_has_method(i64, i8*) #1

declare dso_local i32 @acpi_evaluate_object(i64, i8*, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_expose_nondev_subnodes(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
