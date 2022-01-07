; ModuleID = '/home/carl/AnghaBench/htop/extr_UptimeMeter.c_UptimeMeter_updateValues.c'
source_filename = "/home/carl/AnghaBench/htop/extr_UptimeMeter.c_UptimeMeter_updateValues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%d days(!), \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%d days, \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"1 day, \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%s%02d:%02d:%02d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*, i32)* @UptimeMeter_updateValues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UptimeMeter_updateValues(%struct.TYPE_3__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [32 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = call i32 (...) @Platform_getUptime()
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 (i8*, i32, i8*, ...) @xSnprintf(i8* %17, i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %77

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = srem i32 %21, 60
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sdiv i32 %23, 60
  %25 = srem i32 %24, 60
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sdiv i32 %26, 3600
  %28 = srem i32 %27, 24
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sdiv i32 %29, 86400
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %20
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %41, %20
  %46 = load i32, i32* %11, align 4
  %47 = icmp sgt i32 %46, 100
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %50 = load i32, i32* %11, align 4
  %51 = call i32 (i8*, i32, i8*, ...) @xSnprintf(i8* %49, i32 32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %69

52:                                               ; preds = %45
  %53 = load i32, i32* %11, align 4
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %57 = load i32, i32* %11, align 4
  %58 = call i32 (i8*, i32, i8*, ...) @xSnprintf(i8* %56, i32 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %68

59:                                               ; preds = %52
  %60 = load i32, i32* %11, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %64 = call i32 (i8*, i32, i8*, ...) @xSnprintf(i8* %63, i32 32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %67

65:                                               ; preds = %59
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %66, align 16
  br label %67

67:                                               ; preds = %65, %62
  br label %68

68:                                               ; preds = %67, %55
  br label %69

69:                                               ; preds = %68, %48
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 (i8*, i32, i8*, ...) @xSnprintf(i8* %70, i32 %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %72, i32 %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %69, %16
  ret void
}

declare dso_local i32 @Platform_getUptime(...) #1

declare dso_local i32 @xSnprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
