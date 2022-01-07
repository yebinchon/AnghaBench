; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_hotmod.c_hotmod_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_si_hotmod.c_hotmod_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param = type { i32 }
%struct.ipmi_plat_data = type { i32, i32, i32 }
%struct.device = type { i32 }
%struct.platform_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HM_ADD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"hotmod-ipmi-si\00", align 1
@hotmod_nr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kernel_param*)* @hotmod_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hotmod_handler(i8* %0, %struct.kernel_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kernel_param*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ipmi_plat_data, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.device*, align 8
  %15 = alloca %struct.platform_device*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.kernel_param* %1, %struct.kernel_param** %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kstrdup(i8* %16, i32 %17)
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %119

24:                                               ; preds = %2
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @strlen(i8* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = sub i32 %27, 1
  store i32 %28, i32* %12, align 4
  br label %29

29:                                               ; preds = %42, %24
  %30 = load i32, i32* %12, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = call i64 @isspace(i8 signext %37)
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %32, %29
  %41 = phi i1 [ false, %29 ], [ %39, %32 ]
  br i1 %41, label %42, label %49

42:                                               ; preds = %40
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8 0, i8* %46, align 1
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %12, align 4
  br label %29

49:                                               ; preds = %40
  %50 = load i8*, i8** %6, align 8
  store i8* %50, i8** %7, align 8
  br label %51

51:                                               ; preds = %111, %49
  %52 = load i8*, i8** %7, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %113

54:                                               ; preds = %51
  %55 = load i8*, i8** %7, align 8
  %56 = call i8* @strchr(i8* %55, i8 signext 58)
  store i8* %56, i8** %8, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i8*, i8** %8, align 8
  store i8 0, i8* %60, align 1
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %8, align 8
  br label %63

63:                                               ; preds = %59, %54
  %64 = call i32 @memset(%struct.ipmi_plat_data* %10, i32 0, i32 12)
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @parse_hotmod_str(i8* %65, i32* %13, %struct.ipmi_plat_data* %10)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %115

70:                                               ; preds = %63
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @HM_ADD, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = call i32 @atomic_inc_return(i32* @hotmod_nr)
  %76 = call i32 @ipmi_platform_add(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %75, %struct.ipmi_plat_data* %10)
  br label %110

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.ipmi_plat_data, %struct.ipmi_plat_data* %10, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.ipmi_plat_data, %struct.ipmi_plat_data* %10, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.ipmi_plat_data, %struct.ipmi_plat_data* %10, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call %struct.device* @ipmi_si_remove_by_data(i32 %79, i32 %81, i32 %83)
  store %struct.device* %84, %struct.device** %14, align 8
  %85 = load %struct.device*, %struct.device** %14, align 8
  %86 = icmp ne %struct.device* %85, null
  br i1 %86, label %87, label %103

87:                                               ; preds = %77
  %88 = load %struct.device*, %struct.device** %14, align 8
  %89 = call i64 @dev_is_platform(%struct.device* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %87
  %92 = load %struct.device*, %struct.device** %14, align 8
  %93 = call %struct.platform_device* @to_platform_device(%struct.device* %92)
  store %struct.platform_device* %93, %struct.platform_device** %15, align 8
  %94 = load %struct.platform_device*, %struct.platform_device** %15, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @strcmp(i32 %96, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load %struct.platform_device*, %struct.platform_device** %15, align 8
  %101 = call i32 @platform_device_unregister(%struct.platform_device* %100)
  br label %102

102:                                              ; preds = %99, %91
  br label %103

103:                                              ; preds = %102, %87, %77
  %104 = load %struct.device*, %struct.device** %14, align 8
  %105 = icmp ne %struct.device* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load %struct.device*, %struct.device** %14, align 8
  %108 = call i32 @put_device(%struct.device* %107)
  br label %109

109:                                              ; preds = %106, %103
  br label %110

110:                                              ; preds = %109, %74
  br label %111

111:                                              ; preds = %110
  %112 = load i8*, i8** %8, align 8
  store i8* %112, i8** %7, align 8
  br label %51

113:                                              ; preds = %51
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %113, %69
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 @kfree(i8* %116)
  %118 = load i32, i32* %9, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %115, %21
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memset(%struct.ipmi_plat_data*, i32, i32) #1

declare dso_local i32 @parse_hotmod_str(i8*, i32*, %struct.ipmi_plat_data*) #1

declare dso_local i32 @ipmi_platform_add(i8*, i32, %struct.ipmi_plat_data*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local %struct.device* @ipmi_si_remove_by_data(i32, i32, i32) #1

declare dso_local i64 @dev_is_platform(%struct.device*) #1

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @platform_device_unregister(%struct.platform_device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
