; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_mips.c_bcma_core_mips_print_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_driver_mips.c_bcma_core_mips_print_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@bcma_core_mips_print_irq.irq_name = internal global [7 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"2(S)\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" %s%c\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"core 0x%04x, irq:%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcma_device*, i32)* @bcma_core_mips_print_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcma_core_mips_print_irq(%struct.bcma_device* %0, i32 %1) #0 {
  %3 = alloca %struct.bcma_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [25 x i8], align 16
  %7 = alloca i8*, align 8
  store %struct.bcma_device* %0, %struct.bcma_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds [25 x i8], [25 x i8]* %6, i64 0, i64 0
  store i8* %8, i8** %7, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %29, %2
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @bcma_core_mips_print_irq.irq_name, i64 0, i64 0))
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %9
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [7 x i8*], [7 x i8*]* @bcma_core_mips_print_irq.irq_name, i64 0, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 42, i32 32
  %24 = trunc i32 %23 to i8
  %25 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %18, i8 signext %24)
  %26 = load i8*, i8** %7, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %7, align 8
  br label %29

29:                                               ; preds = %13
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %9

32:                                               ; preds = %9
  %33 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %34 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bcma_device*, %struct.bcma_device** %3, align 8
  %37 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds [25 x i8], [25 x i8]* %6, i64 0, i64 0
  %41 = call i32 @bcma_debug(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %39, i8* %40)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8 signext) #1

declare dso_local i32 @bcma_debug(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
