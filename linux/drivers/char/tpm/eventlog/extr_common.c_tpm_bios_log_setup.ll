; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/tpm/eventlog/extr_common.c_tpm_bios_log_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/tpm/eventlog/extr_common.c_tpm_bios_log_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_chip = type { i32, i32**, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32*, %struct.tpm_chip* }
%struct.TYPE_3__ = type { i32*, %struct.tpm_chip* }

@EFI_TCG2_EVENT_LOG_FORMAT_TCG_2 = common dso_local global i32 0, align 4
@tpm2_binary_b_measurements_seqops = common dso_local global i32 0, align 4
@tpm1_binary_b_measurements_seqops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"binary_bios_measurements\00", align 1
@tpm_bios_measurements_ops = common dso_local global i32 0, align 4
@TPM_CHIP_FLAG_TPM2 = common dso_local global i32 0, align 4
@tpm1_ascii_b_measurements_seqops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"ascii_bios_measurements\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm_bios_log_setup(%struct.tpm_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tpm_chip*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tpm_chip* %0, %struct.tpm_chip** %3, align 8
  %8 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %9 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %8, i32 0, i32 4
  %10 = call i8* @dev_name(i32* %9)
  store i8* %10, i8** %4, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %12 = call i32 @tpm_read_log(%struct.tpm_chip* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %2, align 4
  br label %147

17:                                               ; preds = %1
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = call i32* @securityfs_create_dir(i8* %19, i32* null)
  %21 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %22 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %21, i32 0, i32 1
  %23 = load i32**, i32*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  store i32* %20, i32** %26, align 8
  %27 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %28 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = call i64 @IS_ERR(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %17
  br label %129

37:                                               ; preds = %17
  %38 = load i32, i32* %5, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %5, align 4
  %40 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %41 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %42 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store %struct.tpm_chip* %40, %struct.tpm_chip** %43, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @EFI_TCG2_EVENT_LOG_FORMAT_TCG_2, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %49 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32* @tpm2_binary_b_measurements_seqops, i32** %50, align 8
  br label %55

51:                                               ; preds = %37
  %52 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %53 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32* @tpm1_binary_b_measurements_seqops, i32** %54, align 8
  br label %55

55:                                               ; preds = %51, %47
  %56 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %57 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %56, i32 0, i32 1
  %58 = load i32**, i32*** %57, align 8
  %59 = getelementptr inbounds i32*, i32** %58, i64 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %62 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %61, i32 0, i32 3
  %63 = bitcast %struct.TYPE_3__* %62 to i8*
  %64 = call i8* @securityfs_create_file(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 288, i32* %60, i8* %63, i32* @tpm_bios_measurements_ops)
  %65 = bitcast i8* %64 to i32*
  %66 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %67 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %66, i32 0, i32 1
  %68 = load i32**, i32*** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  store i32* %65, i32** %71, align 8
  %72 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %73 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %72, i32 0, i32 1
  %74 = load i32**, i32*** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = call i64 @IS_ERR(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %55
  br label %129

82:                                               ; preds = %55
  %83 = load i32, i32* %5, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %5, align 4
  %85 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %86 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @TPM_CHIP_FLAG_TPM2, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %128, label %91

91:                                               ; preds = %82
  %92 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %93 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %94 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  store %struct.tpm_chip* %92, %struct.tpm_chip** %95, align 8
  %96 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %97 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32* @tpm1_ascii_b_measurements_seqops, i32** %98, align 8
  %99 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %100 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %99, i32 0, i32 1
  %101 = load i32**, i32*** %100, align 8
  %102 = getelementptr inbounds i32*, i32** %101, i64 0
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %105 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %104, i32 0, i32 2
  %106 = bitcast %struct.TYPE_4__* %105 to i8*
  %107 = call i8* @securityfs_create_file(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 288, i32* %103, i8* %106, i32* @tpm_bios_measurements_ops)
  %108 = bitcast i8* %107 to i32*
  %109 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %110 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %109, i32 0, i32 1
  %111 = load i32**, i32*** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  store i32* %108, i32** %114, align 8
  %115 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %116 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %115, i32 0, i32 1
  %117 = load i32**, i32*** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = call i64 @IS_ERR(i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %91
  br label %129

125:                                              ; preds = %91
  %126 = load i32, i32* %5, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %125, %82
  store i32 0, i32* %2, align 4
  br label %147

129:                                              ; preds = %124, %81, %36
  %130 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %131 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %130, i32 0, i32 1
  %132 = load i32**, i32*** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i32*, i32** %132, i64 %134
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @PTR_ERR(i32* %136)
  store i32 %137, i32* %7, align 4
  %138 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %139 = getelementptr inbounds %struct.tpm_chip, %struct.tpm_chip* %138, i32 0, i32 1
  %140 = load i32**, i32*** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  store i32* null, i32** %143, align 8
  %144 = load %struct.tpm_chip*, %struct.tpm_chip** %3, align 8
  %145 = call i32 @tpm_bios_log_teardown(%struct.tpm_chip* %144)
  %146 = load i32, i32* %7, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %129, %128, %15
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @tpm_read_log(%struct.tpm_chip*) #1

declare dso_local i32* @securityfs_create_dir(i8*, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i8* @securityfs_create_file(i8*, i32, i32*, i8*, i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @tpm_bios_log_teardown(%struct.tpm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
