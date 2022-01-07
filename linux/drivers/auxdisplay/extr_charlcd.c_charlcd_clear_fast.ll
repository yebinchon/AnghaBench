; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_charlcd.c_charlcd_clear_fast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_charlcd.c_charlcd_clear_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charlcd = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.charlcd*, i8)*, i32 (%struct.charlcd*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.charlcd*)* @charlcd_clear_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @charlcd_clear_fast(%struct.charlcd* %0) #0 {
  %2 = alloca %struct.charlcd*, align 8
  %3 = alloca i32, align 4
  store %struct.charlcd* %0, %struct.charlcd** %2, align 8
  %4 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %5 = call i32 @charlcd_home(%struct.charlcd* %4)
  %6 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %7 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32 (%struct.charlcd*)*, i32 (%struct.charlcd*)** %9, align 8
  %11 = icmp ne i32 (%struct.charlcd*)* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %14 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32 (%struct.charlcd*)*, i32 (%struct.charlcd*)** %16, align 8
  %18 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %19 = call i32 %17(%struct.charlcd* %18)
  br label %44

20:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %40, %20
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %24 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @min(i32 2, i32 %25)
  %27 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %28 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 %26, %29
  %31 = icmp slt i32 %22, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %21
  %33 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %34 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.charlcd*, i8)*, i32 (%struct.charlcd*, i8)** %36, align 8
  %38 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %39 = call i32 %37(%struct.charlcd* %38, i8 signext 32)
  br label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %21

43:                                               ; preds = %21
  br label %44

44:                                               ; preds = %43, %12
  %45 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %46 = call i32 @charlcd_home(%struct.charlcd* %45)
  ret void
}

declare dso_local i32 @charlcd_home(%struct.charlcd*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
