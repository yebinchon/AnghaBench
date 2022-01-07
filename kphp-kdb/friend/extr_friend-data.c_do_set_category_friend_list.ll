; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_do_set_category_friend_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_do_set_category_friend_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_setlist_long = type { i32, i32 }

@LEV_FR_CAT_SETLIST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_set_category_friend_list(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.lev_setlist_long*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32* @get_user(i32 %14)
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %22, 30
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18, %4
  store i32 -1, i32* %5, align 4
  br label %118

25:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sub nsw i32 %27, 1
  %29 = call i32 @il_sort(i32* %26, i32 %28)
  br label %30

30:                                               ; preds = %43, %25
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %39, 0
  br label %41

41:                                               ; preds = %34, %30
  %42 = phi i1 [ false, %30 ], [ %40, %34 ]
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %30

46:                                               ; preds = %41
  %47 = load i32, i32* %11, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %8, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %9, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %91

56:                                               ; preds = %46
  store i32 1, i32* %11, align 4
  br label %57

57:                                               ; preds = %86, %56
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %89

61:                                               ; preds = %57
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp sgt i32 %66, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %61
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  store i32 %79, i32* %84, align 4
  br label %85

85:                                               ; preds = %74, %61
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %57

89:                                               ; preds = %57
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %89, %46
  %92 = load i64, i64* @LEV_FR_CAT_SETLIST, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %92, %94
  %96 = load i32, i32* %9, align 4
  %97 = mul nsw i32 4, %96
  %98 = add nsw i32 12, %97
  %99 = load i32, i32* %6, align 4
  %100 = call %struct.lev_setlist_long* @alloc_log_event(i64 %95, i32 %98, i32 %99)
  store %struct.lev_setlist_long* %100, %struct.lev_setlist_long** %13, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.lev_setlist_long*, %struct.lev_setlist_long** %13, align 8
  %103 = getelementptr inbounds %struct.lev_setlist_long, %struct.lev_setlist_long* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load %struct.lev_setlist_long*, %struct.lev_setlist_long** %13, align 8
  %105 = getelementptr inbounds %struct.lev_setlist_long, %struct.lev_setlist_long* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* %9, align 4
  %109 = mul nsw i32 %108, 4
  %110 = call i32 @memcpy(i32 %106, i32* %107, i32 %109)
  %111 = load i32*, i32** %10, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.lev_setlist_long*, %struct.lev_setlist_long** %13, align 8
  %114 = getelementptr inbounds %struct.lev_setlist_long, %struct.lev_setlist_long* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @set_category_friend_list(i32* %111, i32 %112, i32 %115, i32 %116)
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %91, %24
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32* @get_user(i32) #1

declare dso_local i32 @il_sort(i32*, i32) #1

declare dso_local %struct.lev_setlist_long* @alloc_log_event(i64, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @set_category_friend_list(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
