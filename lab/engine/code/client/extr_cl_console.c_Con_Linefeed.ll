; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_console.c_Con_Linefeed.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_console.c_Con_Linefeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32*, i32, i64, i64* }
%struct.TYPE_4__ = type { i64 }

@con = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@NUM_CON_TIMES = common dso_local global i64 0, align 8
@cls = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@COLOR_WHITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Con_Linefeed(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @con, i32 0, i32 0), align 8
  %5 = icmp uge i64 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @con, i32 0, i32 6), align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @con, i32 0, i32 0), align 8
  %12 = load i64, i64* @NUM_CON_TIMES, align 8
  %13 = urem i64 %11, %12
  %14 = getelementptr inbounds i64, i64* %10, i64 %13
  store i64 0, i64* %14, align 8
  br label %22

15:                                               ; preds = %6
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cls, i32 0, i32 0), align 8
  %17 = load i64*, i64** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @con, i32 0, i32 6), align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @con, i32 0, i32 0), align 8
  %19 = load i64, i64* @NUM_CON_TIMES, align 8
  %20 = urem i64 %18, %19
  %21 = getelementptr inbounds i64, i64* %17, i64 %20
  store i64 %16, i64* %21, align 8
  br label %22

22:                                               ; preds = %15, %9
  br label %23

23:                                               ; preds = %22, %1
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @con, i32 0, i32 5), align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @con, i32 0, i32 1), align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @con, i32 0, i32 0), align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @con, i32 0, i32 1), align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @con, i32 0, i32 1), align 8
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @con, i32 0, i32 0), align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @con, i32 0, i32 0), align 8
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %54, %30
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @con, i32 0, i32 2), align 8
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %33
  %38 = load i32, i32* @COLOR_WHITE, align 4
  %39 = call i32 @ColorIndex(i32 %38)
  %40 = shl i32 %39, 8
  %41 = or i32 %40, 32
  %42 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @con, i32 0, i32 3), align 8
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @con, i32 0, i32 0), align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @con, i32 0, i32 4), align 8
  %45 = sext i32 %44 to i64
  %46 = urem i64 %43, %45
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @con, i32 0, i32 2), align 8
  %48 = sext i32 %47 to i64
  %49 = mul i64 %46, %48
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %49, %51
  %53 = getelementptr inbounds i32, i32* %42, i64 %52
  store i32 %41, i32* %53, align 4
  br label %54

54:                                               ; preds = %37
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %33

57:                                               ; preds = %33
  ret void
}

declare dso_local i32 @ColorIndex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
