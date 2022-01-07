; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_nmi.c_uv_nmi_setup_hubless_intr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_nmi.c_uv_nmi_setup_hubless_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uv_pch_intr_enable = common dso_local global i64 0, align 8
@uv_pch_intr_now_enabled = common dso_local global i64 0, align 8
@PAD_CFG_DW0_GPP_D_0 = common dso_local global i32 0, align 4
@GPIROUTNMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"UV:NMI: GPP_D_0 interrupt %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @uv_nmi_setup_hubless_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv_nmi_setup_hubless_intr() #0 {
  %1 = load i64, i64* @uv_pch_intr_enable, align 8
  store i64 %1, i64* @uv_pch_intr_now_enabled, align 8
  %2 = load i32, i32* @PAD_CFG_DW0_GPP_D_0, align 4
  %3 = load i32, i32* @GPIROUTNMI, align 4
  %4 = load i64, i64* @uv_pch_intr_now_enabled, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* @GPIROUTNMI, align 4
  br label %9

8:                                                ; preds = %0
  br label %9

9:                                                ; preds = %8, %6
  %10 = phi i32 [ %7, %6 ], [ 0, %8 ]
  %11 = call i32 @uv_init_hubless_pch_io(i32 %2, i32 %3, i32 %10)
  %12 = load i64, i64* @uv_pch_intr_now_enabled, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %16 = call i32 @nmi_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %15)
  ret void
}

declare dso_local i32 @uv_init_hubless_pch_io(i32, i32, i32) #1

declare dso_local i32 @nmi_debug(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
