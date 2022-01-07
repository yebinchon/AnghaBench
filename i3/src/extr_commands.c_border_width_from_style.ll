; ModuleID = '/home/carl/AnghaBench/i3/src/extr_commands.c_border_width_from_style.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_commands.c_border_width_from_style.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64, i32 }

@BS_NONE = common dso_local global i64 0, align 8
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@BS_NORMAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32*)* @border_width_from_style to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @border_width_from_style(i64 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @BS_NONE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %49

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = icmp sge i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i64, i64* %6, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @logical_px(i32 %18)
  store i32 %19, i32* %4, align 4
  br label %49

20:                                               ; preds = %13
  %21 = load i32*, i32** %7, align 8
  %22 = call i32* @con_inside_floating(i32* %21)
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  store i32 %32, i32* %4, align 4
  br label %49

33:                                               ; preds = %27, %20
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 3), align 8
  store i32 %41, i32* %4, align 4
  br label %49

42:                                               ; preds = %36, %33
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @BS_NORMAL, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 2, i32 1
  %48 = call i32 @logical_px(i32 %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %42, %40, %31, %16, %12
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @logical_px(i32) #1

declare dso_local i32* @con_inside_floating(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
