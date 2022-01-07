; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_mfp-pxa2xx.c_gpio_set_wake.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_mfp-pxa2xx.c_gpio_set_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i64, i64, i64, i64, i64, i32 }

@MFP_PIN_GPIO127 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@gpio_desc = common dso_local global %struct.gpio_desc* null, align 8
@MFP_LPM_CAN_WAKEUP = common dso_local global i64 0, align 8
@PKWR = common dso_local global i64 0, align 8
@PWER = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@MFP_LPM_EDGE_RISE = common dso_local global i64 0, align 8
@PRER = common dso_local global i64 0, align 8
@MFP_LPM_EDGE_FALL = common dso_local global i64 0, align 8
@PFER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpio_set_wake(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_desc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @MFP_PIN_GPIO127, align 4
  %11 = call i32 @mfp_to_gpio(i32 %10)
  %12 = icmp ugt i32 %9, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %166

16:                                               ; preds = %2
  %17 = load %struct.gpio_desc*, %struct.gpio_desc** @gpio_desc, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %17, i64 %19
  store %struct.gpio_desc* %20, %struct.gpio_desc** %6, align 8
  %21 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %22 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %25 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %16
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %166

31:                                               ; preds = %16
  %32 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %33 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %66

36:                                               ; preds = %31
  %37 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %38 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @MFP_AF(i64 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %36
  %43 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %44 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MFP_LPM_CAN_WAKEUP, align 8
  %47 = and i64 %45, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %42
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %54 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @PKWR, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* @PKWR, align 8
  br label %65

58:                                               ; preds = %49
  %59 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %60 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = xor i64 %61, -1
  %63 = load i64, i64* @PKWR, align 8
  %64 = and i64 %63, %62
  store i64 %64, i64* @PKWR, align 8
  br label %65

65:                                               ; preds = %58, %52
  store i32 0, i32* %3, align 4
  br label %166

66:                                               ; preds = %42, %36, %31
  %67 = load i64, i64* @PWER, align 8
  %68 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %69 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = and i64 %67, %70
  %72 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %73 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = xor i64 %74, -1
  %76 = and i64 %71, %75
  store i64 %76, i64* %8, align 8
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %66
  %80 = load i64, i64* %8, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* @EBUSY, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %166

85:                                               ; preds = %79, %66
  %86 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %87 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %165

90:                                               ; preds = %85
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* @MFP_LPM_CAN_WAKEUP, align 8
  %93 = and i64 %91, %92
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %165

95:                                               ; preds = %90
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %145

98:                                               ; preds = %95
  %99 = load i64, i64* @PWER, align 8
  %100 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %101 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = xor i64 %102, -1
  %104 = and i64 %99, %103
  %105 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %106 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = or i64 %104, %107
  store i64 %108, i64* @PWER, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* @MFP_LPM_EDGE_RISE, align 8
  %111 = and i64 %109, %110
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %98
  %114 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %115 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @PRER, align 8
  %118 = or i64 %117, %116
  store i64 %118, i64* @PRER, align 8
  br label %126

119:                                              ; preds = %98
  %120 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %121 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = xor i64 %122, -1
  %124 = load i64, i64* @PRER, align 8
  %125 = and i64 %124, %123
  store i64 %125, i64* @PRER, align 8
  br label %126

126:                                              ; preds = %119, %113
  %127 = load i64, i64* %7, align 8
  %128 = load i64, i64* @MFP_LPM_EDGE_FALL, align 8
  %129 = and i64 %127, %128
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %133 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @PFER, align 8
  %136 = or i64 %135, %134
  store i64 %136, i64* @PFER, align 8
  br label %144

137:                                              ; preds = %126
  %138 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %139 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = xor i64 %140, -1
  %142 = load i64, i64* @PFER, align 8
  %143 = and i64 %142, %141
  store i64 %143, i64* @PFER, align 8
  br label %144

144:                                              ; preds = %137, %131
  br label %164

145:                                              ; preds = %95
  %146 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %147 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = xor i64 %148, -1
  %150 = load i64, i64* @PWER, align 8
  %151 = and i64 %150, %149
  store i64 %151, i64* @PWER, align 8
  %152 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %153 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = xor i64 %154, -1
  %156 = load i64, i64* @PRER, align 8
  %157 = and i64 %156, %155
  store i64 %157, i64* @PRER, align 8
  %158 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %159 = getelementptr inbounds %struct.gpio_desc, %struct.gpio_desc* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = xor i64 %160, -1
  %162 = load i64, i64* @PFER, align 8
  %163 = and i64 %162, %161
  store i64 %163, i64* @PFER, align 8
  br label %164

164:                                              ; preds = %145, %144
  br label %165

165:                                              ; preds = %164, %90, %85
  store i32 0, i32* %3, align 4
  br label %166

166:                                              ; preds = %165, %82, %65, %28, %13
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i32 @mfp_to_gpio(i32) #1

declare dso_local i64 @MFP_AF(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
