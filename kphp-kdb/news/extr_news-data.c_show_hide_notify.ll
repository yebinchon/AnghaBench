; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_show_hide_notify.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_show_hide_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@.str = private unnamed_addr constant [88 x i8] c"show_hide_notify: type = %d, owner = %d, place = %d, item = %d, shown = %d, time = %lf\0A\00", align 1
@now = common dso_local global i64 0, align 8
@min_logevent_time = common dso_local global i64 0, align 8
@NOTIFY_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"V = %p, time = %lf\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @show_hide_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_hide_notify(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i64 @time(i32 0)
  %21 = sitofp i64 %20 to double
  %22 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, double %21)
  %23 = load i64, i64* @now, align 8
  %24 = load i64, i64* @min_logevent_time, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %78

27:                                               ; preds = %5
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @check_obj(i32 %28, i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i32, i32* @NOTIFY_MODE, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @valid_type(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36, %33, %27
  store i32 -1, i32* %6, align 4
  br label %78

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @get_place_f(i32 %42, i32 %43, i32 %44, i32 0)
  %46 = inttoptr i64 %45 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %12, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %48 = call i64 @time(i32 0)
  %49 = sitofp i64 %48 to double
  %50 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %47, double %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %52 = icmp ne %struct.TYPE_6__* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %78

54:                                               ; preds = %41
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  store %struct.TYPE_5__* %57, %struct.TYPE_5__** %13, align 8
  store i32 0, i32* %14, align 4
  br label %58

58:                                               ; preds = %63, %54
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %61 = bitcast %struct.TYPE_6__* %60 to %struct.TYPE_5__*
  %62 = icmp ne %struct.TYPE_5__* %59, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i64 @show_hide_notify_userplace(%struct.TYPE_5__* %64, i32 0, %struct.TYPE_6__* %65, i32 %66, i32 %67)
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %14, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  store %struct.TYPE_5__* %75, %struct.TYPE_5__** %13, align 8
  br label %58

76:                                               ; preds = %58
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %76, %53, %40, %26
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i64 @time(i32) #1

declare dso_local i32 @check_obj(i32, i32, i32) #1

declare dso_local i32 @valid_type(i32) #1

declare dso_local i64 @get_place_f(i32, i32, i32, i32) #1

declare dso_local i64 @show_hide_notify_userplace(%struct.TYPE_5__*, i32, %struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
