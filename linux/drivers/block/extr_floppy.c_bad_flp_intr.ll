; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_bad_flp_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_bad_flp_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 (i32)* }
%struct.TYPE_9__ = type { i32 }

@probing = common dso_local global i64 0, align 8
@DRS = common dso_local global %struct.TYPE_11__* null, align 8
@errors = common dso_local global i32* null, align 8
@DRWE = common dso_local global %struct.TYPE_10__* null, align 8
@DP = common dso_local global %struct.TYPE_12__* null, align 8
@cont = common dso_local global %struct.TYPE_8__* null, align 8
@FDCS = common dso_local global %struct.TYPE_9__* null, align 8
@NEED_2_RECAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @bad_flp_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bad_flp_intr() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @probing, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %0
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DRS, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 4
  %9 = call i32 (...) @next_valid_format()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  br label %55

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %12, %0
  %14 = load i32*, i32** @errors, align 8
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  store i32 %16, i32* %1, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** @DRWE, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @INFBOUND(i32 %19, i32 %20)
  %22 = load i32, i32* %1, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** @DP, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %22, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %13
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cont, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32 (i32)*, i32 (i32)** %30, align 8
  %32 = call i32 %31(i32 0)
  br label %33

33:                                               ; preds = %28, %13
  %34 = load i32, i32* %1, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** @DP, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %34, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** @FDCS, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  br label %55

43:                                               ; preds = %33
  %44 = load i32, i32* %1, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** @DP, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %44, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* @NEED_2_RECAL, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DRS, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %43
  br label %55

55:                                               ; preds = %11, %54, %40
  ret void
}

declare dso_local i32 @next_valid_format(...) #1

declare dso_local i32 @INFBOUND(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
