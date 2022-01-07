; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_vci_is_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_lanai.c_vci_is_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lanai_dev = type { i64, i32, %struct.lanai_vcc**, %struct.atm_vcc* }
%struct.lanai_vcc = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.atm_vcc* }
%struct.TYPE_5__ = type { %struct.atm_vcc* }
%struct.atm_vcc = type { %struct.atm_qos }
%struct.atm_qos = type { i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@ATM_NONE = common dso_local global i64 0, align 8
@ATM_CBR = common dso_local global i64 0, align 8
@ATM_AAL0 = common dso_local global i64 0, align 8
@CONFIG2_VCI0_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lanai_dev*, i64, %struct.atm_vcc*)* @vci_is_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vci_is_ok(%struct.lanai_dev* %0, i64 %1, %struct.atm_vcc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lanai_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.atm_vcc*, align 8
  %8 = alloca %struct.atm_qos*, align 8
  %9 = alloca %struct.lanai_vcc*, align 8
  %10 = alloca %struct.lanai_vcc*, align 8
  store %struct.lanai_dev* %0, %struct.lanai_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.atm_vcc* %2, %struct.atm_vcc** %7, align 8
  %11 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %12 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %11, i32 0, i32 0
  store %struct.atm_qos* %12, %struct.atm_qos** %8, align 8
  %13 = load %struct.lanai_dev*, %struct.lanai_dev** %5, align 8
  %14 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %13, i32 0, i32 2
  %15 = load %struct.lanai_vcc**, %struct.lanai_vcc*** %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.lanai_vcc*, %struct.lanai_vcc** %15, i64 %16
  %18 = load %struct.lanai_vcc*, %struct.lanai_vcc** %17, align 8
  store %struct.lanai_vcc* %18, %struct.lanai_vcc** %9, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.lanai_dev*, %struct.lanai_dev** %5, align 8
  %23 = load %struct.atm_qos*, %struct.atm_qos** %8, align 8
  %24 = call i32 @vci0_is_ok(%struct.lanai_dev* %22, %struct.atm_qos* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %138

27:                                               ; preds = %21, %3
  %28 = load %struct.lanai_vcc*, %struct.lanai_vcc** %9, align 8
  %29 = icmp ne %struct.lanai_vcc* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %95

33:                                               ; preds = %27
  %34 = load %struct.atm_qos*, %struct.atm_qos** %8, align 8
  %35 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ATM_NONE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %33
  %41 = load %struct.lanai_vcc*, %struct.lanai_vcc** %9, align 8
  %42 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.atm_vcc*, %struct.atm_vcc** %43, align 8
  %45 = icmp ne %struct.atm_vcc* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load %struct.lanai_vcc*, %struct.lanai_vcc** %9, align 8
  %48 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.atm_vcc*, %struct.atm_vcc** %49, align 8
  %51 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %52 = icmp ne %struct.atm_vcc* %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %138

54:                                               ; preds = %46, %40, %33
  %55 = load %struct.atm_qos*, %struct.atm_qos** %8, align 8
  %56 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ATM_NONE, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %54
  %62 = load %struct.lanai_vcc*, %struct.lanai_vcc** %9, align 8
  %63 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.atm_vcc*, %struct.atm_vcc** %64, align 8
  %66 = icmp ne %struct.atm_vcc* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load %struct.lanai_vcc*, %struct.lanai_vcc** %9, align 8
  %69 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load %struct.atm_vcc*, %struct.atm_vcc** %70, align 8
  %72 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %73 = icmp ne %struct.atm_vcc* %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %138

75:                                               ; preds = %67, %61, %54
  %76 = load %struct.atm_qos*, %struct.atm_qos** %8, align 8
  %77 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ATM_CBR, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %75
  %83 = load %struct.lanai_dev*, %struct.lanai_dev** %5, align 8
  %84 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %83, i32 0, i32 3
  %85 = load %struct.atm_vcc*, %struct.atm_vcc** %84, align 8
  %86 = icmp ne %struct.atm_vcc* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load %struct.lanai_dev*, %struct.lanai_dev** %5, align 8
  %89 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %88, i32 0, i32 3
  %90 = load %struct.atm_vcc*, %struct.atm_vcc** %89, align 8
  %91 = load %struct.atm_vcc*, %struct.atm_vcc** %7, align 8
  %92 = icmp ne %struct.atm_vcc* %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %138

94:                                               ; preds = %87, %82, %75
  br label %95

95:                                               ; preds = %94, %27
  %96 = load %struct.atm_qos*, %struct.atm_qos** %8, align 8
  %97 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @ATM_AAL0, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %137

101:                                              ; preds = %95
  %102 = load %struct.lanai_dev*, %struct.lanai_dev** %5, align 8
  %103 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %137

106:                                              ; preds = %101
  %107 = load %struct.atm_qos*, %struct.atm_qos** %8, align 8
  %108 = getelementptr inbounds %struct.atm_qos, %struct.atm_qos* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @ATM_NONE, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %137

113:                                              ; preds = %106
  %114 = load %struct.lanai_dev*, %struct.lanai_dev** %5, align 8
  %115 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %114, i32 0, i32 2
  %116 = load %struct.lanai_vcc**, %struct.lanai_vcc*** %115, align 8
  %117 = getelementptr inbounds %struct.lanai_vcc*, %struct.lanai_vcc** %116, i64 0
  %118 = load %struct.lanai_vcc*, %struct.lanai_vcc** %117, align 8
  store %struct.lanai_vcc* %118, %struct.lanai_vcc** %10, align 8
  %119 = load %struct.lanai_vcc*, %struct.lanai_vcc** %10, align 8
  %120 = icmp ne %struct.lanai_vcc* %119, null
  br i1 %120, label %121, label %128

121:                                              ; preds = %113
  %122 = load %struct.lanai_vcc*, %struct.lanai_vcc** %10, align 8
  %123 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load %struct.atm_vcc*, %struct.atm_vcc** %124, align 8
  %126 = icmp ne %struct.atm_vcc* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  store i32 0, i32* %4, align 4
  br label %138

128:                                              ; preds = %121, %113
  %129 = load i32, i32* @CONFIG2_VCI0_NORMAL, align 4
  %130 = xor i32 %129, -1
  %131 = load %struct.lanai_dev*, %struct.lanai_dev** %5, align 8
  %132 = getelementptr inbounds %struct.lanai_dev, %struct.lanai_dev* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = and i32 %133, %130
  store i32 %134, i32* %132, align 8
  %135 = load %struct.lanai_dev*, %struct.lanai_dev** %5, align 8
  %136 = call i32 @conf2_write_if_powerup(%struct.lanai_dev* %135)
  br label %137

137:                                              ; preds = %128, %106, %101, %95
  store i32 1, i32* %4, align 4
  br label %138

138:                                              ; preds = %137, %127, %93, %74, %53, %26
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @vci0_is_ok(%struct.lanai_dev*, %struct.atm_qos*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @conf2_write_if_powerup(%struct.lanai_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
