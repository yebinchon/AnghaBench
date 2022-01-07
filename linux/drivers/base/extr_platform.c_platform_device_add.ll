; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_platform.c_platform_device_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_platform.c_platform_device_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32* }
%struct.resource = type { %struct.resource*, i32* }
%struct.platform_device = type { i32, i32, i32, %struct.resource*, %struct.TYPE_6__, i32 }

@EINVAL = common dso_local global i32 0, align 4
@platform_bus = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@platform_bus_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@platform_devid_ida = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"%s.%d.auto\00", align 1
@IORESOURCE_MEM = common dso_local global i64 0, align 8
@iomem_resource = common dso_local global %struct.resource zeroinitializer, align 8
@IORESOURCE_IO = common dso_local global i64 0, align 8
@ioport_resource = common dso_local global %struct.resource zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to claim resource %d: %pR\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Registering platform device '%s'. Parent at %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @platform_device_add(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = icmp ne %struct.platform_device* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %186

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store %struct.TYPE_6__* @platform_bus, %struct.TYPE_6__** %23, align 8
  br label %24

24:                                               ; preds = %20, %14
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i32* @platform_bus_type, i32** %27, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %31 [
    i32 128, label %41
    i32 129, label %48
  ]

31:                                               ; preds = %24
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 4
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @dev_set_name(%struct.TYPE_6__* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39)
  br label %69

41:                                               ; preds = %24
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 4
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @dev_set_name(%struct.TYPE_6__* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %69

48:                                               ; preds = %24
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i32 @ida_simple_get(i32* @platform_devid_ida, i32 0, i32 0, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %184

54:                                               ; preds = %48
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 4
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (%struct.TYPE_6__*, i8*, i32, ...) @dev_set_name(%struct.TYPE_6__* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %54, %41, %31
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %130, %69
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %133

76:                                               ; preds = %70
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 3
  %79 = load %struct.resource*, %struct.resource** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.resource, %struct.resource* %79, i64 %81
  store %struct.resource* %82, %struct.resource** %7, align 8
  %83 = load %struct.resource*, %struct.resource** %7, align 8
  %84 = getelementptr inbounds %struct.resource, %struct.resource* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %76
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 4
  %90 = call i32* @dev_name(%struct.TYPE_6__* %89)
  %91 = load %struct.resource*, %struct.resource** %7, align 8
  %92 = getelementptr inbounds %struct.resource, %struct.resource* %91, i32 0, i32 1
  store i32* %90, i32** %92, align 8
  br label %93

93:                                               ; preds = %87, %76
  %94 = load %struct.resource*, %struct.resource** %7, align 8
  %95 = getelementptr inbounds %struct.resource, %struct.resource* %94, i32 0, i32 0
  %96 = load %struct.resource*, %struct.resource** %95, align 8
  store %struct.resource* %96, %struct.resource** %6, align 8
  %97 = load %struct.resource*, %struct.resource** %6, align 8
  %98 = icmp ne %struct.resource* %97, null
  br i1 %98, label %113, label %99

99:                                               ; preds = %93
  %100 = load %struct.resource*, %struct.resource** %7, align 8
  %101 = call i64 @resource_type(%struct.resource* %100)
  %102 = load i64, i64* @IORESOURCE_MEM, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store %struct.resource* @iomem_resource, %struct.resource** %6, align 8
  br label %112

105:                                              ; preds = %99
  %106 = load %struct.resource*, %struct.resource** %7, align 8
  %107 = call i64 @resource_type(%struct.resource* %106)
  %108 = load i64, i64* @IORESOURCE_IO, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store %struct.resource* @ioport_resource, %struct.resource** %6, align 8
  br label %111

111:                                              ; preds = %110, %105
  br label %112

112:                                              ; preds = %111, %104
  br label %113

113:                                              ; preds = %112, %93
  %114 = load %struct.resource*, %struct.resource** %6, align 8
  %115 = icmp ne %struct.resource* %114, null
  br i1 %115, label %116, label %129

116:                                              ; preds = %113
  %117 = load %struct.resource*, %struct.resource** %6, align 8
  %118 = load %struct.resource*, %struct.resource** %7, align 8
  %119 = call i32 @insert_resource(%struct.resource* %117, %struct.resource* %118)
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %116
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 4
  %125 = load i32, i32* %4, align 4
  %126 = load %struct.resource*, %struct.resource** %7, align 8
  %127 = call i32 @dev_err(%struct.TYPE_6__* %124, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %125, %struct.resource* %126)
  br label %151

128:                                              ; preds = %116
  br label %129

129:                                              ; preds = %128, %113
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %4, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %4, align 4
  br label %70

133:                                              ; preds = %70
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %134, i32 0, i32 4
  %136 = call i32* @dev_name(%struct.TYPE_6__* %135)
  %137 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = call i32* @dev_name(%struct.TYPE_6__* %140)
  %142 = call i32 @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32* %136, i32* %141)
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 4
  %145 = call i32 @device_add(%struct.TYPE_6__* %144)
  store i32 %145, i32* %5, align 4
  %146 = load i32, i32* %5, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %133
  %149 = load i32, i32* %5, align 4
  store i32 %149, i32* %2, align 4
  br label %186

150:                                              ; preds = %133
  br label %151

151:                                              ; preds = %150, %122
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %151
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @ida_simple_remove(i32* @platform_devid_ida, i32 %159)
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  store i32 129, i32* %162, align 8
  br label %163

163:                                              ; preds = %156, %151
  br label %164

164:                                              ; preds = %182, %163
  %165 = load i32, i32* %4, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %4, align 4
  %167 = icmp sge i32 %166, 0
  br i1 %167, label %168, label %183

168:                                              ; preds = %164
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %169, i32 0, i32 3
  %171 = load %struct.resource*, %struct.resource** %170, align 8
  %172 = load i32, i32* %4, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.resource, %struct.resource* %171, i64 %173
  store %struct.resource* %174, %struct.resource** %8, align 8
  %175 = load %struct.resource*, %struct.resource** %8, align 8
  %176 = getelementptr inbounds %struct.resource, %struct.resource* %175, i32 0, i32 0
  %177 = load %struct.resource*, %struct.resource** %176, align 8
  %178 = icmp ne %struct.resource* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %168
  %180 = load %struct.resource*, %struct.resource** %8, align 8
  %181 = call i32 @release_resource(%struct.resource* %180)
  br label %182

182:                                              ; preds = %179, %168
  br label %164

183:                                              ; preds = %164
  br label %184

184:                                              ; preds = %183, %53
  %185 = load i32, i32* %5, align 4
  store i32 %185, i32* %2, align 4
  br label %186

186:                                              ; preds = %184, %148, %11
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @dev_set_name(%struct.TYPE_6__*, i8*, i32, ...) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32* @dev_name(%struct.TYPE_6__*) #1

declare dso_local i64 @resource_type(%struct.resource*) #1

declare dso_local i32 @insert_resource(%struct.resource*, %struct.resource*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32, %struct.resource*) #1

declare dso_local i32 @pr_debug(i8*, i32*, i32*) #1

declare dso_local i32 @device_add(%struct.TYPE_6__*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @release_resource(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
