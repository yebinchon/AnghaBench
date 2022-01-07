; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona-setup.c_ccu_policy_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-kona-setup.c_ccu_policy_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccu_policy = type { %struct.bcm_policy_ctl, %struct.bcm_lvm_en }
%struct.bcm_policy_ctl = type { i32, i32, i32 }
%struct.bcm_lvm_en = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"policy enable\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"policy control GO\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"policy control ATL\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"policy control AC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccu_policy*, i8*)* @ccu_policy_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccu_policy_valid(%struct.ccu_policy* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccu_policy*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bcm_lvm_en*, align 8
  %7 = alloca %struct.bcm_policy_ctl*, align 8
  store %struct.ccu_policy* %0, %struct.ccu_policy** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.ccu_policy*, %struct.ccu_policy** %4, align 8
  %9 = getelementptr inbounds %struct.ccu_policy, %struct.ccu_policy* %8, i32 0, i32 1
  store %struct.bcm_lvm_en* %9, %struct.bcm_lvm_en** %6, align 8
  %10 = load %struct.bcm_lvm_en*, %struct.bcm_lvm_en** %6, align 8
  %11 = getelementptr inbounds %struct.bcm_lvm_en, %struct.bcm_lvm_en* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @bit_posn_valid(i32 %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

17:                                               ; preds = %2
  %18 = load %struct.ccu_policy*, %struct.ccu_policy** %4, align 8
  %19 = getelementptr inbounds %struct.ccu_policy, %struct.ccu_policy* %18, i32 0, i32 0
  store %struct.bcm_policy_ctl* %19, %struct.bcm_policy_ctl** %7, align 8
  %20 = load %struct.bcm_policy_ctl*, %struct.bcm_policy_ctl** %7, align 8
  %21 = getelementptr inbounds %struct.bcm_policy_ctl, %struct.bcm_policy_ctl* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @bit_posn_valid(i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %44

27:                                               ; preds = %17
  %28 = load %struct.bcm_policy_ctl*, %struct.bcm_policy_ctl** %7, align 8
  %29 = getelementptr inbounds %struct.bcm_policy_ctl, %struct.bcm_policy_ctl* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @bit_posn_valid(i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %44

35:                                               ; preds = %27
  %36 = load %struct.bcm_policy_ctl*, %struct.bcm_policy_ctl** %7, align 8
  %37 = getelementptr inbounds %struct.bcm_policy_ctl, %struct.bcm_policy_ctl* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @bit_posn_valid(i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %44

43:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %42, %34, %26, %16
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @bit_posn_valid(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
