; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_rev_friends_intersect.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_rev_friends_intersect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, %struct.TYPE_3__*, %struct.TYPE_3__* }

@rev_friends_intersect_pos = common dso_local global i64 0, align 8
@rev_friends_intersect_len = common dso_local global i64 0, align 8
@rev_friends_intersect_list = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @rev_friends_intersect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rev_friends_intersect(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %84

10:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @rev_friends_intersect(%struct.TYPE_3__* %19, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %16, %10
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %68

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %46, %30
  %32 = load i64, i64* @rev_friends_intersect_pos, align 8
  %33 = load i64, i64* @rev_friends_intersect_len, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i64*, i64** @rev_friends_intersect_list, align 8
  %37 = load i64, i64* @rev_friends_intersect_pos, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br label %44

44:                                               ; preds = %35, %31
  %45 = phi i1 [ false, %31 ], [ %43, %35 ]
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i64, i64* @rev_friends_intersect_pos, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* @rev_friends_intersect_pos, align 8
  br label %31

49:                                               ; preds = %44
  %50 = load i64, i64* @rev_friends_intersect_pos, align 8
  %51 = load i64, i64* @rev_friends_intersect_len, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load i64*, i64** @rev_friends_intersect_list, align 8
  %55 = load i64, i64* @rev_friends_intersect_pos, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %53
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  %65 = load i64, i64* @rev_friends_intersect_pos, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* @rev_friends_intersect_pos, align 8
  br label %67

67:                                               ; preds = %62, %53, %49
  br label %68

68:                                               ; preds = %67, %24
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = icmp sle i32 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @rev_friends_intersect(%struct.TYPE_3__* %77, i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %74, %68
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %9
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
