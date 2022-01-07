; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_amd.c_threshold_restart_bank.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_amd.c_threshold_restart_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thresh_restart = type { i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, i64, i32 }

@THRESHOLD_MAX = common dso_local global i32 0, align 4
@MASK_ERR_COUNT_HI = common dso_local global i32 0, align 4
@MASK_OVERFLOW_HI = common dso_local global i32 0, align 4
@MASK_INT_TYPE_HI = common dso_local global i32 0, align 4
@MASK_LVTOFF_HI = common dso_local global i32 0, align 4
@INT_TYPE_APIC = common dso_local global i32 0, align 4
@MASK_COUNT_EN_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @threshold_restart_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @threshold_restart_bank(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.thresh_restart*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.thresh_restart*
  store %struct.thresh_restart* %8, %struct.thresh_restart** %3, align 8
  %9 = load %struct.thresh_restart*, %struct.thresh_restart** %3, align 8
  %10 = getelementptr inbounds %struct.thresh_restart, %struct.thresh_restart* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @rdmsr(i32 %13, i32 %14, i32 %15)
  %17 = load %struct.thresh_restart*, %struct.thresh_restart** %3, align 8
  %18 = getelementptr inbounds %struct.thresh_restart, %struct.thresh_restart* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @THRESHOLD_MAX, align 4
  %24 = and i32 %22, %23
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.thresh_restart*, %struct.thresh_restart** %3, align 8
  %28 = getelementptr inbounds %struct.thresh_restart, %struct.thresh_restart* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.thresh_restart*, %struct.thresh_restart** %3, align 8
  %31 = getelementptr inbounds %struct.thresh_restart, %struct.thresh_restart* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @MASK_ERR_COUNT_HI, align 4
  %37 = load i32, i32* @MASK_OVERFLOW_HI, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = and i32 %35, %39
  %41 = load i32, i32* @THRESHOLD_MAX, align 4
  %42 = load %struct.thresh_restart*, %struct.thresh_restart** %3, align 8
  %43 = getelementptr inbounds %struct.thresh_restart, %struct.thresh_restart* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %41, %46
  %48 = or i32 %40, %47
  store i32 %48, i32* %4, align 4
  br label %77

49:                                               ; preds = %29
  %50 = load %struct.thresh_restart*, %struct.thresh_restart** %3, align 8
  %51 = getelementptr inbounds %struct.thresh_restart, %struct.thresh_restart* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @THRESHOLD_MAX, align 4
  %57 = and i32 %55, %56
  %58 = load %struct.thresh_restart*, %struct.thresh_restart** %3, align 8
  %59 = getelementptr inbounds %struct.thresh_restart, %struct.thresh_restart* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.thresh_restart*, %struct.thresh_restart** %3, align 8
  %62 = getelementptr inbounds %struct.thresh_restart, %struct.thresh_restart* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %60, %65
  %67 = add nsw i32 %57, %66
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @MASK_ERR_COUNT_HI, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @THRESHOLD_MAX, align 4
  %74 = and i32 %72, %73
  %75 = or i32 %71, %74
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %54, %49
  br label %77

77:                                               ; preds = %76, %34
  %78 = load i32, i32* @MASK_INT_TYPE_HI, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %4, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %4, align 4
  %82 = load %struct.thresh_restart*, %struct.thresh_restart** %3, align 8
  %83 = getelementptr inbounds %struct.thresh_restart, %struct.thresh_restart* %82, i32 0, i32 3
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %77
  br label %129

89:                                               ; preds = %77
  %90 = load %struct.thresh_restart*, %struct.thresh_restart** %3, align 8
  %91 = getelementptr inbounds %struct.thresh_restart, %struct.thresh_restart* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %117

94:                                               ; preds = %89
  %95 = load %struct.thresh_restart*, %struct.thresh_restart** %3, align 8
  %96 = getelementptr inbounds %struct.thresh_restart, %struct.thresh_restart* %95, i32 0, i32 3
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load %struct.thresh_restart*, %struct.thresh_restart** %3, align 8
  %99 = getelementptr inbounds %struct.thresh_restart, %struct.thresh_restart* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i64 @lvt_off_valid(%struct.TYPE_2__* %97, i32 %100, i32 %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %94
  %106 = load i32, i32* @MASK_LVTOFF_HI, align 4
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %4, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %4, align 4
  %110 = load %struct.thresh_restart*, %struct.thresh_restart** %3, align 8
  %111 = getelementptr inbounds %struct.thresh_restart, %struct.thresh_restart* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = shl i32 %112, 20
  %114 = load i32, i32* %4, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %105, %94
  br label %117

117:                                              ; preds = %116, %89
  %118 = load %struct.thresh_restart*, %struct.thresh_restart** %3, align 8
  %119 = getelementptr inbounds %struct.thresh_restart, %struct.thresh_restart* %118, i32 0, i32 3
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %117
  %125 = load i32, i32* @INT_TYPE_APIC, align 4
  %126 = load i32, i32* %4, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %124, %117
  br label %129

129:                                              ; preds = %128, %88
  %130 = load i32, i32* @MASK_COUNT_EN_HI, align 4
  %131 = load i32, i32* %4, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %4, align 4
  %133 = load %struct.thresh_restart*, %struct.thresh_restart** %3, align 8
  %134 = getelementptr inbounds %struct.thresh_restart, %struct.thresh_restart* %133, i32 0, i32 3
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* %4, align 4
  %140 = call i32 @wrmsr(i32 %137, i32 %138, i32 %139)
  ret void
}

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i64 @lvt_off_valid(%struct.TYPE_2__*, i32, i32, i32) #1

declare dso_local i32 @wrmsr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
