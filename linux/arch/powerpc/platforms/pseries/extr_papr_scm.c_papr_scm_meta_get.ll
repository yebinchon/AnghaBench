; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_papr_scm.c_papr_scm_meta_get.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_papr_scm.c_papr_scm_meta_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.papr_scm_priv = type { i64, i32 }
%struct.nd_cmd_get_config_data_hdr = type { i64, i64, i32 }

@PLPAR_HCALL_BUFSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@H_SCM_READ_METADATA = common dso_local global i32 0, align 4
@H_PARAMETER = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.papr_scm_priv*, %struct.nd_cmd_get_config_data_hdr*)* @papr_scm_meta_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @papr_scm_meta_get(%struct.papr_scm_priv* %0, %struct.nd_cmd_get_config_data_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.papr_scm_priv*, align 8
  %5 = alloca %struct.nd_cmd_get_config_data_hdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.papr_scm_priv* %0, %struct.papr_scm_priv** %4, align 8
  store %struct.nd_cmd_get_config_data_hdr* %1, %struct.nd_cmd_get_config_data_hdr** %5, align 8
  %14 = load i32, i32* @PLPAR_HCALL_BUFSIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load %struct.nd_cmd_get_config_data_hdr*, %struct.nd_cmd_get_config_data_hdr** %5, align 8
  %19 = getelementptr inbounds %struct.nd_cmd_get_config_data_hdr, %struct.nd_cmd_get_config_data_hdr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.nd_cmd_get_config_data_hdr*, %struct.nd_cmd_get_config_data_hdr** %5, align 8
  %22 = getelementptr inbounds %struct.nd_cmd_get_config_data_hdr, %struct.nd_cmd_get_config_data_hdr* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %4, align 8
  %26 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %140

32:                                               ; preds = %2
  %33 = load %struct.nd_cmd_get_config_data_hdr*, %struct.nd_cmd_get_config_data_hdr** %5, align 8
  %34 = getelementptr inbounds %struct.nd_cmd_get_config_data_hdr, %struct.nd_cmd_get_config_data_hdr* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %135, %32
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %139

40:                                               ; preds = %37
  %41 = load %struct.nd_cmd_get_config_data_hdr*, %struct.nd_cmd_get_config_data_hdr** %5, align 8
  %42 = getelementptr inbounds %struct.nd_cmd_get_config_data_hdr, %struct.nd_cmd_get_config_data_hdr* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = sub nsw i64 %43, %45
  store i64 %46, i64* %9, align 8
  %47 = load %struct.nd_cmd_get_config_data_hdr*, %struct.nd_cmd_get_config_data_hdr** %5, align 8
  %48 = getelementptr inbounds %struct.nd_cmd_get_config_data_hdr, %struct.nd_cmd_get_config_data_hdr* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %49, %50
  store i64 %51, i64* %8, align 8
  %52 = load i32, i32* %10, align 4
  %53 = icmp sge i32 %52, 8
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  store i32 8, i32* %11, align 4
  br label %66

55:                                               ; preds = %40
  %56 = load i32, i32* %10, align 4
  %57 = icmp sge i32 %56, 4
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 4, i32* %11, align 4
  br label %65

59:                                               ; preds = %55
  %60 = load i32, i32* %10, align 4
  %61 = icmp sge i32 %60, 2
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 2, i32* %11, align 4
  br label %64

63:                                               ; preds = %59
  store i32 1, i32* %11, align 4
  br label %64

64:                                               ; preds = %63, %62
  br label %65

65:                                               ; preds = %64, %58
  br label %66

66:                                               ; preds = %65, %54
  %67 = load i32, i32* @H_SCM_READ_METADATA, align 4
  %68 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %4, align 8
  %69 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i64 @plpar_hcall(i32 %67, i64* %17, i32 %70, i64 %71, i32 %72)
  store i64 %73, i64* %12, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* @H_PARAMETER, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %140

80:                                               ; preds = %66
  %81 = load i64, i64* %12, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %140

86:                                               ; preds = %80
  %87 = load i32, i32* %11, align 4
  switch i32 %87, label %134 [
    i32 8, label %88
    i32 4, label %99
    i32 2, label %111
    i32 1, label %123
  ]

88:                                               ; preds = %86
  %89 = getelementptr inbounds i64, i64* %17, i64 0
  %90 = load i64, i64* %89, align 16
  %91 = call i32 @be64_to_cpu(i64 %90)
  %92 = load %struct.nd_cmd_get_config_data_hdr*, %struct.nd_cmd_get_config_data_hdr** %5, align 8
  %93 = getelementptr inbounds %struct.nd_cmd_get_config_data_hdr, %struct.nd_cmd_get_config_data_hdr* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %9, align 8
  %97 = add i64 %95, %96
  %98 = inttoptr i64 %97 to i32*
  store i32 %91, i32* %98, align 4
  br label %134

99:                                               ; preds = %86
  %100 = getelementptr inbounds i64, i64* %17, i64 0
  %101 = load i64, i64* %100, align 16
  %102 = and i64 %101, 4294967295
  %103 = call i32 @be32_to_cpu(i64 %102)
  %104 = load %struct.nd_cmd_get_config_data_hdr*, %struct.nd_cmd_get_config_data_hdr** %5, align 8
  %105 = getelementptr inbounds %struct.nd_cmd_get_config_data_hdr, %struct.nd_cmd_get_config_data_hdr* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %9, align 8
  %109 = add i64 %107, %108
  %110 = inttoptr i64 %109 to i32*
  store i32 %103, i32* %110, align 4
  br label %134

111:                                              ; preds = %86
  %112 = getelementptr inbounds i64, i64* %17, i64 0
  %113 = load i64, i64* %112, align 16
  %114 = and i64 %113, 65535
  %115 = call i32 @be16_to_cpu(i64 %114)
  %116 = load %struct.nd_cmd_get_config_data_hdr*, %struct.nd_cmd_get_config_data_hdr** %5, align 8
  %117 = getelementptr inbounds %struct.nd_cmd_get_config_data_hdr, %struct.nd_cmd_get_config_data_hdr* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* %9, align 8
  %121 = add i64 %119, %120
  %122 = inttoptr i64 %121 to i32*
  store i32 %115, i32* %122, align 4
  br label %134

123:                                              ; preds = %86
  %124 = getelementptr inbounds i64, i64* %17, i64 0
  %125 = load i64, i64* %124, align 16
  %126 = and i64 %125, 255
  %127 = load %struct.nd_cmd_get_config_data_hdr*, %struct.nd_cmd_get_config_data_hdr** %5, align 8
  %128 = getelementptr inbounds %struct.nd_cmd_get_config_data_hdr, %struct.nd_cmd_get_config_data_hdr* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* %9, align 8
  %132 = add i64 %130, %131
  %133 = inttoptr i64 %132 to i64*
  store i64 %126, i64* %133, align 8
  br label %134

134:                                              ; preds = %86, %123, %111, %99, %88
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %10, align 4
  %138 = sub nsw i32 %137, %136
  store i32 %138, i32* %10, align 4
  br label %37

139:                                              ; preds = %37
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %140

140:                                              ; preds = %139, %83, %77, %29
  %141 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %141)
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @plpar_hcall(i32, i64*, i32, i64, i32) #2

declare dso_local i32 @be64_to_cpu(i64) #2

declare dso_local i32 @be32_to_cpu(i64) #2

declare dso_local i32 @be16_to_cpu(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
