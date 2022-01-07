; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_zeus.c_zeus_get_pcb_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-pxa/extr_zeus.c_zeus_get_pcb_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"pcb info\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Can't request pcb info %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Can't read pcb info %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Zeus PCB version %d issue %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i8*)* @zeus_get_pcb_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zeus_get_pcb_info(%struct.i2c_client* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %52, %4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %55

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %9, align 4
  %18 = add i32 %16, %17
  %19 = add i32 %18, 8
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i64 @gpio_request(i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %52

28:                                               ; preds = %15
  %29 = load i32, i32* %11, align 4
  %30 = call i64 @gpio_direction_input(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @gpio_free(i32 %37)
  br label %52

39:                                               ; preds = %28
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @gpio_get_value(i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %9, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @gpio_free(i32 %50)
  br label %52

52:                                               ; preds = %39, %32, %23
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %12

55:                                               ; preds = %12
  %56 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 0
  %58 = load i32, i32* %10, align 4
  %59 = ashr i32 %58, 4
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %60, 15
  %62 = call i32 @dev_info(i32* %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %59, i32 %61)
  ret i32 0
}

declare dso_local i64 @gpio_request(i32, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i64 @gpio_direction_input(i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
