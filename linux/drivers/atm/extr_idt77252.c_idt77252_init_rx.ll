; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_idt77252_init_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_idt77252_init_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32, i32, i32 }
%struct.vc_map = type { i32, %struct.TYPE_3__, i32, %struct.atm_vcc* }
%struct.TYPE_3__ = type { i32 }
%struct.atm_vcc = type { i32 }
%struct.atm_qos = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@VCF_RX = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SAR_RCTE_CONNECTOPEN = common dso_local global i32 0, align 4
@SAR_RCTE_RAWCELLINTEN = common dso_local global i32 0, align 4
@SAR_RCTE_RCQ = common dso_local global i32 0, align 4
@SAR_RCTE_OAM = common dso_local global i32 0, align 4
@SAR_RCTE_AAL34 = common dso_local global i32 0, align 4
@SAR_RCTE_AAL5 = common dso_local global i32 0, align 4
@SAR_RCTE_FBP_1 = common dso_local global i32 0, align 4
@SAR_FB_SIZE_2 = common dso_local global i64 0, align 8
@SAR_RCTE_FBP_3 = common dso_local global i32 0, align 4
@SAR_FB_SIZE_1 = common dso_local global i64 0, align 8
@SAR_RCTE_FBP_2 = common dso_local global i32 0, align 4
@SAR_FB_SIZE_0 = common dso_local global i64 0, align 8
@SAR_RCTE_FBP_01 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s: writing RCT at 0x%lx\0A\00", align 1
@SAR_CMD_OPEN_CONNECTION = common dso_local global i64 0, align 8
@SAR_REG_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.idt77252_dev*, %struct.vc_map*, %struct.atm_vcc*, %struct.atm_qos*)* @idt77252_init_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idt77252_init_rx(%struct.idt77252_dev* %0, %struct.vc_map* %1, %struct.atm_vcc* %2, %struct.atm_qos* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.idt77252_dev*, align 8
  %7 = alloca %struct.vc_map*, align 8
  %8 = alloca %struct.atm_vcc*, align 8
  %9 = alloca %struct.atm_qos*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %6, align 8
  store %struct.vc_map* %1, %struct.vc_map** %7, align 8
  store %struct.atm_vcc* %2, %struct.atm_vcc** %8, align 8
  store %struct.atm_qos* %3, %struct.atm_qos** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @VCF_RX, align 4
  %14 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %15 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %14, i32 0, i32 2
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %158

21:                                               ; preds = %4
  %22 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %23 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %24 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %23, i32 0, i32 3
  store %struct.atm_vcc* %22, %struct.atm_vcc** %24, align 8
  %25 = load i32, i32* @VCF_RX, align 4
  %26 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %27 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %26, i32 0, i32 2
  %28 = call i32 @set_bit(i32 %25, i32* %27)
  %29 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %30 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %38, label %33

33:                                               ; preds = %21
  %34 = load %struct.atm_vcc*, %struct.atm_vcc** %8, align 8
  %35 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %21
  store i32 0, i32* %5, align 4
  br label %158

39:                                               ; preds = %33
  %40 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %41 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %42 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = call i32 @flush_rx_pool(%struct.idt77252_dev* %40, i32* %43)
  %45 = load i32, i32* @SAR_RCTE_CONNECTOPEN, align 4
  %46 = load i32, i32* %12, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* @SAR_RCTE_RAWCELLINTEN, align 4
  %49 = load i32, i32* %12, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %12, align 4
  %51 = load %struct.atm_qos*, %struct.atm_qos** %9, align 8
  %52 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %70 [
    i32 131, label %54
    i32 130, label %58
    i32 129, label %62
    i32 128, label %66
  ]

54:                                               ; preds = %39
  %55 = load i32, i32* @SAR_RCTE_RCQ, align 4
  %56 = load i32, i32* %12, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %12, align 4
  br label %74

58:                                               ; preds = %39
  %59 = load i32, i32* @SAR_RCTE_OAM, align 4
  %60 = load i32, i32* %12, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %12, align 4
  br label %74

62:                                               ; preds = %39
  %63 = load i32, i32* @SAR_RCTE_AAL34, align 4
  %64 = load i32, i32* %12, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %12, align 4
  br label %74

66:                                               ; preds = %39
  %67 = load i32, i32* @SAR_RCTE_AAL5, align 4
  %68 = load i32, i32* %12, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %12, align 4
  br label %74

70:                                               ; preds = %39
  %71 = load i32, i32* @SAR_RCTE_RCQ, align 4
  %72 = load i32, i32* %12, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %70, %66, %62, %58, %54
  %75 = load %struct.atm_qos*, %struct.atm_qos** %9, align 8
  %76 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 128
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* @SAR_RCTE_FBP_1, align 4
  %81 = load i32, i32* %12, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %12, align 4
  br label %123

83:                                               ; preds = %74
  %84 = load %struct.atm_qos*, %struct.atm_qos** %9, align 8
  %85 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @SAR_FB_SIZE_2, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load i32, i32* @SAR_RCTE_FBP_3, align 4
  %92 = load i32, i32* %12, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %12, align 4
  br label %122

94:                                               ; preds = %83
  %95 = load %struct.atm_qos*, %struct.atm_qos** %9, align 8
  %96 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SAR_FB_SIZE_1, align 8
  %100 = icmp sgt i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %94
  %102 = load i32, i32* @SAR_RCTE_FBP_2, align 4
  %103 = load i32, i32* %12, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %12, align 4
  br label %121

105:                                              ; preds = %94
  %106 = load %struct.atm_qos*, %struct.atm_qos** %9, align 8
  %107 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @SAR_FB_SIZE_0, align 8
  %111 = icmp sgt i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %105
  %113 = load i32, i32* @SAR_RCTE_FBP_1, align 4
  %114 = load i32, i32* %12, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %12, align 4
  br label %120

116:                                              ; preds = %105
  %117 = load i32, i32* @SAR_RCTE_FBP_01, align 4
  %118 = load i32, i32* %12, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %116, %112
  br label %121

121:                                              ; preds = %120, %101
  br label %122

122:                                              ; preds = %121, %90
  br label %123

123:                                              ; preds = %122, %79
  %124 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %125 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.vc_map*, %struct.vc_map** %7, align 8
  %128 = getelementptr inbounds %struct.vc_map, %struct.vc_map* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = shl i32 %129, 2
  %131 = add nsw i32 %126, %130
  %132 = sext i32 %131 to i64
  store i64 %132, i64* %11, align 8
  %133 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %134 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i64, i64* %11, align 8
  %137 = call i32 @OPRINTK(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %135, i64 %136)
  %138 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %139 = load i64, i64* %11, align 8
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @write_sram(%struct.idt77252_dev* %138, i64 %139, i32 %140)
  %142 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %143 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %142, i32 0, i32 1
  %144 = load i64, i64* %10, align 8
  %145 = call i32 @spin_lock_irqsave(i32* %143, i64 %144)
  %146 = load i64, i64* @SAR_CMD_OPEN_CONNECTION, align 8
  %147 = load i64, i64* %11, align 8
  %148 = shl i64 %147, 2
  %149 = or i64 %146, %148
  %150 = load i32, i32* @SAR_REG_CMD, align 4
  %151 = call i32 @writel(i64 %149, i32 %150)
  %152 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %153 = call i32 @waitfor_idle(%struct.idt77252_dev* %152)
  %154 = load %struct.idt77252_dev*, %struct.idt77252_dev** %6, align 8
  %155 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %154, i32 0, i32 1
  %156 = load i64, i64* %10, align 8
  %157 = call i32 @spin_unlock_irqrestore(i32* %155, i64 %156)
  store i32 0, i32* %5, align 4
  br label %158

158:                                              ; preds = %123, %38, %18
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @flush_rx_pool(%struct.idt77252_dev*, i32*) #1

declare dso_local i32 @OPRINTK(i8*, i32, i64) #1

declare dso_local i32 @write_sram(%struct.idt77252_dev*, i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @waitfor_idle(%struct.idt77252_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
