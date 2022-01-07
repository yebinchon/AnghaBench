; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_arm-charlcd.c_charlcd_4bit_read_bf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_arm-charlcd.c_charlcd_4bit_read_bf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charlcd = type { i64, i64, i32 }

@CHAR_RAW_CLEAR = common dso_local global i32 0, align 4
@CHAR_RAW = common dso_local global i64 0, align 8
@CHAR_MASK = common dso_local global i64 0, align 8
@CHAR_COM = common dso_local global i64 0, align 8
@HD_BUSY_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.charlcd*)* @charlcd_4bit_read_bf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @charlcd_4bit_read_bf(%struct.charlcd* %0) #0 {
  %2 = alloca %struct.charlcd*, align 8
  store %struct.charlcd* %0, %struct.charlcd** %2, align 8
  %3 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %4 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp sge i64 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = load i32, i32* @CHAR_RAW_CLEAR, align 4
  %9 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %10 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CHAR_RAW, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel(i32 %8, i64 %13)
  %15 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %16 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %15, i32 0, i32 2
  %17 = call i32 @init_completion(i32* %16)
  %18 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %19 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CHAR_MASK, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 1, i64 %22)
  br label %24

24:                                               ; preds = %7, %1
  %25 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %26 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CHAR_COM, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @readl(i64 %29)
  %31 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %32 = call i32 @charlcd_4bit_read_char(%struct.charlcd* %31)
  %33 = load i32, i32* @HD_BUSY_FLAG, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  ret i32 %37
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @charlcd_4bit_read_char(%struct.charlcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
