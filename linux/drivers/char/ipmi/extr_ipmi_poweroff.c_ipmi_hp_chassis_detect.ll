; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_poweroff.c_ipmi_hp_chassis_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_poweroff.c_ipmi_hp_chassis_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_user = type { i32 }

@mfg_id = common dso_local global i64 0, align 8
@HP_IANA_MFR_ID = common dso_local global i64 0, align 8
@prod_id = common dso_local global i64 0, align 8
@HP_BMC_PROD_ID = common dso_local global i64 0, align 8
@ipmi_version = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_user*)* @ipmi_hp_chassis_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmi_hp_chassis_detect(%struct.ipmi_user* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipmi_user*, align 8
  store %struct.ipmi_user* %0, %struct.ipmi_user** %3, align 8
  %4 = load i64, i64* @mfg_id, align 8
  %5 = load i64, i64* @HP_IANA_MFR_ID, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load i64, i64* @prod_id, align 8
  %9 = load i64, i64* @HP_BMC_PROD_ID, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i32, i32* @ipmi_version, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %16

15:                                               ; preds = %11, %7, %1
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %15, %14
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
