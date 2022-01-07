; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-space.c_tpm2_map_response_body.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-space.c_tpm2_map_response_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { %struct.tpm_space }
%struct.tpm_space = type { i32 }
%struct.tpm_header = type { i8*, i8* }
%struct.tpm2_cap_handles = type { i8*, i8**, i8* }

@TPM2_CC_GET_CAPABILITY = common dso_local global i64 0, align 8
@TPM2_RC_SUCCESS = common dso_local global i32 0, align 4
@TPM_HEADER_SIZE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@TPM2_CAP_HANDLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*, i64, i32*, i64)* @tpm2_map_response_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm2_map_response_body(%struct.tpm_chip* %0, i64 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tpm_chip*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tpm_space*, align 8
  %11 = alloca %struct.tpm_header*, align 8
  %12 = alloca %struct.tpm2_cap_handles*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.tpm_chip*, %struct.tpm_chip** %6, align 8
  %19 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %18, i32 0, i32 0
  store %struct.tpm_space* %19, %struct.tpm_space** %10, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = bitcast i32* %20 to %struct.tpm_header*
  store %struct.tpm_header* %21, %struct.tpm_header** %11, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @TPM2_CC_GET_CAPABILITY, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %4
  %26 = load %struct.tpm_header*, %struct.tpm_header** %11, align 8
  %27 = getelementptr inbounds %struct.tpm_header, %struct.tpm_header* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @be32_to_cpu(i8* %28)
  %30 = load i32, i32* @TPM2_RC_SUCCESS, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25, %4
  store i32 0, i32* %5, align 4
  br label %139

33:                                               ; preds = %25
  %34 = load i64, i64* %9, align 8
  %35 = load i32, i32* @TPM_HEADER_SIZE, align 4
  %36 = add nsw i32 %35, 9
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EFAULT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %139

42:                                               ; preds = %33
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* @TPM_HEADER_SIZE, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = bitcast i32* %46 to i8*
  %48 = bitcast i8* %47 to %struct.tpm2_cap_handles*
  store %struct.tpm2_cap_handles* %48, %struct.tpm2_cap_handles** %12, align 8
  %49 = load %struct.tpm2_cap_handles*, %struct.tpm2_cap_handles** %12, align 8
  %50 = getelementptr inbounds %struct.tpm2_cap_handles, %struct.tpm2_cap_handles* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @be32_to_cpu(i8* %51)
  %53 = load i32, i32* @TPM2_CAP_HANDLES, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %139

56:                                               ; preds = %42
  %57 = load i64, i64* %9, align 8
  %58 = load i32, i32* @TPM_HEADER_SIZE, align 4
  %59 = add nsw i32 %58, 9
  %60 = load %struct.tpm2_cap_handles*, %struct.tpm2_cap_handles** %12, align 8
  %61 = getelementptr inbounds %struct.tpm2_cap_handles, %struct.tpm2_cap_handles* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @be32_to_cpu(i8* %62)
  %64 = mul nsw i32 4, %63
  %65 = add nsw i32 %59, %64
  %66 = sext i32 %65 to i64
  %67 = icmp ne i64 %57, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %56
  %69 = load i32, i32* @EFAULT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %139

71:                                               ; preds = %56
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %72

72:                                               ; preds = %123, %71
  %73 = load i32, i32* %16, align 4
  %74 = load %struct.tpm2_cap_handles*, %struct.tpm2_cap_handles** %12, align 8
  %75 = getelementptr inbounds %struct.tpm2_cap_handles, %struct.tpm2_cap_handles* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @be32_to_cpu(i8* %76)
  %78 = icmp slt i32 %73, %77
  br i1 %78, label %79, label %126

79:                                               ; preds = %72
  %80 = load %struct.tpm2_cap_handles*, %struct.tpm2_cap_handles** %12, align 8
  %81 = getelementptr inbounds %struct.tpm2_cap_handles, %struct.tpm2_cap_handles* %80, i32 0, i32 1
  %82 = load i8**, i8*** %81, align 8
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = bitcast i8** %85 to i32*
  %87 = call i64 @be32_to_cpup(i32* %86)
  store i64 %87, i64* %13, align 8
  %88 = load i64, i64* %13, align 8
  %89 = and i64 %88, 4278190080
  store i64 %89, i64* %14, align 8
  %90 = load i64, i64* %14, align 8
  switch i64 %90, label %110 [
    i64 128, label %91
  ]

91:                                               ; preds = %79
  %92 = load %struct.tpm_space*, %struct.tpm_space** %10, align 8
  %93 = load i64, i64* %13, align 8
  %94 = call i64 @tpm2_map_to_vhandle(%struct.tpm_space* %92, i64 %93, i32 0)
  store i64 %94, i64* %15, align 8
  %95 = load i64, i64* %15, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %91
  br label %122

98:                                               ; preds = %91
  %99 = load i64, i64* %15, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i8* @cpu_to_be32(i32 %100)
  %102 = load %struct.tpm2_cap_handles*, %struct.tpm2_cap_handles** %12, align 8
  %103 = getelementptr inbounds %struct.tpm2_cap_handles, %struct.tpm2_cap_handles* %102, i32 0, i32 1
  %104 = load i8**, i8*** %103, align 8
  %105 = load i32, i32* %17, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8*, i8** %104, i64 %106
  store i8* %101, i8** %107, align 8
  %108 = load i32, i32* %17, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %17, align 4
  br label %122

110:                                              ; preds = %79
  %111 = load i64, i64* %13, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i8* @cpu_to_be32(i32 %112)
  %114 = load %struct.tpm2_cap_handles*, %struct.tpm2_cap_handles** %12, align 8
  %115 = getelementptr inbounds %struct.tpm2_cap_handles, %struct.tpm2_cap_handles* %114, i32 0, i32 1
  %116 = load i8**, i8*** %115, align 8
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  store i8* %113, i8** %119, align 8
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %17, align 4
  br label %122

122:                                              ; preds = %110, %98, %97
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %16, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %16, align 4
  br label %72

126:                                              ; preds = %72
  %127 = load i32, i32* @TPM_HEADER_SIZE, align 4
  %128 = add nsw i32 %127, 9
  %129 = load i32, i32* %17, align 4
  %130 = mul nsw i32 4, %129
  %131 = add nsw i32 %128, %130
  %132 = call i8* @cpu_to_be32(i32 %131)
  %133 = load %struct.tpm_header*, %struct.tpm_header** %11, align 8
  %134 = getelementptr inbounds %struct.tpm_header, %struct.tpm_header* %133, i32 0, i32 0
  store i8* %132, i8** %134, align 8
  %135 = load i32, i32* %17, align 4
  %136 = call i8* @cpu_to_be32(i32 %135)
  %137 = load %struct.tpm2_cap_handles*, %struct.tpm2_cap_handles** %12, align 8
  %138 = getelementptr inbounds %struct.tpm2_cap_handles, %struct.tpm2_cap_handles* %137, i32 0, i32 0
  store i8* %136, i8** %138, align 8
  store i32 0, i32* %5, align 4
  br label %139

139:                                              ; preds = %126, %68, %55, %39, %32
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local i32 @be32_to_cpu(i8*) #1

declare dso_local i64 @be32_to_cpup(i32*) #1

declare dso_local i64 @tpm2_map_to_vhandle(%struct.tpm_space*, i64, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
