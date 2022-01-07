; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/governors/extr_menu.c_menu_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/governors/extr_menu.c_menu_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_driver = type { %struct.cpuidle_state* }
%struct.cpuidle_state = type { i32, i32 }
%struct.cpuidle_device = type { i32, i32, i64 }
%struct.menu_device = type { i32, i32*, i64, i32*, i64, i64 }

@menu_devices = common dso_local global i32 0, align 4
@TICK_USEC = common dso_local global i32 0, align 4
@MAX_INTERESTING = common dso_local global i32 0, align 4
@CPUIDLE_FLAG_POLLING = common dso_local global i32 0, align 4
@DECAY = common dso_local global i32 0, align 4
@RESOLUTION = common dso_local global i32 0, align 4
@INTERVALS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuidle_driver*, %struct.cpuidle_device*)* @menu_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_update(%struct.cpuidle_driver* %0, %struct.cpuidle_device* %1) #0 {
  %3 = alloca %struct.cpuidle_driver*, align 8
  %4 = alloca %struct.cpuidle_device*, align 8
  %5 = alloca %struct.menu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cpuidle_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cpuidle_driver* %0, %struct.cpuidle_driver** %3, align 8
  store %struct.cpuidle_device* %1, %struct.cpuidle_device** %4, align 8
  %10 = call %struct.menu_device* @this_cpu_ptr(i32* @menu_devices)
  store %struct.menu_device* %10, %struct.menu_device** %5, align 8
  %11 = load %struct.cpuidle_device*, %struct.cpuidle_device** %4, align 8
  %12 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %3, align 8
  %15 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %14, i32 0, i32 0
  %16 = load %struct.cpuidle_state*, %struct.cpuidle_state** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %16, i64 %18
  store %struct.cpuidle_state* %19, %struct.cpuidle_state** %7, align 8
  %20 = load %struct.menu_device*, %struct.menu_device** %5, align 8
  %21 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load %struct.menu_device*, %struct.menu_device** %5, align 8
  %26 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @TICK_USEC, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* @MAX_INTERESTING, align 4
  %32 = mul nsw i32 9, %31
  %33 = sdiv i32 %32, 10
  store i32 %33, i32* %8, align 4
  br label %76

34:                                               ; preds = %24, %2
  %35 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %3, align 8
  %36 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %35, i32 0, i32 0
  %37 = load %struct.cpuidle_state*, %struct.cpuidle_state** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %37, i64 %39
  %41 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CPUIDLE_FLAG_POLLING, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %34
  %47 = load %struct.cpuidle_device*, %struct.cpuidle_device** %4, align 8
  %48 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.menu_device*, %struct.menu_device** %5, align 8
  %53 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %8, align 4
  br label %75

55:                                               ; preds = %46, %34
  %56 = load %struct.cpuidle_device*, %struct.cpuidle_device** %4, align 8
  %57 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.cpuidle_state*, %struct.cpuidle_state** %7, align 8
  %61 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 2, %62
  %64 = icmp ugt i32 %59, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %55
  %66 = load %struct.cpuidle_state*, %struct.cpuidle_state** %7, align 8
  %67 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %8, align 4
  %70 = sub i32 %69, %68
  store i32 %70, i32* %8, align 4
  br label %74

71:                                               ; preds = %55
  %72 = load i32, i32* %8, align 4
  %73 = udiv i32 %72, 2
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %71, %65
  br label %75

75:                                               ; preds = %74, %51
  br label %76

76:                                               ; preds = %75, %30
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.menu_device*, %struct.menu_device** %5, align 8
  %79 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ugt i32 %77, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.menu_device*, %struct.menu_device** %5, align 8
  %84 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %82, %76
  %87 = load %struct.menu_device*, %struct.menu_device** %5, align 8
  %88 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.menu_device*, %struct.menu_device** %5, align 8
  %91 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @DECAY, align 4
  %97 = udiv i32 %95, %96
  %98 = load i32, i32* %9, align 4
  %99 = sub i32 %98, %97
  store i32 %99, i32* %9, align 4
  %100 = load %struct.menu_device*, %struct.menu_device** %5, align 8
  %101 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ugt i32 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %86
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @MAX_INTERESTING, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %104
  %109 = load i32, i32* @RESOLUTION, align 4
  %110 = load i32, i32* %8, align 4
  %111 = mul i32 %109, %110
  %112 = load %struct.menu_device*, %struct.menu_device** %5, align 8
  %113 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = udiv i32 %111, %114
  %116 = load i32, i32* %9, align 4
  %117 = add i32 %116, %115
  store i32 %117, i32* %9, align 4
  br label %122

118:                                              ; preds = %104, %86
  %119 = load i32, i32* @RESOLUTION, align 4
  %120 = load i32, i32* %9, align 4
  %121 = add i32 %120, %119
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %118, %108
  %123 = load i32, i32* @DECAY, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load i32, i32* %9, align 4
  %127 = icmp eq i32 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i64 @unlikely(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  store i32 1, i32* %9, align 4
  br label %132

132:                                              ; preds = %131, %125, %122
  %133 = load i32, i32* %9, align 4
  %134 = load %struct.menu_device*, %struct.menu_device** %5, align 8
  %135 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.menu_device*, %struct.menu_device** %5, align 8
  %138 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  store i32 %133, i32* %140, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load %struct.menu_device*, %struct.menu_device** %5, align 8
  %143 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.menu_device*, %struct.menu_device** %5, align 8
  %146 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, 1
  store i64 %148, i64* %146, align 8
  %149 = getelementptr inbounds i32, i32* %144, i64 %147
  store i32 %141, i32* %149, align 4
  %150 = load %struct.menu_device*, %struct.menu_device** %5, align 8
  %151 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @INTERVALS, align 8
  %154 = icmp sge i64 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %132
  %156 = load %struct.menu_device*, %struct.menu_device** %5, align 8
  %157 = getelementptr inbounds %struct.menu_device, %struct.menu_device* %156, i32 0, i32 4
  store i64 0, i64* %157, align 8
  br label %158

158:                                              ; preds = %155, %132
  ret void
}

declare dso_local %struct.menu_device* @this_cpu_ptr(i32*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
