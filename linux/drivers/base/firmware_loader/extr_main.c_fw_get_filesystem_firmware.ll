; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/firmware_loader/extr_main.c_fw_get_filesystem_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/firmware_loader/extr_main.c_fw_get_filesystem_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fw_priv = type { i64, i8*, i64, i8* }

@ENOENT = common dso_local global i32 0, align 4
@READING_FIRMWARE = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@READING_FIRMWARE_PREALLOC_BUFFER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fw_path = common dso_local global i8** null, align 8
@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s/%s%s\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"loading %s failed with error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"loading %s failed for no such file or directory.\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"f/w decompressing %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"direct-loading %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.fw_priv*, i8*, i32 (%struct.device*, %struct.fw_priv*, i64, i8*)*)* @fw_get_filesystem_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_get_filesystem_firmware(%struct.device* %0, %struct.fw_priv* %1, i8* %2, i32 (%struct.device*, %struct.fw_priv*, i64, i8*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.fw_priv*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32 (%struct.device*, %struct.fw_priv*, i64, i8*)*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.fw_priv* %1, %struct.fw_priv** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 (%struct.device*, %struct.fw_priv*, i64, i8*)* %3, i32 (%struct.device*, %struct.fw_priv*, i64, i8*)** %9, align 8
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* @READING_FIRMWARE, align 4
  store i32 %20, i32* %15, align 4
  %21 = load i64, i64* @INT_MAX, align 8
  store i64 %21, i64* %16, align 8
  store i8* null, i8** %17, align 8
  %22 = load i32 (%struct.device*, %struct.fw_priv*, i64, i8*)*, i32 (%struct.device*, %struct.fw_priv*, i64, i8*)** %9, align 8
  %23 = icmp ne i32 (%struct.device*, %struct.fw_priv*, i64, i8*)* %22, null
  br i1 %23, label %37, label %24

24:                                               ; preds = %4
  %25 = load %struct.fw_priv*, %struct.fw_priv** %7, align 8
  %26 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %25, i32 0, i32 3
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.fw_priv*, %struct.fw_priv** %7, align 8
  %31 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %30, i32 0, i32 3
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %17, align 8
  %33 = load i32, i32* @READING_FIRMWARE_PREALLOC_BUFFER, align 4
  store i32 %33, i32* %15, align 4
  %34 = load %struct.fw_priv*, %struct.fw_priv** %7, align 8
  %35 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %16, align 8
  br label %37

37:                                               ; preds = %29, %24, %4
  %38 = call i8* (...) @__getname()
  store i8* %38, i8** %14, align 8
  %39 = load i8*, i8** %14, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %154

44:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %147, %44
  %46 = load i32, i32* %11, align 4
  %47 = load i8**, i8*** @fw_path, align 8
  %48 = call i32 @ARRAY_SIZE(i8** %47)
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %150

50:                                               ; preds = %45
  %51 = load i8**, i8*** @fw_path, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %50
  br label %147

60:                                               ; preds = %50
  %61 = load i8*, i8** %14, align 8
  %62 = load i32, i32* @PATH_MAX, align 4
  %63 = load i8**, i8*** @fw_path, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.fw_priv*, %struct.fw_priv** %7, align 8
  %69 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @snprintf(i8* %61, i32 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %67, i8* %70, i8* %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @PATH_MAX, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %60
  %77 = load i32, i32* @ENAMETOOLONG, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %13, align 4
  br label %150

79:                                               ; preds = %60
  %80 = load %struct.fw_priv*, %struct.fw_priv** %7, align 8
  %81 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = load i64, i64* %16, align 8
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @kernel_read_file_from_path(i8* %82, i8** %17, i64* %10, i64 %83, i32 %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %79
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* @ENOENT, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.device*, %struct.device** %6, align 8
  %95 = load i8*, i8** %14, align 8
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @dev_warn(%struct.device* %94, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %95, i32 %96)
  br label %102

98:                                               ; preds = %88
  %99 = load %struct.device*, %struct.device** %6, align 8
  %100 = load i8*, i8** %14, align 8
  %101 = call i32 @dev_dbg(%struct.device* %99, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %98, %93
  br label %147

103:                                              ; preds = %79
  %104 = load i32 (%struct.device*, %struct.fw_priv*, i64, i8*)*, i32 (%struct.device*, %struct.fw_priv*, i64, i8*)** %9, align 8
  %105 = icmp ne i32 (%struct.device*, %struct.fw_priv*, i64, i8*)* %104, null
  br i1 %105, label %106, label %126

106:                                              ; preds = %103
  %107 = load %struct.device*, %struct.device** %6, align 8
  %108 = load %struct.fw_priv*, %struct.fw_priv** %7, align 8
  %109 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @dev_dbg(%struct.device* %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %110)
  %112 = load i32 (%struct.device*, %struct.fw_priv*, i64, i8*)*, i32 (%struct.device*, %struct.fw_priv*, i64, i8*)** %9, align 8
  %113 = load %struct.device*, %struct.device** %6, align 8
  %114 = load %struct.fw_priv*, %struct.fw_priv** %7, align 8
  %115 = load i64, i64* %10, align 8
  %116 = load i8*, i8** %17, align 8
  %117 = call i32 %112(%struct.device* %113, %struct.fw_priv* %114, i64 %115, i8* %116)
  store i32 %117, i32* %13, align 4
  %118 = load i8*, i8** %17, align 8
  %119 = call i32 @vfree(i8* %118)
  store i8* null, i8** %17, align 8
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %106
  %123 = load %struct.fw_priv*, %struct.fw_priv** %7, align 8
  %124 = call i32 @fw_free_paged_buf(%struct.fw_priv* %123)
  br label %147

125:                                              ; preds = %106
  br label %144

126:                                              ; preds = %103
  %127 = load %struct.device*, %struct.device** %6, align 8
  %128 = load %struct.fw_priv*, %struct.fw_priv** %7, align 8
  %129 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @dev_dbg(%struct.device* %127, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %130)
  %132 = load %struct.fw_priv*, %struct.fw_priv** %7, align 8
  %133 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %132, i32 0, i32 3
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %140, label %136

136:                                              ; preds = %126
  %137 = load i8*, i8** %17, align 8
  %138 = load %struct.fw_priv*, %struct.fw_priv** %7, align 8
  %139 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %138, i32 0, i32 3
  store i8* %137, i8** %139, align 8
  br label %140

140:                                              ; preds = %136, %126
  %141 = load i64, i64* %10, align 8
  %142 = load %struct.fw_priv*, %struct.fw_priv** %7, align 8
  %143 = getelementptr inbounds %struct.fw_priv, %struct.fw_priv* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  br label %144

144:                                              ; preds = %140, %125
  %145 = load %struct.fw_priv*, %struct.fw_priv** %7, align 8
  %146 = call i32 @fw_state_done(%struct.fw_priv* %145)
  br label %150

147:                                              ; preds = %122, %102, %59
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %11, align 4
  br label %45

150:                                              ; preds = %144, %76, %45
  %151 = load i8*, i8** %14, align 8
  %152 = call i32 @__putname(i8* %151)
  %153 = load i32, i32* %13, align 4
  store i32 %153, i32* %5, align 4
  br label %154

154:                                              ; preds = %150, %41
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i8* @__getname(...) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @kernel_read_file_from_path(i8*, i8**, i64*, i64, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @fw_free_paged_buf(%struct.fw_priv*) #1

declare dso_local i32 @fw_state_done(%struct.fw_priv*) #1

declare dso_local i32 @__putname(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
