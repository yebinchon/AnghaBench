; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_papr_scm.c_papr_scm_meta_set.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_papr_scm.c_papr_scm_meta_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.papr_scm_priv = type { i64, i32 }
%struct.nd_cmd_set_config_hdr = type { i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@H_SCM_WRITE_METADATA = common dso_local global i32 0, align 4
@H_PARAMETER = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.papr_scm_priv*, %struct.nd_cmd_set_config_hdr*)* @papr_scm_meta_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @papr_scm_meta_set(%struct.papr_scm_priv* %0, %struct.nd_cmd_set_config_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.papr_scm_priv*, align 8
  %5 = alloca %struct.nd_cmd_set_config_hdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.papr_scm_priv* %0, %struct.papr_scm_priv** %4, align 8
  store %struct.nd_cmd_set_config_hdr* %1, %struct.nd_cmd_set_config_hdr** %5, align 8
  %13 = load %struct.nd_cmd_set_config_hdr*, %struct.nd_cmd_set_config_hdr** %5, align 8
  %14 = getelementptr inbounds %struct.nd_cmd_set_config_hdr, %struct.nd_cmd_set_config_hdr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.nd_cmd_set_config_hdr*, %struct.nd_cmd_set_config_hdr** %5, align 8
  %17 = getelementptr inbounds %struct.nd_cmd_set_config_hdr, %struct.nd_cmd_set_config_hdr* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %4, align 8
  %21 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %128

27:                                               ; preds = %2
  %28 = load %struct.nd_cmd_set_config_hdr*, %struct.nd_cmd_set_config_hdr** %5, align 8
  %29 = getelementptr inbounds %struct.nd_cmd_set_config_hdr, %struct.nd_cmd_set_config_hdr* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %123, %27
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %127

35:                                               ; preds = %32
  %36 = load %struct.nd_cmd_set_config_hdr*, %struct.nd_cmd_set_config_hdr** %5, align 8
  %37 = getelementptr inbounds %struct.nd_cmd_set_config_hdr, %struct.nd_cmd_set_config_hdr* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %38, %40
  store i64 %41, i64* %7, align 8
  %42 = load %struct.nd_cmd_set_config_hdr*, %struct.nd_cmd_set_config_hdr** %5, align 8
  %43 = getelementptr inbounds %struct.nd_cmd_set_config_hdr, %struct.nd_cmd_set_config_hdr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %44, %45
  store i64 %46, i64* %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = icmp sge i32 %47, 8
  br i1 %48, label %49, label %59

49:                                               ; preds = %35
  %50 = load %struct.nd_cmd_set_config_hdr*, %struct.nd_cmd_set_config_hdr** %5, align 8
  %51 = getelementptr inbounds %struct.nd_cmd_set_config_hdr, %struct.nd_cmd_set_config_hdr* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %52, %53
  %55 = inttoptr i64 %54 to i64*
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @cpu_to_be64(i64 %57)
  store i32 %58, i32* %11, align 4
  store i32 8, i32* %9, align 4
  br label %101

59:                                               ; preds = %35
  %60 = load i32, i32* %8, align 4
  %61 = icmp sge i32 %60, 4
  br i1 %61, label %62, label %74

62:                                               ; preds = %59
  %63 = load %struct.nd_cmd_set_config_hdr*, %struct.nd_cmd_set_config_hdr** %5, align 8
  %64 = getelementptr inbounds %struct.nd_cmd_set_config_hdr, %struct.nd_cmd_set_config_hdr* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %65, %66
  %68 = inttoptr i64 %67 to i64*
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %10, align 8
  %71 = and i64 %70, 4294967295
  store i64 %71, i64* %10, align 8
  %72 = load i64, i64* %10, align 8
  %73 = call i32 @cpu_to_be32(i64 %72)
  store i32 %73, i32* %11, align 4
  store i32 4, i32* %9, align 4
  br label %100

74:                                               ; preds = %59
  %75 = load i32, i32* %8, align 4
  %76 = icmp sge i32 %75, 2
  br i1 %76, label %77, label %89

77:                                               ; preds = %74
  %78 = load %struct.nd_cmd_set_config_hdr*, %struct.nd_cmd_set_config_hdr** %5, align 8
  %79 = getelementptr inbounds %struct.nd_cmd_set_config_hdr, %struct.nd_cmd_set_config_hdr* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = add i64 %80, %81
  %83 = inttoptr i64 %82 to i64*
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %10, align 8
  %85 = load i64, i64* %10, align 8
  %86 = and i64 %85, 65535
  store i64 %86, i64* %10, align 8
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @cpu_to_be16(i64 %87)
  store i32 %88, i32* %11, align 4
  store i32 2, i32* %9, align 4
  br label %99

89:                                               ; preds = %74
  %90 = load %struct.nd_cmd_set_config_hdr*, %struct.nd_cmd_set_config_hdr** %5, align 8
  %91 = getelementptr inbounds %struct.nd_cmd_set_config_hdr, %struct.nd_cmd_set_config_hdr* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %7, align 8
  %94 = add i64 %92, %93
  %95 = inttoptr i64 %94 to i32*
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = and i32 %97, 255
  store i32 %98, i32* %11, align 4
  store i32 1, i32* %9, align 4
  br label %99

99:                                               ; preds = %89, %77
  br label %100

100:                                              ; preds = %99, %62
  br label %101

101:                                              ; preds = %100, %49
  %102 = load i32, i32* @H_SCM_WRITE_METADATA, align 4
  %103 = load %struct.papr_scm_priv*, %struct.papr_scm_priv** %4, align 8
  %104 = getelementptr inbounds %struct.papr_scm_priv, %struct.papr_scm_priv* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i64, i64* %6, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i64 @plpar_hcall_norets(i32 %102, i32 %105, i64 %106, i32 %107, i32 %108)
  store i64 %109, i64* %12, align 8
  %110 = load i64, i64* %12, align 8
  %111 = load i64, i64* @H_PARAMETER, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %101
  %114 = load i32, i32* @ENODEV, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %128

116:                                              ; preds = %101
  %117 = load i64, i64* %12, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %128

122:                                              ; preds = %116
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %8, align 4
  %126 = sub nsw i32 %125, %124
  store i32 %126, i32* %8, align 4
  br label %32

127:                                              ; preds = %32
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %127, %119, %113, %24
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i32 @cpu_to_be16(i64) #1

declare dso_local i64 @plpar_hcall_norets(i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
