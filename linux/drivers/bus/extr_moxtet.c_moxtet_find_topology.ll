; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_moxtet.c_moxtet_find_topology.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_moxtet.c_moxtet_find_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.moxtet = type { i32*, i32, i64 }

@TURRIS_MOX_MAX_MODULES = common dso_local global i32 0, align 4
@TURRIS_MOX_MODULE_LAST = common dso_local global i32 0, align 4
@TURRIS_MOX_CPU_ID_EMMC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Found MOX A (eMMC CPU) module\0A\00", align 1
@TURRIS_MOX_CPU_ID_SD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Found MOX A (CPU) module\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Invalid Turris MOX A CPU module 0x%02x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Found %s module\0A\00", align 1
@mox_module_table = common dso_local global %struct.TYPE_2__* null, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"  Cannot set IRQ for module %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Unknown Moxtet module found (ID 0x%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.moxtet*)* @moxtet_find_topology to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moxtet_find_topology(%struct.moxtet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.moxtet*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.moxtet* %0, %struct.moxtet** %3, align 8
  %11 = load i32, i32* @TURRIS_MOX_MAX_MODULES, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = load i32, i32* @TURRIS_MOX_MODULE_LAST, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %18 = mul nuw i64 4, %16
  %19 = trunc i64 %18 to i32
  %20 = call i32 @memset(i32* %17, i32 0, i32 %19)
  %21 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %22 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @to_spi_device(i32 %23)
  %25 = load i32, i32* @TURRIS_MOX_MAX_MODULES, align 4
  %26 = call i32 @spi_read(i32 %24, i32* %14, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %141

31:                                               ; preds = %1
  %32 = getelementptr inbounds i32, i32* %14, i64 0
  %33 = load i32, i32* %32, align 16
  %34 = load i32, i32* @TURRIS_MOX_CPU_ID_EMMC, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %38 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i32, i8*, ...) @dev_info(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %61

41:                                               ; preds = %31
  %42 = getelementptr inbounds i32, i32* %14, i64 0
  %43 = load i32, i32* %42, align 16
  %44 = load i32, i32* @TURRIS_MOX_CPU_ID_SD, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %48 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i32, i8*, ...) @dev_info(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %60

51:                                               ; preds = %41
  %52 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %53 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds i32, i32* %14, i64 0
  %56 = load i32, i32* %55, align 16
  %57 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %141

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60, %36
  %62 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %63 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  store i32 1, i32* %7, align 4
  br label %64

64:                                               ; preds = %137, %61
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @TURRIS_MOX_MAX_MODULES, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %140

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %14, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 255
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %140

75:                                               ; preds = %68
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %14, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 15
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %83 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  store i32 %81, i32* %88, align 4
  %89 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %90 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %90, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i64 @mox_module_known(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %130

96:                                               ; preds = %75
  %97 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %98 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mox_module_table, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32, i8*, ...) @dev_info(i32 %99, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  %107 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sub nsw i32 %108, 1
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %17, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  %116 = call i64 @moxtet_set_irq(%struct.moxtet* %107, i32 %109, i32 %110, i32 %114)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %96
  %119 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %120 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mox_module_table, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @dev_err(i32 %121, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %118, %96
  br label %136

130:                                              ; preds = %75
  %131 = load %struct.moxtet*, %struct.moxtet** %3, align 8
  %132 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @dev_warn(i32 %133, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %130, %129
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %64

140:                                              ; preds = %74, %64
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %141

141:                                              ; preds = %140, %51, %29
  %142 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %142)
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @spi_read(i32, i32*, i32) #2

declare dso_local i32 @to_spi_device(i32) #2

declare dso_local i32 @dev_info(i32, i8*, ...) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i64 @mox_module_known(i32) #2

declare dso_local i64 @moxtet_set_irq(%struct.moxtet*, i32, i32, i32) #2

declare dso_local i32 @dev_warn(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
