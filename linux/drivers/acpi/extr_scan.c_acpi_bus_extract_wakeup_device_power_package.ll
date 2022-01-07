; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_bus_extract_wakeup_device_power_package.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_bus_extract_wakeup_device_power_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.acpi_device_wakeup, i32 }
%struct.acpi_device_wakeup = type { i32, i32, i32, i32* }
%struct.acpi_buffer = type { i64, i32*, i32 }
%union.acpi_object = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %union.acpi_object* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_PRW\00", align 1
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Evaluating _PRW\00", align 1
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@ACPI_TYPE_LOCAL_REFERENCE = common dso_local global i64 0, align 8
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [60 x i8] c"Retrieving current states of wakeup power resources failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"Overriding _PRW sleep state (S%d) by S%d from power resources\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_bus_extract_wakeup_device_power_package to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_bus_extract_wakeup_device_power_package(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_device_wakeup*, align 8
  %6 = alloca %struct.acpi_buffer, align 8
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca %union.acpi_object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %12 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %13 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  %15 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %15, i32 0, i32 0
  store %struct.acpi_device_wakeup* %16, %struct.acpi_device_wakeup** %5, align 8
  %17 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %18 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %17, align 8
  %20 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 2
  store i32 0, i32* %21, align 8
  store %union.acpi_object* null, %union.acpi_object** %7, align 8
  store %union.acpi_object* null, %union.acpi_object** %8, align 8
  %22 = load i32, i32* @ENODATA, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %10, align 4
  %24 = load %struct.acpi_device_wakeup*, %struct.acpi_device_wakeup** %5, align 8
  %25 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %24, i32 0, i32 2
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @acpi_evaluate_object(i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.acpi_buffer* %6)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @ACPI_FAILURE(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %1
  %33 = load i32, i32* @AE_INFO, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([16 x i8]* @.str.1 to i32))
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %2, align 4
  br label %196

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %union.acpi_object*
  store %union.acpi_object* %40, %union.acpi_object** %7, align 8
  %41 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %42 = icmp ne %union.acpi_object* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %45 = bitcast %union.acpi_object* %44 to %struct.TYPE_5__*
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %47, 2
  br i1 %48, label %49, label %50

49:                                               ; preds = %43, %37
  br label %191

50:                                               ; preds = %43
  %51 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %52 = bitcast %union.acpi_object* %51 to %struct.TYPE_5__*
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load %union.acpi_object*, %union.acpi_object** %53, align 8
  %55 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %54, i64 0
  store %union.acpi_object* %55, %union.acpi_object** %8, align 8
  %56 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %57 = icmp ne %union.acpi_object* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  br label %191

59:                                               ; preds = %50
  %60 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %61 = bitcast %union.acpi_object* %60 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %113

65:                                               ; preds = %59
  %66 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %67 = bitcast %union.acpi_object* %66 to %struct.TYPE_5__*
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %69, 2
  br i1 %70, label %91, label %71

71:                                               ; preds = %65
  %72 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %73 = bitcast %union.acpi_object* %72 to %struct.TYPE_5__*
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load %union.acpi_object*, %union.acpi_object** %74, align 8
  %76 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %75, i64 0
  %77 = bitcast %union.acpi_object* %76 to i64*
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ACPI_TYPE_LOCAL_REFERENCE, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %91, label %81

81:                                               ; preds = %71
  %82 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %83 = bitcast %union.acpi_object* %82 to %struct.TYPE_5__*
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load %union.acpi_object*, %union.acpi_object** %84, align 8
  %86 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %85, i64 1
  %87 = bitcast %union.acpi_object* %86 to i64*
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %81, %71, %65
  br label %191

92:                                               ; preds = %81
  %93 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %94 = bitcast %union.acpi_object* %93 to %struct.TYPE_5__*
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load %union.acpi_object*, %union.acpi_object** %95, align 8
  %97 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %96, i64 0
  %98 = bitcast %union.acpi_object* %97 to %struct.TYPE_4__*
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.acpi_device_wakeup*, %struct.acpi_device_wakeup** %5, align 8
  %102 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %101, i32 0, i32 3
  store i32* %100, i32** %102, align 8
  %103 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %104 = bitcast %union.acpi_object* %103 to %struct.TYPE_5__*
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load %union.acpi_object*, %union.acpi_object** %105, align 8
  %107 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %106, i64 1
  %108 = bitcast %union.acpi_object* %107 to %struct.TYPE_6__*
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.acpi_device_wakeup*, %struct.acpi_device_wakeup** %5, align 8
  %112 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  br label %130

113:                                              ; preds = %59
  %114 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %115 = bitcast %union.acpi_object* %114 to i64*
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %113
  %120 = load %struct.acpi_device_wakeup*, %struct.acpi_device_wakeup** %5, align 8
  %121 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %120, i32 0, i32 3
  store i32* null, i32** %121, align 8
  %122 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %123 = bitcast %union.acpi_object* %122 to %struct.TYPE_6__*
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.acpi_device_wakeup*, %struct.acpi_device_wakeup** %5, align 8
  %127 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  br label %129

128:                                              ; preds = %113
  br label %191

129:                                              ; preds = %119
  br label %130

130:                                              ; preds = %129, %92
  %131 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %132 = bitcast %union.acpi_object* %131 to %struct.TYPE_5__*
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load %union.acpi_object*, %union.acpi_object** %133, align 8
  %135 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %134, i64 1
  store %union.acpi_object* %135, %union.acpi_object** %8, align 8
  %136 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %137 = bitcast %union.acpi_object* %136 to i64*
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %130
  br label %191

142:                                              ; preds = %130
  %143 = load %union.acpi_object*, %union.acpi_object** %8, align 8
  %144 = bitcast %union.acpi_object* %143 to %struct.TYPE_6__*
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.acpi_device_wakeup*, %struct.acpi_device_wakeup** %5, align 8
  %148 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %150 = load %struct.acpi_device_wakeup*, %struct.acpi_device_wakeup** %5, align 8
  %151 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %150, i32 0, i32 2
  %152 = call i32 @acpi_extract_power_resources(%union.acpi_object* %149, i32 2, i32* %151)
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %142
  br label %191

156:                                              ; preds = %142
  %157 = load %struct.acpi_device_wakeup*, %struct.acpi_device_wakeup** %5, align 8
  %158 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %157, i32 0, i32 2
  %159 = call i32 @list_empty(i32* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %190, label %161

161:                                              ; preds = %156
  %162 = load %struct.acpi_device_wakeup*, %struct.acpi_device_wakeup** %5, align 8
  %163 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %162, i32 0, i32 2
  %164 = call i32 @acpi_power_wakeup_list_init(i32* %163, i32* %11)
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %161
  %168 = load i32, i32* %4, align 4
  %169 = call i32 (i32, i8*, ...) @acpi_handle_warn(i32 %168, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %170 = load %struct.acpi_device_wakeup*, %struct.acpi_device_wakeup** %5, align 8
  %171 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %170, i32 0, i32 2
  %172 = call i32 @acpi_power_resources_list_free(i32* %171)
  br label %191

173:                                              ; preds = %161
  %174 = load i32, i32* %11, align 4
  %175 = load %struct.acpi_device_wakeup*, %struct.acpi_device_wakeup** %5, align 8
  %176 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = icmp slt i32 %174, %177
  br i1 %178, label %179, label %189

179:                                              ; preds = %173
  %180 = load i32, i32* %4, align 4
  %181 = load %struct.acpi_device_wakeup*, %struct.acpi_device_wakeup** %5, align 8
  %182 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %11, align 4
  %185 = call i32 (i32, i8*, ...) @acpi_handle_warn(i32 %180, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %183, i32 %184)
  %186 = load i32, i32* %11, align 4
  %187 = load %struct.acpi_device_wakeup*, %struct.acpi_device_wakeup** %5, align 8
  %188 = getelementptr inbounds %struct.acpi_device_wakeup, %struct.acpi_device_wakeup* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  br label %189

189:                                              ; preds = %179, %173
  br label %190

190:                                              ; preds = %189, %156
  br label %191

191:                                              ; preds = %190, %167, %155, %141, %128, %91, %58, %49
  %192 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %6, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @kfree(i64 %193)
  %195 = load i32, i32* %10, align 4
  store i32 %195, i32* %2, align 4
  br label %196

196:                                              ; preds = %191, %32
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i32 @acpi_extract_power_resources(%union.acpi_object*, i32, i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @acpi_power_wakeup_list_init(i32*, i32*) #1

declare dso_local i32 @acpi_handle_warn(i32, i8*, ...) #1

declare dso_local i32 @acpi_power_resources_list_free(i32*) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
