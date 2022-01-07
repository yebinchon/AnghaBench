; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-cmd.c_tpm2_get_cc_attrs_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/extr_tpm2-cmd.c_tpm2_get_cc_attrs_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32*, i32, i32 }
%struct.tpm_buf = type { i32* }

@TPM_PT_TOTAL_COMMANDS = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@TPM2_ST_NO_SESSIONS = common dso_local global i32 0, align 4
@TPM2_CC_GET_CAPABILITY = common dso_local global i32 0, align 4
@TPM2_CAP_COMMANDS = common dso_local global i32 0, align 4
@TPM2_CC_FIRST = common dso_local global i32 0, align 4
@TPM_HEADER_SIZE = common dso_local global i32 0, align 4
@TPM2_CC_CONTEXT_SAVE = common dso_local global i32 0, align 4
@TPM2_CC_FLUSH_CONTEXT = common dso_local global i32 0, align 4
@TPM2_CC_ATTR_CHANDLES = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpm_chip*)* @tpm2_get_cc_attrs_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm2_get_cc_attrs_tbl(%struct.tpm_chip* %0) #0 {
  %2 = alloca %struct.tpm_chip*, align 8
  %3 = alloca %struct.tpm_buf, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %2, align 8
  %9 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %10 = load i32, i32* @TPM_PT_TOTAL_COMMANDS, align 4
  %11 = call i32 @tpm2_get_tpm_pt(%struct.tpm_chip* %9, i32 %10, i32* %4, i32* null)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %132

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 1048575
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @EFAULT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  br label %132

21:                                               ; preds = %15
  %22 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %23 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %22, i32 0, i32 2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32* @devm_kcalloc(i32* %23, i32 4, i32 %24, i32 %25)
  %27 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %28 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = load i32, i32* @TPM2_ST_NO_SESSIONS, align 4
  %30 = load i32, i32* @TPM2_CC_GET_CAPABILITY, align 4
  %31 = call i32 @tpm_buf_init(%struct.tpm_buf* %3, i32 %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  br label %132

35:                                               ; preds = %21
  %36 = load i32, i32* @TPM2_CAP_COMMANDS, align 4
  %37 = call i32 @tpm_buf_append_u32(%struct.tpm_buf* %3, i32 %36)
  %38 = load i32, i32* @TPM2_CC_FIRST, align 4
  %39 = call i32 @tpm_buf_append_u32(%struct.tpm_buf* %3, i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @tpm_buf_append_u32(%struct.tpm_buf* %3, i32 %40)
  %42 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %43 = load i32, i32* %4, align 4
  %44 = mul nsw i32 4, %43
  %45 = add nsw i32 9, %44
  %46 = call i32 @tpm_transmit_cmd(%struct.tpm_chip* %42, %struct.tpm_buf* %3, i32 %45, i32* null)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %35
  %50 = call i32 @tpm_buf_destroy(%struct.tpm_buf* %3)
  br label %132

51:                                               ; preds = %35
  %52 = load i32, i32* %4, align 4
  %53 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %3, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @TPM_HEADER_SIZE, align 4
  %56 = add nsw i32 %55, 5
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = call i32 @be32_to_cpup(i32* %58)
  %60 = icmp ne i32 %52, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = call i32 @tpm_buf_destroy(%struct.tpm_buf* %3)
  br label %132

63:                                               ; preds = %51
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %66 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = getelementptr inbounds %struct.tpm_buf, %struct.tpm_buf* %3, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* @TPM_HEADER_SIZE, align 4
  %70 = add nsw i32 %69, 9
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32* %72, i32** %5, align 8
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %125, %63
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %130

77:                                               ; preds = %73
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @be32_to_cpup(i32* %78)
  %80 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %81 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %79, i32* %85, align 4
  %86 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %87 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 65535
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @TPM2_CC_CONTEXT_SAVE, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %77
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @TPM2_CC_FLUSH_CONTEXT, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %124

101:                                              ; preds = %97, %77
  %102 = call i32 @GENMASK(i32 2, i32 0)
  %103 = load i32, i32* @TPM2_CC_ATTR_CHANDLES, align 4
  %104 = shl i32 %102, %103
  %105 = xor i32 %104, -1
  %106 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %107 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, %105
  store i32 %113, i32* %111, align 4
  %114 = load i32, i32* @TPM2_CC_ATTR_CHANDLES, align 4
  %115 = shl i32 1, %114
  %116 = load %struct.tpm_chip*, %struct.tpm_chip** %2, align 8
  %117 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %115
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %101, %97
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %7, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %7, align 4
  %128 = load i32*, i32** %5, align 8
  %129 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %129, i32** %5, align 8
  br label %73

130:                                              ; preds = %73
  %131 = call i32 @tpm_buf_destroy(%struct.tpm_buf* %3)
  br label %132

132:                                              ; preds = %130, %61, %49, %34, %18, %14
  %133 = load i32, i32* %8, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i32, i32* @ENODEV, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %135, %132
  %139 = load i32, i32* %8, align 4
  ret i32 %139
}

declare dso_local i32 @tpm2_get_tpm_pt(%struct.tpm_chip*, i32, i32*, i32*) #1

declare dso_local i32* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @tpm_buf_init(%struct.tpm_buf*, i32, i32) #1

declare dso_local i32 @tpm_buf_append_u32(%struct.tpm_buf*, i32) #1

declare dso_local i32 @tpm_transmit_cmd(%struct.tpm_chip*, %struct.tpm_buf*, i32, i32*) #1

declare dso_local i32 @tpm_buf_destroy(%struct.tpm_buf*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
