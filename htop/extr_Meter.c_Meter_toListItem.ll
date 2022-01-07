; ModuleID = '/home/carl/AnghaBench/htop/extr_Meter.c_Meter_toListItem.c'
source_filename = "/home/carl/AnghaBench/htop/extr_Meter.c_Meter_toListItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c" [%s]\00", align 1
@Meter_modes = common dso_local global %struct.TYPE_10__** null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @Meter_toListItem(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [21 x i8], align 16
  %6 = alloca [11 x i8], align 1
  %7 = alloca [51 x i8], align 16
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0
  %15 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @Meter_modes, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %15, i64 %19
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, i32, i8*, i32, ...) @xSnprintf(i8* %14, i32 20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %27

25:                                               ; preds = %2
  %26 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %26, align 16
  br label %27

27:                                               ; preds = %25, %13
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, i32, i8*, i32, ...) @xSnprintf(i8* %33, i32 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %40

38:                                               ; preds = %27
  %39 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0
  store i8 0, i8* %39, align 1
  br label %40

40:                                               ; preds = %38, %32
  %41 = getelementptr inbounds [51 x i8], [51 x i8]* %7, i64 0, i64 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = call i32 @Meter_uiName(%struct.TYPE_8__* %42)
  %44 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0
  %45 = getelementptr inbounds [21 x i8], [21 x i8]* %5, i64 0, i64 0
  %46 = call i32 (i8*, i32, i8*, i32, ...) @xSnprintf(i8* %41, i32 50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %43, i8* %44, i8* %45)
  %47 = getelementptr inbounds [51 x i8], [51 x i8]* %7, i64 0, i64 0
  %48 = call %struct.TYPE_9__* @ListItem_new(i8* %47, i32 0)
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %8, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  ret %struct.TYPE_9__* %52
}

declare dso_local i32 @xSnprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @Meter_uiName(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_9__* @ListItem_new(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
