; ModuleID = '/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-data.c_bayes_local_get_count.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-data.c_bayes_local_get_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@SPAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bayes_local_get_count(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 4
  %19 = bitcast i8* %18 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %9, align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %80

23:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %49, %23
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, 1
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %10, align 4
  %34 = sub nsw i32 %32, %33
  %35 = ashr i32 %34, 1
  %36 = add nsw i32 %31, %35
  store i32 %36, i32* %12, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %11, align 4
  br label %49

47:                                               ; preds = %30
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %47, %45
  br label %25

50:                                               ; preds = %25
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %80

60:                                               ; preds = %50
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @SPAM, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %4, align 4
  br label %80

72:                                               ; preds = %60
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %72, %64, %59, %22
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
