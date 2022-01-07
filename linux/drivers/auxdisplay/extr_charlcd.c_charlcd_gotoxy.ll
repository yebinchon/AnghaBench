; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_charlcd.c_charlcd_gotoxy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_charlcd.c_charlcd_gotoxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charlcd = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.charlcd*, i32)* }
%struct.charlcd_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@LCD_CMD_SET_DDRAM_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.charlcd*)* @charlcd_gotoxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @charlcd_gotoxy(%struct.charlcd* %0) #0 {
  %2 = alloca %struct.charlcd*, align 8
  %3 = alloca %struct.charlcd_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.charlcd* %0, %struct.charlcd** %2, align 8
  %5 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %6 = call %struct.charlcd_priv* @charlcd_to_priv(%struct.charlcd* %5)
  store %struct.charlcd_priv* %6, %struct.charlcd_priv** %3, align 8
  %7 = load %struct.charlcd_priv*, %struct.charlcd_priv** %3, align 8
  %8 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %12 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.charlcd_priv*, %struct.charlcd_priv** %3, align 8
  %17 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %21 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  %24 = and i32 %19, %23
  br label %30

25:                                               ; preds = %1
  %26 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %27 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  br label %30

30:                                               ; preds = %25, %15
  %31 = phi i32 [ %24, %15 ], [ %29, %25 ]
  store i32 %31, i32* %4, align 4
  %32 = load %struct.charlcd_priv*, %struct.charlcd_priv** %3, align 8
  %33 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %40 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = add i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %38, %30
  %45 = load %struct.charlcd_priv*, %struct.charlcd_priv** %3, align 8
  %46 = getelementptr inbounds %struct.charlcd_priv, %struct.charlcd_priv* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 2
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %53 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = add i32 %55, %54
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %51, %44
  %58 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %59 = getelementptr inbounds %struct.charlcd, %struct.charlcd* %58, i32 0, i32 2
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32 (%struct.charlcd*, i32)*, i32 (%struct.charlcd*, i32)** %61, align 8
  %63 = load %struct.charlcd*, %struct.charlcd** %2, align 8
  %64 = load i32, i32* @LCD_CMD_SET_DDRAM_ADDR, align 4
  %65 = load i32, i32* %4, align 4
  %66 = or i32 %64, %65
  %67 = call i32 %62(%struct.charlcd* %63, i32 %66)
  ret void
}

declare dso_local %struct.charlcd_priv* @charlcd_to_priv(%struct.charlcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
