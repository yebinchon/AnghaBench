; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_4xx.c_ibm4xx_denali_get_cs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_4xx.c_ibm4xx_denali_get_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"amcc,sequoia\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"amcc,rainier\00", align 1
@DDR0_10 = common dso_local global i32 0, align 4
@DDR_CS_MAP = common dso_local global i32 0, align 4
@DDR_CS_MAP_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ibm4xx_denali_get_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibm4xx_denali_get_cs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i8* @finddevice(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %27

10:                                               ; preds = %0
  %11 = load i8*, i8** %2, align 8
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %13 = call i64 @getprop(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %12, i32 64)
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %27

16:                                               ; preds = %10
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 63
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %16
  store i32 1, i32* %1, align 4
  br label %49

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %15, %9
  %28 = load i32, i32* @DDR0_10, align 4
  %29 = call i32 @SDRAM0_READ(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @DDR_CS_MAP, align 4
  %32 = load i32, i32* @DDR_CS_MAP_SHIFT, align 4
  %33 = call i32 @DDR_GET_VAL(i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %44, %27
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i32, i32* %4, align 4
  %46 = ashr i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %34

47:                                               ; preds = %34
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %1, align 4
  br label %49

49:                                               ; preds = %47, %25
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i8* @finddevice(i8*) #1

declare dso_local i64 @getprop(i8*, i8*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @SDRAM0_READ(i32) #1

declare dso_local i32 @DDR_GET_VAL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
