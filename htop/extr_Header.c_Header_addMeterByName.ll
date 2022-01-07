; ModuleID = '/home/carl/AnghaBench/htop/extr_Header.c_Header_addMeterByName.c'
source_filename = "/home/carl/AnghaBench/htop/extr_Header.c_Header_addMeterByName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32** }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"(%10d)\00", align 1
@TEXT_METERMODE = common dso_local global i32 0, align 4
@Platform_meterTypes = common dso_local global %struct.TYPE_9__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Header_addMeterByName(%struct.TYPE_11__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__**, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load i32**, i32*** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %7, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i8* @strchr(i8* %21, i8 signext 40)
  store i8* %22, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @sscanf(i8* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %30, %25
  %32 = load i8*, i8** %8, align 8
  store i8 0, i8* %32, align 1
  br label %33

33:                                               ; preds = %31, %3
  %34 = load i32, i32* @TEXT_METERMODE, align 4
  store i32 %34, i32* %11, align 4
  %35 = load %struct.TYPE_9__**, %struct.TYPE_9__*** @Platform_meterTypes, align 8
  store %struct.TYPE_9__** %35, %struct.TYPE_9__*** %12, align 8
  br label %36

36:                                               ; preds = %63, %33
  %37 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = icmp ne %struct.TYPE_9__* %38, null
  br i1 %39, label %40, label %66

40:                                               ; preds = %36
  %41 = load i8*, i8** %5, align 8
  %42 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @String_eq(i8* %41, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %40
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = call %struct.TYPE_10__* @Meter_new(i32 %51, i32 %52, %struct.TYPE_9__* %54)
  store %struct.TYPE_10__* %55, %struct.TYPE_10__** %13, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %58 = call i32 @Vector_add(i32* %56, %struct.TYPE_10__* %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %11, align 4
  br label %66

62:                                               ; preds = %40
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %64, i32 1
  store %struct.TYPE_9__** %65, %struct.TYPE_9__*** %12, align 8
  br label %36

66:                                               ; preds = %48, %36
  %67 = load i32, i32* %11, align 4
  ret i32 %67
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i64 @String_eq(i8*, i32) #1

declare dso_local %struct.TYPE_10__* @Meter_new(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @Vector_add(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
