; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c64xx/extr_mach-crag6410-module.c_wlf_gf_module_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c64xx/extr_mach-crag6410-module.c_wlf_gf_module_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32*, i32, i32, i32*, i32 }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Failed to read ID: %d\0A\00", align 1
@gf_mods = common dso_local global %struct.TYPE_3__* null, align 8
@wm5102_reva_gpiod_table = common dso_local global i32 0, align 4
@wm5102_gpiod_table = common dso_local global i32 0, align 4
@wm8994_gpiod_table = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%s revision %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to register dev: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Unknown module ID 0x%x revision %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @wlf_gf_module_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlf_gf_module_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %11, i32 0)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %154

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 254
  %24 = ashr i32 %23, 2
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 3
  store i32 %26, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %60, %21
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gf_mods, align 8
  %30 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %29)
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %63

32:                                               ; preds = %27
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gf_mods, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %33, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %32
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gf_mods, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 255
  br i1 %48, label %58, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gf_mods, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %50, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %49, %41
  br label %63

59:                                               ; preds = %49, %32
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %27

63:                                               ; preds = %58, %27
  %64 = call i32 @gpiod_add_lookup_table(i32* @wm5102_reva_gpiod_table)
  %65 = call i32 @gpiod_add_lookup_table(i32* @wm5102_gpiod_table)
  %66 = call i32 @gpiod_add_lookup_table(i32* @wm8994_gpiod_table)
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gf_mods, align 8
  %69 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %68)
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %146

71:                                               ; preds = %63
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gf_mods, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  %82 = call i32 @dev_info(i32* %73, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %81)
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %113, %71
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gf_mods, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %84, %90
  br i1 %91, label %92, label %116

92:                                               ; preds = %83
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gf_mods, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 6
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = call i32 @i2c_new_device(i32 %95, i32* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %92
  %108 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %109 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %108, i32 0, i32 0
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @dev_err(i32* %109, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %107, %92
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %83

116:                                              ; preds = %83
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gf_mods, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gf_mods, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @spi_register_board_info(i32 %122, i32 %128)
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gf_mods, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %145

137:                                              ; preds = %116
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gf_mods, align 8
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @gpiod_add_lookup_table(i32* %143)
  br label %145

145:                                              ; preds = %137, %116
  br label %153

146:                                              ; preds = %63
  %147 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %148 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %147, i32 0, i32 0
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %150, 1
  %152 = call i32 @dev_warn(i32* %148, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %149, i32 %151)
  br label %153

153:                                              ; preds = %146, %145
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %153, %15
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @gpiod_add_lookup_table(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @i2c_new_device(i32, i32*) #1

declare dso_local i32 @spi_register_board_info(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
