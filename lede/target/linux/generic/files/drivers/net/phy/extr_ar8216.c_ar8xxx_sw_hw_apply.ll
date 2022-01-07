; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_sw_hw_apply.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_sw_hw_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.ar8xxx_priv = type { i32*, i32, i32*, i32, %struct.ar8xxx_chip* }
%struct.ar8xxx_chip = type { i64, i32 (%struct.ar8xxx_priv*)*, i32 (%struct.ar8xxx_priv*, i32, i32)*, i32 (%struct.ar8xxx_priv*, i32, i32)*, i32 (%struct.ar8xxx_priv*)* }

@AR8X16_MAX_PORTS = common dso_local global i32 0, align 4
@AR8X16_MAX_VLANS = common dso_local global i32 0, align 4
@AR8216_PORT_CPU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar8xxx_sw_hw_apply(%struct.switch_dev* %0) #0 {
  %2 = alloca %struct.switch_dev*, align 8
  %3 = alloca %struct.ar8xxx_priv*, align 8
  %4 = alloca %struct.ar8xxx_chip*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %2, align 8
  %11 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %12 = call %struct.ar8xxx_priv* @swdev_to_ar8xxx(%struct.switch_dev* %11)
  store %struct.ar8xxx_priv* %12, %struct.ar8xxx_priv** %3, align 8
  %13 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %14 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %13, i32 0, i32 4
  %15 = load %struct.ar8xxx_chip*, %struct.ar8xxx_chip** %14, align 8
  store %struct.ar8xxx_chip* %15, %struct.ar8xxx_chip** %4, align 8
  %16 = load i32, i32* @AR8X16_MAX_PORTS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %5, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %20 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %21 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %24 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %23, i32 0, i32 4
  %25 = load %struct.ar8xxx_chip*, %struct.ar8xxx_chip** %24, align 8
  %26 = getelementptr inbounds %struct.ar8xxx_chip, %struct.ar8xxx_chip* %25, i32 0, i32 4
  %27 = load i32 (%struct.ar8xxx_priv*)*, i32 (%struct.ar8xxx_priv*)** %26, align 8
  %28 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %29 = call i32 %27(%struct.ar8xxx_priv* %28)
  %30 = mul nuw i64 4, %17
  %31 = trunc i64 %30 to i32
  %32 = call i32 @memset(i32* %19, i32 0, i32 %31)
  %33 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %34 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %105, label %37

37:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %101, %37
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @AR8X16_MAX_VLANS, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %104

42:                                               ; preds = %38
  %43 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %44 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %42
  br label %101

53:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %78, %53
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %57 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %54
  %61 = load i32, i32* %7, align 4
  %62 = shl i32 1, %61
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %60
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %19, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %71
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %67, %60
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %54

81:                                               ; preds = %54
  %82 = load %struct.ar8xxx_chip*, %struct.ar8xxx_chip** %4, align 8
  %83 = getelementptr inbounds %struct.ar8xxx_chip, %struct.ar8xxx_chip* %82, i32 0, i32 3
  %84 = load i32 (%struct.ar8xxx_priv*, i32, i32)*, i32 (%struct.ar8xxx_priv*, i32, i32)** %83, align 8
  %85 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %86 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %87 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %94 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 %84(%struct.ar8xxx_priv* %85, i32 %92, i32 %99)
  br label %101

101:                                              ; preds = %81, %52
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %38

104:                                              ; preds = %38
  br label %134

105:                                              ; preds = %1
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %130, %105
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %109 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %133

112:                                              ; preds = %106
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @AR8216_PORT_CPU, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  br label %130

117:                                              ; preds = %112
  %118 = load i32, i32* @AR8216_PORT_CPU, align 4
  %119 = shl i32 1, %118
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %19, i64 %121
  store i32 %119, i32* %122, align 4
  %123 = load i32, i32* %7, align 4
  %124 = shl i32 1, %123
  %125 = load i32, i32* @AR8216_PORT_CPU, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %19, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %124
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %117, %116
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  br label %106

133:                                              ; preds = %106
  br label %134

134:                                              ; preds = %133, %104
  store i32 0, i32* %7, align 4
  br label %135

135:                                              ; preds = %152, %134
  %136 = load i32, i32* %7, align 4
  %137 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %138 = getelementptr inbounds %struct.switch_dev, %struct.switch_dev* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %155

141:                                              ; preds = %135
  %142 = load %struct.ar8xxx_chip*, %struct.ar8xxx_chip** %4, align 8
  %143 = getelementptr inbounds %struct.ar8xxx_chip, %struct.ar8xxx_chip* %142, i32 0, i32 2
  %144 = load i32 (%struct.ar8xxx_priv*, i32, i32)*, i32 (%struct.ar8xxx_priv*, i32, i32)** %143, align 8
  %145 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %19, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 %144(%struct.ar8xxx_priv* %145, i32 %146, i32 %150)
  br label %152

152:                                              ; preds = %141
  %153 = load i32, i32* %7, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %7, align 4
  br label %135

155:                                              ; preds = %135
  %156 = load %struct.ar8xxx_chip*, %struct.ar8xxx_chip** %4, align 8
  %157 = getelementptr inbounds %struct.ar8xxx_chip, %struct.ar8xxx_chip* %156, i32 0, i32 1
  %158 = load i32 (%struct.ar8xxx_priv*)*, i32 (%struct.ar8xxx_priv*)** %157, align 8
  %159 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %160 = call i32 %158(%struct.ar8xxx_priv* %159)
  %161 = load %struct.ar8xxx_chip*, %struct.ar8xxx_chip** %4, align 8
  %162 = getelementptr inbounds %struct.ar8xxx_chip, %struct.ar8xxx_chip* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %155
  %166 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %167 = load %struct.ar8xxx_chip*, %struct.ar8xxx_chip** %4, align 8
  %168 = getelementptr inbounds %struct.ar8xxx_chip, %struct.ar8xxx_chip* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @ar8xxx_set_age_time(%struct.ar8xxx_priv* %166, i64 %169)
  br label %171

171:                                              ; preds = %165, %155
  %172 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %3, align 8
  %173 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %172, i32 0, i32 1
  %174 = call i32 @mutex_unlock(i32* %173)
  %175 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %175)
  ret i32 0
}

declare dso_local %struct.ar8xxx_priv* @swdev_to_ar8xxx(%struct.switch_dev*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ar8xxx_set_age_time(%struct.ar8xxx_priv*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
