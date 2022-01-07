; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_date.c_git__date_rfc2822_fmt.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_date.c_git__date_rfc2822_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }
%struct.tm = type { i64, i64, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [44 x i8] c"%.3s, %u %.3s %.4u %02u:%02u:%02u %+03d%02d\00", align 1
@weekday_names = common dso_local global i32* null, align 8
@month_names = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git__date_rfc2822_fmt(i8* %0, i64 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tm, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br label %16

16:                                               ; preds = %13, %3
  %17 = phi i1 [ false, %3 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %25, 60
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %22, %27
  store i64 %28, i64* %10, align 8
  %29 = call i32* @p_gmtime_r(i64* %10, %struct.tm* %9)
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %75

32:                                               ; preds = %16
  %33 = load i8*, i8** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i32*, i32** @weekday_names, align 8
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** @month_names, align 8
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1900
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sdiv i32 %58, 60
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = srem i32 %62, 60
  %64 = call i32 @p_snprintf(i8* %33, i64 %34, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %41, i32 %46, i64 %49, i32 %51, i32 %53, i32 %55, i32 %59, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %32
  %68 = load i32, i32* %8, align 4
  %69 = load i64, i64* %6, align 8
  %70 = trunc i64 %69 to i32
  %71 = sub nsw i32 %70, 1
  %72 = icmp sgt i32 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67, %32
  store i32 -1, i32* %4, align 4
  br label %75

74:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %73, %31
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @p_gmtime_r(i64*, %struct.tm*) #1

declare dso_local i32 @p_snprintf(i8*, i64, i8*, i32, i32, i32, i64, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
