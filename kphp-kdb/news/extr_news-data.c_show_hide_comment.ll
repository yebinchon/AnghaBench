; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_show_hide_comment.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_show_hide_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_5__* }

@now = common dso_local global i64 0, align 8
@min_logevent_time = common dso_local global i64 0, align 8
@COMM_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @show_hide_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_hide_comment(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i64, i64* @now, align 8
  %16 = load i64, i64* @min_logevent_time, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %77

19:                                               ; preds = %5
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @check_obj(i32 %20, i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load i32, i32* @COMM_MODE, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @valid_type(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28, %25, %19
  store i32 -1, i32* %6, align 4
  br label %77

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call %struct.TYPE_4__* @get_place_f(i32 %34, i32 %35, i32 %36, i32 0)
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %12, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %77

41:                                               ; preds = %33
  store i32 0, i32* %14, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %13, align 8
  br label %45

45:                                               ; preds = %71, %41
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %48 = bitcast %struct.TYPE_4__* %47 to %struct.TYPE_5__*
  %49 = icmp ne %struct.TYPE_5__* %46, %48
  br i1 %49, label %50, label %75

50:                                               ; preds = %45
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %50
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %11, align 4
  %61 = xor i32 %59, %60
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = xor i32 %68, -2147483648
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %63, %56, %50
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  store %struct.TYPE_5__* %74, %struct.TYPE_5__** %13, align 8
  br label %45

75:                                               ; preds = %45
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %75, %40, %32, %18
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @check_obj(i32, i32, i32) #1

declare dso_local i32 @valid_type(i32) #1

declare dso_local %struct.TYPE_4__* @get_place_f(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
