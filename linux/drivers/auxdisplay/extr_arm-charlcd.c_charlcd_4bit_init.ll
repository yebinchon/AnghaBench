; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_arm-charlcd.c_charlcd_4bit_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_arm-charlcd.c_charlcd_4bit_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charlcd = type { i64 }

@HD_FUNCSET = common dso_local global i32 0, align 4
@HD_FUNCSET_8BIT = common dso_local global i32 0, align 4
@CHAR_COM = common dso_local global i64 0, align 8
@HD_FUNCSET_2_LINES = common dso_local global i32 0, align 4
@HD_DISPCTRL = common dso_local global i32 0, align 4
@HD_DISPCTRL_ON = common dso_local global i32 0, align 4
@HD_ENTRYMODE = common dso_local global i32 0, align 4
@HD_ENTRYMODE_INCREMENT = common dso_local global i32 0, align 4
@HD_CLEAR = common dso_local global i32 0, align 4
@HD_HOME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ARM Linux\00", align 1
@UTS_RELEASE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.charlcd*)* @charlcd_4bit_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @charlcd_4bit_init(%struct.charlcd* %0) #0 {
  %2 = alloca %struct.charlcd*, align 8
  store %struct.charlcd* %0, %struct.charlcd** %2, align 8
  %3 = load i32, i32* @HD_FUNCSET, align 4
  %4 = load i32, i32* @HD_FUNCSET_8BIT, align 4
  %5 = or i32 %3, %4
  %6 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %7 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CHAR_COM, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel(i32 %5, i64 %10)
  %12 = call i32 @msleep(i32 5)
  %13 = load i32, i32* @HD_FUNCSET, align 4
  %14 = load i32, i32* @HD_FUNCSET_8BIT, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %17 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CHAR_COM, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 %15, i64 %20)
  %22 = call i32 @udelay(i32 100)
  %23 = load i32, i32* @HD_FUNCSET, align 4
  %24 = load i32, i32* @HD_FUNCSET_8BIT, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %27 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CHAR_COM, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %25, i64 %30)
  %32 = call i32 @udelay(i32 100)
  %33 = load i32, i32* @HD_FUNCSET, align 4
  %34 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %35 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CHAR_COM, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  %40 = call i32 @udelay(i32 100)
  %41 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %42 = load i32, i32* @HD_FUNCSET, align 4
  %43 = load i32, i32* @HD_FUNCSET_2_LINES, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @charlcd_4bit_command(%struct.charlcd* %41, i32 %44)
  %46 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %47 = load i32, i32* @HD_DISPCTRL, align 4
  %48 = load i32, i32* @HD_DISPCTRL_ON, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @charlcd_4bit_command(%struct.charlcd* %46, i32 %49)
  %51 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %52 = load i32, i32* @HD_ENTRYMODE, align 4
  %53 = load i32, i32* @HD_ENTRYMODE_INCREMENT, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @charlcd_4bit_command(%struct.charlcd* %51, i32 %54)
  %56 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %57 = load i32, i32* @HD_CLEAR, align 4
  %58 = call i32 @charlcd_4bit_command(%struct.charlcd* %56, i32 %57)
  %59 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %60 = load i32, i32* @HD_HOME, align 4
  %61 = call i32 @charlcd_4bit_command(%struct.charlcd* %59, i32 %60)
  %62 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %63 = call i32 @charlcd_4bit_print(%struct.charlcd* %62, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %65 = load i8*, i8** @UTS_RELEASE, align 8
  %66 = call i32 @charlcd_4bit_print(%struct.charlcd* %64, i32 1, i8* %65)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @charlcd_4bit_command(%struct.charlcd*, i32) #1

declare dso_local i32 @charlcd_4bit_print(%struct.charlcd*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
