; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_collect_garbage_items.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_collect_garbage_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@UG_MODE = common dso_local global i64 0, align 8
@NOTIFY_MODE = common dso_local global i64 0, align 8
@RECOMMEND_MODE = common dso_local global i32 0, align 4
@items_kept = common dso_local global i32 0, align 4
@garbage_uid = common dso_local global i32 0, align 4
@MAX_USERS = common dso_local global i32 0, align 4
@User = common dso_local global %struct.TYPE_8__** null, align 8
@garbage_users_collected = common dso_local global i32 0, align 4
@garbage_objects_collected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @collect_garbage_items to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_garbage_items(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i64, i64* @UG_MODE, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* @NOTIFY_MODE, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* @RECOMMEND_MODE, align 4
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %13, %10, %1
  %17 = phi i1 [ true, %10 ], [ true, %1 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* @items_kept, align 4
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @garbage_uid, align 4
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %2, align 4
  %23 = mul nsw i32 %22, 10
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %109, %16
  %25 = load i32, i32* %4, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @MAX_USERS, align 4
  %30 = icmp slt i32 %28, %29
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i1 [ false, %24 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @User, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %35, i64 %37
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %6, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = icmp ne %struct.TYPE_8__* %40, null
  br i1 %41, label %42, label %87

42:                                               ; preds = %31
  %43 = load i64, i64* @UG_MODE, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %47 = call i32 @remove_old_items(%struct.TYPE_8__* %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %7, align 4
  br label %73

51:                                               ; preds = %42
  %52 = load i64, i64* @NOTIFY_MODE, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = bitcast %struct.TYPE_8__* %55 to %struct.TYPE_10__*
  %57 = call i32 @remove_old_notify_items(%struct.TYPE_10__* %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = bitcast %struct.TYPE_8__* %58 to %struct.TYPE_10__*
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %7, align 4
  br label %72

62:                                               ; preds = %51
  %63 = load i32, i32* @RECOMMEND_MODE, align 4
  %64 = call i32 @assert(i32 %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = bitcast %struct.TYPE_8__* %65 to %struct.TYPE_9__*
  %67 = call i32 @remove_old_recommend_items(%struct.TYPE_9__* %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = bitcast %struct.TYPE_8__* %68 to %struct.TYPE_9__*
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %62, %54
  br label %73

73:                                               ; preds = %72, %45
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @RECOMMEND_MODE, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32, i32* @garbage_users_collected, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* @garbage_users_collected, align 4
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @delete_user_by_idx(i32 %82)
  br label %84

84:                                               ; preds = %79, %76, %73
  %85 = load i32, i32* %2, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %84, %31
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 239
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @MAX_USERS, align 4
  %92 = icmp sge i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load i32, i32* @MAX_USERS, align 4
  %95 = load i32, i32* %4, align 4
  %96 = sub nsw i32 %95, %94
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %93, %87
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @garbage_uid, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load i32, i32* %2, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %5, align 4
  %108 = icmp sgt i32 %107, 0
  br label %109

109:                                              ; preds = %105, %102, %98
  %110 = phi i1 [ false, %102 ], [ false, %98 ], [ %108, %105 ]
  br i1 %110, label %24, label %111

111:                                              ; preds = %109
  %112 = load i32, i32* %4, align 4
  store i32 %112, i32* @garbage_uid, align 4
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @items_kept, align 4
  %115 = sub nsw i32 %113, %114
  %116 = load i32, i32* @garbage_objects_collected, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* @garbage_objects_collected, align 4
  ret i32 1
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @remove_old_items(%struct.TYPE_8__*) #1

declare dso_local i32 @remove_old_notify_items(%struct.TYPE_10__*) #1

declare dso_local i32 @remove_old_recommend_items(%struct.TYPE_9__*) #1

declare dso_local i32 @delete_user_by_idx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
