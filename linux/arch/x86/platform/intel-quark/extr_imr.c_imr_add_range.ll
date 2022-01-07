; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/intel-quark/extr_imr.c_imr_add_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/intel-quark/extr_imr.c_imr_add_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imr_device = type { i32, i32, i32 }
%struct.imr_regs = type { i32, i32, i8*, i8* }

@imr_dev = common dso_local global %struct.imr_device zeroinitializer, align 4
@.str = private unnamed_addr constant [23 x i8] c"driver not initialized\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"add %d phys %pa-%pa size %zx mask 0x%08x wmask 0x%08x\0A\00", align 1
@IMR_READ_ACCESS_ALL = common dso_local global i32 0, align 4
@IMR_WRITE_ACCESS_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imr_add_range(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.imr_device*, align 8
  %13 = alloca %struct.imr_regs, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.imr_device* @imr_dev, %struct.imr_device** %12, align 8
  %17 = load %struct.imr_device*, %struct.imr_device** %12, align 8
  %18 = getelementptr inbounds %struct.imr_device, %struct.imr_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ONCE(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %138

27:                                               ; preds = %4
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @imr_check_params(i64 %28, i64 %29)
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %16, align 4
  store i32 %34, i32* %5, align 4
  br label %138

35:                                               ; preds = %27
  %36 = load i64, i64* %7, align 8
  %37 = call i64 @imr_raw_size(i64 %36)
  store i64 %37, i64* %14, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %14, align 8
  %40 = add i64 %38, %39
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i8* @phys_to_imr(i64 %41)
  %43 = getelementptr inbounds %struct.imr_regs, %struct.imr_regs* %13, i32 0, i32 3
  store i8* %42, i8** %43, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i8* @phys_to_imr(i64 %44)
  %46 = getelementptr inbounds %struct.imr_regs, %struct.imr_regs* %13, i32 0, i32 2
  store i8* %45, i8** %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = getelementptr inbounds %struct.imr_regs, %struct.imr_regs* %13, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = load i32, i32* %9, align 4
  %50 = getelementptr inbounds %struct.imr_regs, %struct.imr_regs* %13, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = call i64 @imr_is_enabled(%struct.imr_regs* %13)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %35
  %54 = load i32, i32* @ENOTSUPP, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %138

56:                                               ; preds = %35
  %57 = load %struct.imr_device*, %struct.imr_device** %12, align 8
  %58 = getelementptr inbounds %struct.imr_device, %struct.imr_device* %57, i32 0, i32 2
  %59 = call i32 @mutex_lock(i32* %58)
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %92, %56
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.imr_device*, %struct.imr_device** %12, align 8
  %63 = getelementptr inbounds %struct.imr_device, %struct.imr_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ult i32 %61, %64
  br i1 %65, label %66, label %95

66:                                               ; preds = %60
  %67 = load %struct.imr_device*, %struct.imr_device** %12, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @imr_read(%struct.imr_device* %67, i32 %68, %struct.imr_regs* %13)
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %16, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %133

73:                                               ; preds = %66
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %16, align 4
  %76 = call i64 @imr_is_enabled(%struct.imr_regs* %13)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load i64, i64* %6, align 8
  %80 = call i64 @imr_address_overlap(i64 %79, %struct.imr_regs* %13)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %133

83:                                               ; preds = %78
  %84 = load i64, i64* %10, align 8
  %85 = call i64 @imr_address_overlap(i64 %84, %struct.imr_regs* %13)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %133

88:                                               ; preds = %83
  br label %91

89:                                               ; preds = %73
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %15, align 4
  br label %91

91:                                               ; preds = %89, %88
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %11, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %60

95:                                               ; preds = %60
  %96 = load i32, i32* %15, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %16, align 4
  br label %133

101:                                              ; preds = %95
  %102 = load i32, i32* %15, align 4
  %103 = load i64, i64* %14, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %102, i64* %6, i64* %10, i64 %103, i32 %104, i32 %105)
  %107 = load i64, i64* %6, align 8
  %108 = call i8* @phys_to_imr(i64 %107)
  %109 = getelementptr inbounds %struct.imr_regs, %struct.imr_regs* %13, i32 0, i32 3
  store i8* %108, i8** %109, align 8
  %110 = load i64, i64* %10, align 8
  %111 = call i8* @phys_to_imr(i64 %110)
  %112 = getelementptr inbounds %struct.imr_regs, %struct.imr_regs* %13, i32 0, i32 2
  store i8* %111, i8** %112, align 8
  %113 = load i32, i32* %8, align 4
  %114 = getelementptr inbounds %struct.imr_regs, %struct.imr_regs* %13, i32 0, i32 0
  store i32 %113, i32* %114, align 8
  %115 = load i32, i32* %9, align 4
  %116 = getelementptr inbounds %struct.imr_regs, %struct.imr_regs* %13, i32 0, i32 1
  store i32 %115, i32* %116, align 4
  %117 = load %struct.imr_device*, %struct.imr_device** %12, align 8
  %118 = load i32, i32* %15, align 4
  %119 = call i32 @imr_write(%struct.imr_device* %117, i32 %118, %struct.imr_regs* %13)
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %16, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %101
  %123 = getelementptr inbounds %struct.imr_regs, %struct.imr_regs* %13, i32 0, i32 3
  store i8* null, i8** %123, align 8
  %124 = getelementptr inbounds %struct.imr_regs, %struct.imr_regs* %13, i32 0, i32 2
  store i8* null, i8** %124, align 8
  %125 = load i32, i32* @IMR_READ_ACCESS_ALL, align 4
  %126 = getelementptr inbounds %struct.imr_regs, %struct.imr_regs* %13, i32 0, i32 0
  store i32 %125, i32* %126, align 8
  %127 = load i32, i32* @IMR_WRITE_ACCESS_ALL, align 4
  %128 = getelementptr inbounds %struct.imr_regs, %struct.imr_regs* %13, i32 0, i32 1
  store i32 %127, i32* %128, align 4
  %129 = load %struct.imr_device*, %struct.imr_device** %12, align 8
  %130 = load i32, i32* %15, align 4
  %131 = call i32 @imr_write(%struct.imr_device* %129, i32 %130, %struct.imr_regs* %13)
  br label %132

132:                                              ; preds = %122, %101
  br label %133

133:                                              ; preds = %132, %98, %87, %82, %72
  %134 = load %struct.imr_device*, %struct.imr_device** %12, align 8
  %135 = getelementptr inbounds %struct.imr_device, %struct.imr_device* %134, i32 0, i32 2
  %136 = call i32 @mutex_unlock(i32* %135)
  %137 = load i32, i32* %16, align 4
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %133, %53, %33, %24
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @imr_check_params(i64, i64) #1

declare dso_local i64 @imr_raw_size(i64) #1

declare dso_local i8* @phys_to_imr(i64) #1

declare dso_local i64 @imr_is_enabled(%struct.imr_regs*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @imr_read(%struct.imr_device*, i32, %struct.imr_regs*) #1

declare dso_local i64 @imr_address_overlap(i64, %struct.imr_regs*) #1

declare dso_local i32 @pr_debug(i8*, i32, i64*, i64*, i64, i32, i32) #1

declare dso_local i32 @imr_write(%struct.imr_device*, i32, %struct.imr_regs*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
