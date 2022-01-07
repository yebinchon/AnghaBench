; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/intel-quark/extr_imr.c___imr_remove_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/intel-quark/extr_imr.c___imr_remove_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imr_device = type { i32, i32, i32 }
%struct.imr_regs = type { i32, i32, i32, i32 }

@imr_dev = common dso_local global %struct.imr_device zeroinitializer, align 4
@.str = private unnamed_addr constant [23 x i8] c"driver not initialized\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IMR_LOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"remove %d phys %pa-%pa size %zx\0A\00", align 1
@IMR_READ_ACCESS_ALL = common dso_local global i32 0, align 4
@IMR_WRITE_ACCESS_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64)* @__imr_remove_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__imr_remove_range(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.imr_device*, align 8
  %12 = alloca %struct.imr_regs, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  store %struct.imr_device* @imr_dev, %struct.imr_device** %11, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.imr_device*, %struct.imr_device** %11, align 8
  %16 = getelementptr inbounds %struct.imr_device, %struct.imr_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ONCE(i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %135

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @imr_check_params(i64 %29, i64 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %4, align 4
  br label %135

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %25
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @imr_raw_size(i64 %38)
  store i64 %39, i64* %13, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %13, align 8
  %42 = add i64 %40, %41
  store i64 %42, i64* %8, align 8
  %43 = load %struct.imr_device*, %struct.imr_device** %11, align 8
  %44 = getelementptr inbounds %struct.imr_device, %struct.imr_device* %43, i32 0, i32 2
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load i32, i32* %5, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %37
  %49 = load %struct.imr_device*, %struct.imr_device** %11, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @imr_read(%struct.imr_device* %49, i32 %50, %struct.imr_regs* %12)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %130

55:                                               ; preds = %48
  %56 = call i32 @imr_is_enabled(%struct.imr_regs* %12)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.imr_regs, %struct.imr_regs* %12, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IMR_LOCK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58, %55
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %14, align 4
  br label %130

67:                                               ; preds = %58
  store i32 1, i32* %9, align 4
  br label %111

68:                                               ; preds = %37
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %107, %68
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.imr_device*, %struct.imr_device** %11, align 8
  %72 = getelementptr inbounds %struct.imr_device, %struct.imr_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ult i32 %70, %73
  br i1 %74, label %75, label %110

75:                                               ; preds = %69
  %76 = load %struct.imr_device*, %struct.imr_device** %11, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @imr_read(%struct.imr_device* %76, i32 %77, %struct.imr_regs* %12)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %130

82:                                               ; preds = %75
  %83 = call i32 @imr_is_enabled(%struct.imr_regs* %12)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.imr_regs, %struct.imr_regs* %12, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @IMR_LOCK, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85, %82
  br label %107

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.imr_regs, %struct.imr_regs* %12, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @imr_to_phys(i32 %94)
  %96 = load i64, i64* %6, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.imr_regs, %struct.imr_regs* %12, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @imr_to_phys(i32 %100)
  %102 = load i64, i64* %8, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  store i32 1, i32* %9, align 4
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %5, align 4
  br label %110

106:                                              ; preds = %98, %92
  br label %107

107:                                              ; preds = %106, %91
  %108 = load i32, i32* %10, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %69

110:                                              ; preds = %104, %69
  br label %111

111:                                              ; preds = %110, %67
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* @ENODEV, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %14, align 4
  br label %130

117:                                              ; preds = %111
  %118 = load i32, i32* %5, align 4
  %119 = load i64, i64* %13, align 8
  %120 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %118, i64* %6, i64* %8, i64 %119)
  %121 = getelementptr inbounds %struct.imr_regs, %struct.imr_regs* %12, i32 0, i32 0
  store i32 0, i32* %121, align 4
  %122 = getelementptr inbounds %struct.imr_regs, %struct.imr_regs* %12, i32 0, i32 1
  store i32 0, i32* %122, align 4
  %123 = load i32, i32* @IMR_READ_ACCESS_ALL, align 4
  %124 = getelementptr inbounds %struct.imr_regs, %struct.imr_regs* %12, i32 0, i32 3
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* @IMR_WRITE_ACCESS_ALL, align 4
  %126 = getelementptr inbounds %struct.imr_regs, %struct.imr_regs* %12, i32 0, i32 2
  store i32 %125, i32* %126, align 4
  %127 = load %struct.imr_device*, %struct.imr_device** %11, align 8
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @imr_write(%struct.imr_device* %127, i32 %128, %struct.imr_regs* %12)
  store i32 %129, i32* %14, align 4
  br label %130

130:                                              ; preds = %117, %114, %81, %64, %54
  %131 = load %struct.imr_device*, %struct.imr_device** %11, align 8
  %132 = getelementptr inbounds %struct.imr_device, %struct.imr_device* %131, i32 0, i32 2
  %133 = call i32 @mutex_unlock(i32* %132)
  %134 = load i32, i32* %14, align 4
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %130, %34, %22
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @imr_check_params(i64, i64) #1

declare dso_local i64 @imr_raw_size(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @imr_read(%struct.imr_device*, i32, %struct.imr_regs*) #1

declare dso_local i32 @imr_is_enabled(%struct.imr_regs*) #1

declare dso_local i64 @imr_to_phys(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i64*, i64*, i64) #1

declare dso_local i32 @imr_write(%struct.imr_device*, i32, %struct.imr_regs*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
