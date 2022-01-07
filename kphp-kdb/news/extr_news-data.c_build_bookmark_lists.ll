; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_build_bookmark_lists.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_build_bookmark_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@bookmarks_ptr = common dso_local global i32 0, align 4
@new_users_number = common dso_local global i64 0, align 8
@MAX_NEW_BOOKMARK_USERS = common dso_local global i64 0, align 8
@bookmarks = common dso_local global %struct.TYPE_4__* null, align 8
@new_users = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @build_bookmark_lists() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = load i32, i32* @bookmarks_ptr, align 4
  store i32 %6, i32* %1, align 4
  store i32 0, i32* %3, align 4
  %7 = load i64, i64* @new_users_number, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @bookmarks_ptr, align 4
  %11 = icmp sle i32 %10, 0
  br label %12

12:                                               ; preds = %9, %0
  %13 = phi i1 [ false, %0 ], [ %11, %9 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  br label %16

16:                                               ; preds = %125, %12
  %17 = load i32, i32* %1, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %131

19:                                               ; preds = %16
  %20 = load i64, i64* @new_users_number, align 8
  %21 = load i64, i64* @MAX_NEW_BOOKMARK_USERS, align 8
  %22 = icmp ult i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bookmarks, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %19
  %34 = call i32 (...) @next_bookmark_ptr()
  store i32 %34, i32* %4, align 4
  br label %43

35:                                               ; preds = %19
  %36 = load i32, i32* %3, align 4
  store i32 %36, i32* %4, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bookmarks, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %35, %33
  %44 = load i32, i32* %2, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @new_users, align 8
  %46 = load i64, i64* @new_users_number, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @new_users, align 8
  %51 = load i64, i64* @new_users_number, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 %49, i32* %53, align 4
  %54 = load i64, i64* @new_users_number, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* @new_users_number, align 8
  br label %56

56:                                               ; preds = %123, %43
  %57 = load i32, i32* %1, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bookmarks, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %57, i32* %62, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bookmarks, align 8
  %64 = load i32, i32* %1, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* %1, align 4
  store i32 %70, i32* %4, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bookmarks, align 8
  %72 = load i32, i32* %1, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %1, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %5, align 8
  br label %78

78:                                               ; preds = %101, %56
  %79 = load i32, i32* %1, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %78
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bookmarks, align 8
  %83 = load i32, i32* %1, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %5, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %81
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bookmarks, align 8
  %92 = load i32, i32* %1, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %2, align 4
  %98 = icmp eq i32 %96, %97
  br label %99

99:                                               ; preds = %90, %81, %78
  %100 = phi i1 [ false, %81 ], [ false, %78 ], [ %98, %90 ]
  br i1 %100, label %101, label %110

101:                                              ; preds = %99
  %102 = load i32, i32* %3, align 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bookmarks, align 8
  %104 = load i32, i32* %1, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  store i32 %102, i32* %107, align 8
  %108 = load i32, i32* %1, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %1, align 4
  store i32 %108, i32* %3, align 4
  br label %78

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %1, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bookmarks, align 8
  %116 = load i32, i32* %1, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %2, align 4
  %122 = icmp eq i32 %120, %121
  br label %123

123:                                              ; preds = %114, %111
  %124 = phi i1 [ false, %111 ], [ %122, %114 ]
  br i1 %124, label %56, label %125

125:                                              ; preds = %123
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bookmarks, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  store i32 0, i32* %130, align 8
  br label %16

131:                                              ; preds = %16
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @next_bookmark_ptr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
