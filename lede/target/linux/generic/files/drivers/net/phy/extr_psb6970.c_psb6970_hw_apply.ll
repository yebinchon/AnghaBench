; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_psb6970.c_psb6970_hw_apply.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_psb6970.c_psb6970_hw_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.psb6970_priv = type { i32*, i32*, i32, i64*, i32, i32, i32 (i32, i32, i32)*, i64 }

@PSB6970_MAX_VLANS = common dso_local global i32 0, align 4
@PSB6970_VFxL_VV = common dso_local global i32 0, align 4
@PSB6970_VFxH_TM_SHIFT = common dso_local global i32 0, align 4
@PSB6970_NUM_PORTS = common dso_local global i32 0, align 4
@PSB6970_PBVM_VSD = common dso_local global i32 0, align 4
@PSB6970_EC_IFNTE = common dso_local global i32 0, align 4
@PSB6970_PBVM_TBVE = common dso_local global i32 0, align 4
@PSB6970_PBVM_VMCE = common dso_local global i32 0, align 4
@PSB6970_PBVM_AOVTP = common dso_local global i32 0, align 4
@PSB6970_PBVM_VC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*)* @psb6970_hw_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psb6970_hw_apply(%struct.switch_dev* %0) #0 {
  %2 = alloca %struct.switch_dev*, align 8
  %3 = alloca %struct.psb6970_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.switch_dev* %0, %struct.switch_dev** %2, align 8
  %10 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %11 = call %struct.psb6970_priv* @to_psb6970(%struct.switch_dev* %10)
  store %struct.psb6970_priv* %11, %struct.psb6970_priv** %3, align 8
  %12 = load %struct.psb6970_priv*, %struct.psb6970_priv** %3, align 8
  %13 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %12, i32 0, i32 4
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.psb6970_priv*, %struct.psb6970_priv** %3, align 8
  %16 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %86

19:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %82, %19
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @PSB6970_MAX_VLANS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %85

24:                                               ; preds = %20
  %25 = load %struct.psb6970_priv*, %struct.psb6970_priv** %3, align 8
  %26 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %71

34:                                               ; preds = %24
  %35 = load %struct.psb6970_priv*, %struct.psb6970_priv** %3, align 8
  %36 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %35, i32 0, i32 6
  %37 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %36, align 8
  %38 = load %struct.psb6970_priv*, %struct.psb6970_priv** %3, align 8
  %39 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @PSB6970_VFxL(i32 %41)
  %43 = load i32, i32* @PSB6970_VFxL_VV, align 4
  %44 = load %struct.psb6970_priv*, %struct.psb6970_priv** %3, align 8
  %45 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %43, %50
  %52 = call i32 %37(i32 %40, i32 %42, i32 %51)
  %53 = load %struct.psb6970_priv*, %struct.psb6970_priv** %3, align 8
  %54 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %53, i32 0, i32 6
  %55 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %54, align 8
  %56 = load %struct.psb6970_priv*, %struct.psb6970_priv** %3, align 8
  %57 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @PSB6970_VFxH(i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.psb6970_priv*, %struct.psb6970_priv** %3, align 8
  %63 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %61, %64
  %66 = load i32, i32* @PSB6970_VFxH_TM_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %67, %68
  %70 = call i32 %55(i32 %58, i32 %60, i32 %69)
  br label %81

71:                                               ; preds = %24
  %72 = load %struct.psb6970_priv*, %struct.psb6970_priv** %3, align 8
  %73 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %72, i32 0, i32 6
  %74 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %73, align 8
  %75 = load %struct.psb6970_priv*, %struct.psb6970_priv** %3, align 8
  %76 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @PSB6970_VFxL(i32 %78)
  %80 = call i32 %74(i32 %77, i32 %79, i32 0)
  br label %81

81:                                               ; preds = %71, %34
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %20

85:                                               ; preds = %20
  br label %86

86:                                               ; preds = %85, %1
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %167, %86
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @PSB6970_NUM_PORTS, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %170

91:                                               ; preds = %87
  store i32 1, i32* %7, align 4
  %92 = load i32, i32* @PSB6970_PBVM_VSD, align 4
  %93 = or i32 127, %92
  store i32 %93, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %94 = load %struct.psb6970_priv*, %struct.psb6970_priv** %3, align 8
  %95 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %94, i32 0, i32 7
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %131

98:                                               ; preds = %91
  %99 = load i32, i32* @PSB6970_EC_IFNTE, align 4
  store i32 %99, i32* %9, align 4
  %100 = load %struct.psb6970_priv*, %struct.psb6970_priv** %3, align 8
  %101 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.psb6970_priv*, %struct.psb6970_priv** %3, align 8
  %104 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %103, i32 0, i32 3
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i32, i32* %102, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* @PSB6970_PBVM_TBVE, align 4
  %113 = load i32, i32* @PSB6970_PBVM_VMCE, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* %8, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %4, align 4
  %118 = shl i32 %117, 1
  %119 = load %struct.psb6970_priv*, %struct.psb6970_priv** %3, align 8
  %120 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = and i32 %118, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %98
  %125 = load i32, i32* @PSB6970_PBVM_AOVTP, align 4
  %126 = load i32, i32* @PSB6970_PBVM_VC, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* %8, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %124, %98
  br label %131

131:                                              ; preds = %130, %91
  %132 = load %struct.psb6970_priv*, %struct.psb6970_priv** %3, align 8
  %133 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %132, i32 0, i32 6
  %134 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %133, align 8
  %135 = load %struct.psb6970_priv*, %struct.psb6970_priv** %3, align 8
  %136 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @PSB6970_PBVM(i32 %138)
  %140 = load i32, i32* %8, align 4
  %141 = call i32 %134(i32 %137, i32 %139, i32 %140)
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @PSB6970_IS_CPU_PORT(i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %166, label %145

145:                                              ; preds = %131
  %146 = load %struct.psb6970_priv*, %struct.psb6970_priv** %3, align 8
  %147 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %146, i32 0, i32 6
  %148 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %147, align 8
  %149 = load %struct.psb6970_priv*, %struct.psb6970_priv** %3, align 8
  %150 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %4, align 4
  %153 = call i32 @PSB6970_EC(i32 %152)
  %154 = load i32, i32* %9, align 4
  %155 = call i32 %148(i32 %151, i32 %153, i32 %154)
  %156 = load %struct.psb6970_priv*, %struct.psb6970_priv** %3, align 8
  %157 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %156, i32 0, i32 6
  %158 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %157, align 8
  %159 = load %struct.psb6970_priv*, %struct.psb6970_priv** %3, align 8
  %160 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %4, align 4
  %163 = call i32 @PSB6970_DVID(i32 %162)
  %164 = load i32, i32* %7, align 4
  %165 = call i32 %158(i32 %161, i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %145, %131
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %4, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %4, align 4
  br label %87

170:                                              ; preds = %87
  %171 = load %struct.psb6970_priv*, %struct.psb6970_priv** %3, align 8
  %172 = getelementptr inbounds %struct.psb6970_priv, %struct.psb6970_priv* %171, i32 0, i32 4
  %173 = call i32 @mutex_unlock(i32* %172)
  ret i32 0
}

declare dso_local %struct.psb6970_priv* @to_psb6970(%struct.switch_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @PSB6970_VFxL(i32) #1

declare dso_local i32 @PSB6970_VFxH(i32) #1

declare dso_local i32 @PSB6970_PBVM(i32) #1

declare dso_local i32 @PSB6970_IS_CPU_PORT(i32) #1

declare dso_local i32 @PSB6970_EC(i32) #1

declare dso_local i32 @PSB6970_DVID(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
