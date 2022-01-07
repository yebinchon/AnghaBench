; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/usb/host/extr_adm5120-hub.c_admhc_hub_control.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/usb/host/extr_adm5120-hub.c_admhc_hub_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.admhcd = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@ESHUTDOWN = common dso_local global i32 0, align 4
@ADMHC_PS_CPS = common dso_local global i32 0, align 4
@ADMHC_PS_CPP = common dso_local global i32 0, align 4
@ADMHC_PS_CSC = common dso_local global i32 0, align 4
@ADMHC_PS_PESC = common dso_local global i32 0, align 4
@ADMHC_PS_PSSC = common dso_local global i32 0, align 4
@ADMHC_PS_OCIC = common dso_local global i32 0, align 4
@ADMHC_PS_PRSC = common dso_local global i32 0, align 4
@ADMHC_PS_SPS = common dso_local global i32 0, align 4
@ADMHC_PS_SPP = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@ADMHC_RH_OCIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, i32, i32, i32, i8*, i32)* @admhc_hub_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @admhc_hub_control(%struct.usb_hcd* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_hcd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.admhcd*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %18 = call %struct.admhcd* @hcd_to_admhcd(%struct.usb_hcd* %17)
  store %struct.admhcd* %18, %struct.admhcd** %14, align 8
  %19 = load %struct.admhcd*, %struct.admhcd** %14, align 8
  %20 = getelementptr inbounds %struct.admhcd, %struct.admhcd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %22 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %23 = call i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %6
  %30 = load i32, i32* @ESHUTDOWN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %158

32:                                               ; preds = %6
  %33 = load i32, i32* %9, align 4
  switch i32 %33, label %152 [
    i32 143, label %34
    i32 142, label %39
    i32 141, label %92
    i32 140, label %96
    i32 139, label %100
    i32 138, label %115
    i32 137, label %120
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* %10, align 4
  switch i32 %35, label %37 [
    i32 144, label %36
    i32 145, label %36
  ]

36:                                               ; preds = %34, %34
  br label %38

37:                                               ; preds = %34
  br label %153

38:                                               ; preds = %36
  br label %156

39:                                               ; preds = %32
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %39
  br label %153

47:                                               ; preds = %42
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  switch i32 %50, label %90 [
    i32 131, label %51
    i32 128, label %55
    i32 130, label %60
    i32 136, label %65
    i32 135, label %70
    i32 132, label %75
    i32 134, label %80
    i32 133, label %85
  ]

51:                                               ; preds = %47
  %52 = load %struct.admhcd*, %struct.admhcd** %14, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @admhc_port_disable(%struct.admhcd* %52, i32 %53)
  store i32 %54, i32* %16, align 4
  br label %91

55:                                               ; preds = %47
  %56 = load %struct.admhcd*, %struct.admhcd** %14, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @ADMHC_PS_CPS, align 4
  %59 = call i32 @admhc_port_write(%struct.admhcd* %56, i32 %57, i32 %58)
  store i32 %59, i32* %16, align 4
  br label %91

60:                                               ; preds = %47
  %61 = load %struct.admhcd*, %struct.admhcd** %14, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @ADMHC_PS_CPP, align 4
  %64 = call i32 @admhc_port_write(%struct.admhcd* %61, i32 %62, i32 %63)
  store i32 %64, i32* %16, align 4
  br label %91

65:                                               ; preds = %47
  %66 = load %struct.admhcd*, %struct.admhcd** %14, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @ADMHC_PS_CSC, align 4
  %69 = call i32 @admhc_port_write(%struct.admhcd* %66, i32 %67, i32 %68)
  store i32 %69, i32* %16, align 4
  br label %91

70:                                               ; preds = %47
  %71 = load %struct.admhcd*, %struct.admhcd** %14, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @ADMHC_PS_PESC, align 4
  %74 = call i32 @admhc_port_write(%struct.admhcd* %71, i32 %72, i32 %73)
  store i32 %74, i32* %16, align 4
  br label %91

75:                                               ; preds = %47
  %76 = load %struct.admhcd*, %struct.admhcd** %14, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @ADMHC_PS_PSSC, align 4
  %79 = call i32 @admhc_port_write(%struct.admhcd* %76, i32 %77, i32 %78)
  store i32 %79, i32* %16, align 4
  br label %91

80:                                               ; preds = %47
  %81 = load %struct.admhcd*, %struct.admhcd** %14, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @ADMHC_PS_OCIC, align 4
  %84 = call i32 @admhc_port_write(%struct.admhcd* %81, i32 %82, i32 %83)
  store i32 %84, i32* %16, align 4
  br label %91

85:                                               ; preds = %47
  %86 = load %struct.admhcd*, %struct.admhcd** %14, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @ADMHC_PS_PRSC, align 4
  %89 = call i32 @admhc_port_write(%struct.admhcd* %86, i32 %87, i32 %88)
  store i32 %89, i32* %16, align 4
  br label %91

90:                                               ; preds = %47
  br label %153

91:                                               ; preds = %85, %80, %75, %70, %65, %60, %55, %51
  br label %156

92:                                               ; preds = %32
  %93 = load %struct.admhcd*, %struct.admhcd** %14, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = call i32 @admhc_get_hub_descriptor(%struct.admhcd* %93, i8* %94)
  store i32 %95, i32* %16, align 4
  br label %156

96:                                               ; preds = %32
  %97 = load %struct.admhcd*, %struct.admhcd** %14, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = call i32 @admhc_get_hub_status(%struct.admhcd* %97, i8* %98)
  store i32 %99, i32* %16, align 4
  br label %156

100:                                              ; preds = %32
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %103, %100
  br label %153

108:                                              ; preds = %103
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %11, align 4
  %111 = load %struct.admhcd*, %struct.admhcd** %14, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load i8*, i8** %12, align 8
  %114 = call i32 @admhc_get_port_status(%struct.admhcd* %111, i32 %112, i8* %113)
  store i32 %114, i32* %16, align 4
  br label %156

115:                                              ; preds = %32
  %116 = load i32, i32* %10, align 4
  switch i32 %116, label %118 [
    i32 144, label %117
    i32 145, label %117
  ]

117:                                              ; preds = %115, %115
  br label %119

118:                                              ; preds = %115
  br label %153

119:                                              ; preds = %117
  br label %156

120:                                              ; preds = %32
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %15, align 4
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123, %120
  br label %153

128:                                              ; preds = %123
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %10, align 4
  switch i32 %131, label %150 [
    i32 131, label %132
    i32 129, label %136
    i32 128, label %140
    i32 130, label %145
  ]

132:                                              ; preds = %128
  %133 = load %struct.admhcd*, %struct.admhcd** %14, align 8
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @admhc_port_enable(%struct.admhcd* %133, i32 %134)
  store i32 %135, i32* %16, align 4
  br label %151

136:                                              ; preds = %128
  %137 = load %struct.admhcd*, %struct.admhcd** %14, align 8
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @admhc_port_reset(%struct.admhcd* %137, i32 %138)
  store i32 %139, i32* %16, align 4
  br label %151

140:                                              ; preds = %128
  %141 = load %struct.admhcd*, %struct.admhcd** %14, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* @ADMHC_PS_SPS, align 4
  %144 = call i32 @admhc_port_write(%struct.admhcd* %141, i32 %142, i32 %143)
  store i32 %144, i32* %16, align 4
  br label %151

145:                                              ; preds = %128
  %146 = load %struct.admhcd*, %struct.admhcd** %14, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* @ADMHC_PS_SPP, align 4
  %149 = call i32 @admhc_port_write(%struct.admhcd* %146, i32 %147, i32 %148)
  store i32 %149, i32* %16, align 4
  br label %151

150:                                              ; preds = %128
  br label %153

151:                                              ; preds = %145, %140, %136, %132
  br label %156

152:                                              ; preds = %32
  br label %153

153:                                              ; preds = %152, %150, %127, %118, %107, %90, %46, %37
  %154 = load i32, i32* @EPIPE, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %16, align 4
  br label %156

156:                                              ; preds = %153, %151, %119, %108, %96, %92, %91, %38
  %157 = load i32, i32* %16, align 4
  store i32 %157, i32* %7, align 4
  br label %158

158:                                              ; preds = %156, %29
  %159 = load i32, i32* %7, align 4
  ret i32 %159
}

declare dso_local %struct.admhcd* @hcd_to_admhcd(%struct.usb_hcd*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd*) #1

declare dso_local i32 @admhc_port_disable(%struct.admhcd*, i32) #1

declare dso_local i32 @admhc_port_write(%struct.admhcd*, i32, i32) #1

declare dso_local i32 @admhc_get_hub_descriptor(%struct.admhcd*, i8*) #1

declare dso_local i32 @admhc_get_hub_status(%struct.admhcd*, i8*) #1

declare dso_local i32 @admhc_get_port_status(%struct.admhcd*, i32, i8*) #1

declare dso_local i32 @admhc_port_enable(%struct.admhcd*, i32) #1

declare dso_local i32 @admhc_port_reset(%struct.admhcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
