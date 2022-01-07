; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_feature.c_core99_airport_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_feature.c_core99_airport_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { %struct.device_node* }
%struct.macio_chip = type { i32, %struct.device_node* }

@ENODEV = common dso_local global i64 0, align 8
@MACIO_FLAG_AIRPORT_ON = common dso_local global i32 0, align 4
@KEYLARGO_GPIO_0 = common dso_local global i32 0, align 4
@KEYLARGO_FCR2 = common dso_local global i32 0, align 4
@KL2_CARDSEL_16 = common dso_local global i32 0, align 4
@KEYLARGO_GPIO_EXTINT_0 = common dso_local global i32 0, align 4
@KL_GPIO_AIRPORT_0 = common dso_local global i32 0, align 4
@KL_GPIO_AIRPORT_1 = common dso_local global i32 0, align 4
@KL_GPIO_AIRPORT_2 = common dso_local global i32 0, align 4
@KL_GPIO_AIRPORT_3 = common dso_local global i32 0, align 4
@KL_GPIO_AIRPORT_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_node*, i64, i64)* @core99_airport_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @core99_airport_enable(%struct.device_node* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.macio_chip*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.device_node*, %struct.device_node** %5, align 8
  %12 = call %struct.macio_chip* @macio_find(%struct.device_node* %11, i32 0)
  store %struct.macio_chip* %12, %struct.macio_chip** %8, align 8
  %13 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %14 = icmp ne %struct.macio_chip* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* @ENODEV, align 8
  %17 = sub nsw i64 0, %16
  store i64 %17, i64* %4, align 8
  br label %173

18:                                               ; preds = %3
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %21 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %20, i32 0, i32 1
  %22 = load %struct.device_node*, %struct.device_node** %21, align 8
  %23 = icmp ne %struct.device_node* %19, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load %struct.device_node*, %struct.device_node** %5, align 8
  %26 = getelementptr inbounds %struct.device_node, %struct.device_node* %25, i32 0, i32 0
  %27 = load %struct.device_node*, %struct.device_node** %26, align 8
  %28 = icmp ne %struct.device_node* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.device_node*, %struct.device_node** %5, align 8
  %31 = getelementptr inbounds %struct.device_node, %struct.device_node* %30, i32 0, i32 0
  %32 = load %struct.device_node*, %struct.device_node** %31, align 8
  %33 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %34 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %33, i32 0, i32 1
  %35 = load %struct.device_node*, %struct.device_node** %34, align 8
  %36 = icmp ne %struct.device_node* %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %29, %24
  %38 = load i64, i64* @ENODEV, align 8
  %39 = sub nsw i64 0, %38
  store i64 %39, i64* %4, align 8
  br label %173

40:                                               ; preds = %29, %18
  %41 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %42 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MACIO_FLAG_AIRPORT_ON, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %10, align 4
  %48 = load i64, i64* %7, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  store i64 0, i64* %4, align 8
  br label %173

53:                                               ; preds = %40
  %54 = load i64, i64* %7, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %144

56:                                               ; preds = %53
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @LOCK(i64 %57)
  %59 = load i32, i32* @KEYLARGO_GPIO_0, align 4
  %60 = add nsw i32 %59, 15
  %61 = call i32 @MACIO_OUT8(i32 %60, i32 5)
  %62 = load i32, i32* @KEYLARGO_GPIO_0, align 4
  %63 = add nsw i32 %62, 15
  %64 = call i32 @MACIO_IN8(i32 %63)
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @UNLOCK(i64 %65)
  %67 = call i32 @mdelay(i32 10)
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @LOCK(i64 %68)
  %70 = load i32, i32* @KEYLARGO_GPIO_0, align 4
  %71 = add nsw i32 %70, 15
  %72 = call i32 @MACIO_OUT8(i32 %71, i32 4)
  %73 = load i32, i32* @KEYLARGO_GPIO_0, align 4
  %74 = add nsw i32 %73, 15
  %75 = call i32 @MACIO_IN8(i32 %74)
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @UNLOCK(i64 %76)
  %78 = call i32 @mdelay(i32 10)
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @LOCK(i64 %79)
  %81 = load i32, i32* @KEYLARGO_FCR2, align 4
  %82 = load i32, i32* @KL2_CARDSEL_16, align 4
  %83 = call i32 @MACIO_BIC(i32 %81, i32 %82)
  %84 = load i32, i32* @KEYLARGO_FCR2, align 4
  %85 = call i32 @MACIO_IN32(i32 %84)
  %86 = call i32 @udelay(i32 10)
  %87 = load i32, i32* @KEYLARGO_GPIO_EXTINT_0, align 4
  %88 = add nsw i32 %87, 11
  %89 = call i32 @MACIO_OUT8(i32 %88, i32 0)
  %90 = load i32, i32* @KEYLARGO_GPIO_EXTINT_0, align 4
  %91 = add nsw i32 %90, 11
  %92 = call i32 @MACIO_IN8(i32 %91)
  %93 = call i32 @udelay(i32 10)
  %94 = load i32, i32* @KEYLARGO_GPIO_EXTINT_0, align 4
  %95 = add nsw i32 %94, 10
  %96 = call i32 @MACIO_OUT8(i32 %95, i32 40)
  %97 = load i32, i32* @KEYLARGO_GPIO_EXTINT_0, align 4
  %98 = add nsw i32 %97, 10
  %99 = call i32 @MACIO_IN8(i32 %98)
  %100 = call i32 @udelay(i32 10)
  %101 = load i32, i32* @KEYLARGO_GPIO_EXTINT_0, align 4
  %102 = add nsw i32 %101, 13
  %103 = call i32 @MACIO_OUT8(i32 %102, i32 40)
  %104 = load i32, i32* @KEYLARGO_GPIO_EXTINT_0, align 4
  %105 = add nsw i32 %104, 13
  %106 = call i32 @MACIO_IN8(i32 %105)
  %107 = call i32 @udelay(i32 10)
  %108 = load i32, i32* @KEYLARGO_GPIO_0, align 4
  %109 = add nsw i32 %108, 13
  %110 = call i32 @MACIO_OUT8(i32 %109, i32 40)
  %111 = load i32, i32* @KEYLARGO_GPIO_0, align 4
  %112 = add nsw i32 %111, 13
  %113 = call i32 @MACIO_IN8(i32 %112)
  %114 = call i32 @udelay(i32 10)
  %115 = load i32, i32* @KEYLARGO_GPIO_0, align 4
  %116 = add nsw i32 %115, 14
  %117 = call i32 @MACIO_OUT8(i32 %116, i32 40)
  %118 = load i32, i32* @KEYLARGO_GPIO_0, align 4
  %119 = add nsw i32 %118, 14
  %120 = call i32 @MACIO_IN8(i32 %119)
  %121 = load i64, i64* %9, align 8
  %122 = call i32 @UNLOCK(i64 %121)
  %123 = call i32 @udelay(i32 10)
  %124 = call i32 @MACIO_OUT32(i32 114688, i32 0)
  %125 = call i32 @mdelay(i32 1)
  %126 = call i32 @MACIO_OUT8(i32 107488, i32 65)
  %127 = call i32 @MACIO_IN8(i32 107488)
  %128 = call i32 @udelay(i32 10)
  %129 = load i64, i64* %9, align 8
  %130 = call i32 @LOCK(i64 %129)
  %131 = load i32, i32* @KEYLARGO_FCR2, align 4
  %132 = load i32, i32* @KL2_CARDSEL_16, align 4
  %133 = call i32 @MACIO_BIS(i32 %131, i32 %132)
  %134 = load i32, i32* @KEYLARGO_FCR2, align 4
  %135 = call i32 @MACIO_IN32(i32 %134)
  %136 = load i64, i64* %9, align 8
  %137 = call i32 @UNLOCK(i64 %136)
  %138 = call i32 @mdelay(i32 100)
  %139 = load i32, i32* @MACIO_FLAG_AIRPORT_ON, align 4
  %140 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %141 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  br label %172

144:                                              ; preds = %53
  %145 = load i64, i64* %9, align 8
  %146 = call i32 @LOCK(i64 %145)
  %147 = load i32, i32* @KEYLARGO_FCR2, align 4
  %148 = load i32, i32* @KL2_CARDSEL_16, align 4
  %149 = call i32 @MACIO_BIC(i32 %147, i32 %148)
  %150 = load i32, i32* @KEYLARGO_FCR2, align 4
  %151 = call i32 @MACIO_IN32(i32 %150)
  %152 = load i32, i32* @KL_GPIO_AIRPORT_0, align 4
  %153 = call i32 @MACIO_OUT8(i32 %152, i32 0)
  %154 = load i32, i32* @KL_GPIO_AIRPORT_1, align 4
  %155 = call i32 @MACIO_OUT8(i32 %154, i32 0)
  %156 = load i32, i32* @KL_GPIO_AIRPORT_2, align 4
  %157 = call i32 @MACIO_OUT8(i32 %156, i32 0)
  %158 = load i32, i32* @KL_GPIO_AIRPORT_3, align 4
  %159 = call i32 @MACIO_OUT8(i32 %158, i32 0)
  %160 = load i32, i32* @KL_GPIO_AIRPORT_4, align 4
  %161 = call i32 @MACIO_OUT8(i32 %160, i32 0)
  %162 = load i32, i32* @KL_GPIO_AIRPORT_4, align 4
  %163 = call i32 @MACIO_IN8(i32 %162)
  %164 = load i64, i64* %9, align 8
  %165 = call i32 @UNLOCK(i64 %164)
  %166 = load i32, i32* @MACIO_FLAG_AIRPORT_ON, align 4
  %167 = xor i32 %166, -1
  %168 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %169 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = and i32 %170, %167
  store i32 %171, i32* %169, align 8
  br label %172

172:                                              ; preds = %144, %56
  store i64 0, i64* %4, align 8
  br label %173

173:                                              ; preds = %172, %52, %37, %15
  %174 = load i64, i64* %4, align 8
  ret i64 %174
}

declare dso_local %struct.macio_chip* @macio_find(%struct.device_node*, i32) #1

declare dso_local i32 @LOCK(i64) #1

declare dso_local i32 @MACIO_OUT8(i32, i32) #1

declare dso_local i32 @MACIO_IN8(i32) #1

declare dso_local i32 @UNLOCK(i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @MACIO_BIC(i32, i32) #1

declare dso_local i32 @MACIO_IN32(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @MACIO_OUT32(i32, i32) #1

declare dso_local i32 @MACIO_BIS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
