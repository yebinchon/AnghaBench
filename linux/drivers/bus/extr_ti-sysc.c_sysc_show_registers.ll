; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_show_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_show_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc = type { i32, i32, i32 }

@SYSC_MAX_REGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%llx:%x%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysc*)* @sysc_show_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysc_show_registers(%struct.sysc* %0) #0 {
  %2 = alloca %struct.sysc*, align 8
  %3 = alloca [128 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.sysc* %0, %struct.sysc** %2, align 8
  %6 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  store i8* %6, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %19, %1
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @SYSC_MAX_REGS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load %struct.sysc*, %struct.sysc** %2, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @sysc_show_reg(%struct.sysc* %12, i8* %13, i32 %14)
  %16 = load i8*, i8** %4, align 8
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %4, align 8
  br label %19

19:                                               ; preds = %11
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %7

22:                                               ; preds = %7
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.sysc*, %struct.sysc** %2, align 8
  %25 = call i32 @sysc_show_rev(i8* %23, %struct.sysc* %24)
  %26 = load i8*, i8** %4, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %4, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load %struct.sysc*, %struct.sysc** %2, align 8
  %31 = call i32 @sysc_show_name(i8* %29, %struct.sysc* %30)
  %32 = load i8*, i8** %4, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %4, align 8
  %35 = load %struct.sysc*, %struct.sysc** %2, align 8
  %36 = getelementptr inbounds %struct.sysc, %struct.sysc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sysc*, %struct.sysc** %2, align 8
  %39 = getelementptr inbounds %struct.sysc, %struct.sysc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sysc*, %struct.sysc** %2, align 8
  %42 = getelementptr inbounds %struct.sysc, %struct.sysc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %45 = call i32 @dev_dbg(i32 %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43, i8* %44)
  ret void
}

declare dso_local i32 @sysc_show_reg(%struct.sysc*, i8*, i32) #1

declare dso_local i32 @sysc_show_rev(i8*, %struct.sysc*) #1

declare dso_local i32 @sysc_show_name(i8*, %struct.sysc*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
