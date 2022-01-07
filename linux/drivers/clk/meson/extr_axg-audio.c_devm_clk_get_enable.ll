; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_axg-audio.c_devm_clk_get_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_axg-audio.c_devm_clk_get_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.clk = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"failed to get %s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"failed to enable %s\00", align 1
@clk_disable_unprepare = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to add reset action on %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @devm_clk_get_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devm_clk_get_enable(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.clk* @devm_clk_get(%struct.device* %8, i8* %9)
  store %struct.clk* %10, %struct.clk** %6, align 8
  %11 = load %struct.clk*, %struct.clk** %6, align 8
  %12 = call i64 @IS_ERR(%struct.clk* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load %struct.clk*, %struct.clk** %6, align 8
  %16 = call i32 @PTR_ERR(%struct.clk* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @EPROBE_DEFER, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp ne i32 %17, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %21, %14
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %51

27:                                               ; preds = %2
  %28 = load %struct.clk*, %struct.clk** %6, align 8
  %29 = call i32 @clk_prepare_enable(%struct.clk* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %51

37:                                               ; preds = %27
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load i64, i64* @clk_disable_unprepare, align 8
  %40 = inttoptr i64 %39 to void (i8*)*
  %41 = load %struct.clk*, %struct.clk** %6, align 8
  %42 = call i32 @devm_add_action_or_reset(%struct.device* %38, void (i8*)* %40, %struct.clk* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %45, %32, %25
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.clk* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.device*, void (i8*)*, %struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
