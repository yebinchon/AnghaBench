; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/usb/host/extr_adm5120-hub.c_admhc_hub_status_data.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/usb/host/extr_adm5120-hub.c_admhc_hub_status_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.admhcd = type { i32, i32 }

@ADMHC_RH_LPSC = common dso_local global i32 0, align 4
@ADMHC_RH_OCIC = common dso_local global i32 0, align 4
@ADMHC_PS_CCS = common dso_local global i32 0, align 4
@ADMHC_PS_CSC = common dso_local global i32 0, align 4
@ADMHC_PS_PESC = common dso_local global i32 0, align 4
@ADMHC_PS_PSSC = common dso_local global i32 0, align 4
@ADMHC_PS_OCIC = common dso_local global i32 0, align 4
@ADMHC_PS_PRSC = common dso_local global i32 0, align 4
@HCD_FLAG_POLL_RH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, i8*)* @admhc_hub_status_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @admhc_hub_status_data(%struct.usb_hcd* %0, i8* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.admhcd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %13 = call %struct.admhcd* @hcd_to_admhcd(%struct.usb_hcd* %12)
  store %struct.admhcd* %13, %struct.admhcd** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.admhcd*, %struct.admhcd** %5, align 8
  %15 = getelementptr inbounds %struct.admhcd, %struct.admhcd* %14, i32 0, i32 1
  %16 = load i64, i64* %10, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %19 = call i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %120

22:                                               ; preds = %2
  %23 = load %struct.admhcd*, %struct.admhcd** %5, align 8
  %24 = call i32 @admhc_read_rhdesc(%struct.admhcd* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @ADMHC_RH_LPSC, align 4
  %27 = load i32, i32* @ADMHC_RH_OCIC, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  store i32 1, i32* %7, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  store i8 1, i8* %33, align 1
  br label %37

34:                                               ; preds = %22
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  store i8 0, i8* %36, align 1
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.admhcd*, %struct.admhcd** %5, align 8
  %39 = getelementptr inbounds %struct.admhcd, %struct.admhcd* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 7
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  store i8 0, i8* %44, align 1
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %42, %37
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %100, %47
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.admhcd*, %struct.admhcd** %5, align 8
  %51 = getelementptr inbounds %struct.admhcd, %struct.admhcd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %103

54:                                               ; preds = %48
  %55 = load %struct.admhcd*, %struct.admhcd** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @admhc_read_portstatus(%struct.admhcd* %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @ADMHC_PS_CCS, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @ADMHC_PS_CSC, align 4
  %65 = load i32, i32* @ADMHC_PS_PESC, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @ADMHC_PS_PSSC, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @ADMHC_PS_OCIC, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @ADMHC_PS_PRSC, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %63, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %54
  store i32 1, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 7
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  %81 = shl i32 1, %80
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = or i32 %85, %81
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %83, align 1
  br label %98

88:                                               ; preds = %75
  %89 = load i32, i32* %6, align 4
  %90 = sub nsw i32 %89, 7
  %91 = shl i32 1, %90
  %92 = load i8*, i8** %4, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = or i32 %95, %91
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %93, align 1
  br label %98

98:                                               ; preds = %88, %78
  br label %99

99:                                               ; preds = %98, %54
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %48

103:                                              ; preds = %48
  %104 = load %struct.admhcd*, %struct.admhcd** %5, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i64 @admhc_root_hub_state_changes(%struct.admhcd* %104, i32 %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %103
  %110 = load i32, i32* @HCD_FLAG_POLL_RH, align 4
  %111 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %112 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %111, i32 0, i32 0
  %113 = call i32 @set_bit(i32 %110, i32* %112)
  br label %119

114:                                              ; preds = %103
  %115 = load i32, i32* @HCD_FLAG_POLL_RH, align 4
  %116 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %117 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %116, i32 0, i32 0
  %118 = call i32 @clear_bit(i32 %115, i32* %117)
  br label %119

119:                                              ; preds = %114, %109
  br label %120

120:                                              ; preds = %119, %21
  %121 = load %struct.admhcd*, %struct.admhcd** %5, align 8
  %122 = getelementptr inbounds %struct.admhcd, %struct.admhcd* %121, i32 0, i32 1
  %123 = load i64, i64* %10, align 8
  %124 = call i32 @spin_unlock_irqrestore(i32* %122, i64 %123)
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = load i32, i32* %8, align 4
  br label %130

129:                                              ; preds = %120
  br label %130

130:                                              ; preds = %129, %127
  %131 = phi i32 [ %128, %127 ], [ 0, %129 ]
  ret i32 %131
}

declare dso_local %struct.admhcd* @hcd_to_admhcd(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @HCD_HW_ACCESSIBLE(%struct.usb_hcd*) #1

declare dso_local i32 @admhc_read_rhdesc(%struct.admhcd*) #1

declare dso_local i32 @admhc_read_portstatus(%struct.admhcd*, i32) #1

declare dso_local i64 @admhc_root_hub_state_changes(%struct.admhcd*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
