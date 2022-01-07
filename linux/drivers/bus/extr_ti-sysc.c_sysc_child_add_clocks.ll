; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_child_add_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_child_add_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc = type { i32, i32*, i32 }
%struct.device = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not add child clock %s: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysc*, %struct.device*)* @sysc_child_add_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysc_child_add_clocks(%struct.sysc* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sysc*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sysc* %0, %struct.sysc** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %47, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.sysc*, %struct.sysc** %4, align 8
  %11 = getelementptr inbounds %struct.sysc, %struct.sysc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %8
  %15 = load %struct.sysc*, %struct.sysc** %4, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = load %struct.sysc*, %struct.sysc** %4, align 8
  %18 = getelementptr inbounds %struct.sysc, %struct.sysc* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sysc_child_add_named_clock(%struct.sysc* %15, %struct.device* %16, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %14
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @EEXIST, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load %struct.sysc*, %struct.sysc** %4, align 8
  %34 = getelementptr inbounds %struct.sysc, %struct.sysc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.sysc*, %struct.sysc** %4, align 8
  %37 = getelementptr inbounds %struct.sysc, %struct.sysc* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %51

46:                                               ; preds = %27, %14
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %8

50:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %32
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @sysc_child_add_named_clock(%struct.sysc*, %struct.device*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
