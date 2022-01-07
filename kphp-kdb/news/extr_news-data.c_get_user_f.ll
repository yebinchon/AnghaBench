; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_get_user_f.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_get_user_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32*, i32* }
%struct.TYPE_10__ = type { i32, i32*, i32* }
%struct.TYPE_9__ = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [38 x i8] c"get_user_f: user_id = %d, force = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"conv_id = %d\0A\00", align 1
@User = common dso_local global %struct.TYPE_8__** null, align 8
@UG_MODE = common dso_local global i64 0, align 8
@NOTIFY_MODE = common dso_local global i64 0, align 8
@RECOMMEND_MODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"creating new user: U = %p, user_id = %d\0A\00", align 1
@max_uid = common dso_local global i32 0, align 4
@tot_users = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32, i32)* @get_user_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @get_user_f(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 (i32, i8*, ...) @vkprintf(i32 5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.TYPE_8__* @get_user(i32 %14)
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %3, align 8
  br label %102

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @conv_uid(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 (i32, i8*, ...) @vkprintf(i32 5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %102

24:                                               ; preds = %16
  %25 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @User, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %25, i64 %27
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %7, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = icmp ne %struct.TYPE_8__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %3, align 8
  br label %102

34:                                               ; preds = %24
  %35 = load i64, i64* @UG_MODE, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = call %struct.TYPE_8__* @zmalloc0(i32 24)
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %7, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %42 = bitcast %struct.TYPE_8__* %41 to i32*
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  store i32* %42, i32** %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  store i32* %42, i32** %46, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %84

50:                                               ; preds = %34
  %51 = load i64, i64* @NOTIFY_MODE, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = call %struct.TYPE_8__* @zmalloc0(i32 24)
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %7, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = bitcast %struct.TYPE_8__* %55 to i32*
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %58 = bitcast %struct.TYPE_8__* %57 to %struct.TYPE_10__*
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  store i32* %56, i32** %59, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %61 = bitcast %struct.TYPE_8__* %60 to %struct.TYPE_10__*
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  store i32* %56, i32** %62, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %65 = bitcast %struct.TYPE_8__* %64 to %struct.TYPE_10__*
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  br label %83

67:                                               ; preds = %50
  %68 = load i32, i32* @RECOMMEND_MODE, align 4
  %69 = call i32 @assert(i32 %68)
  %70 = call %struct.TYPE_8__* @zmalloc0(i32 24)
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %7, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = bitcast %struct.TYPE_8__* %71 to i32*
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %74 = bitcast %struct.TYPE_8__* %73 to %struct.TYPE_9__*
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  store i32* %72, i32** %75, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %77 = bitcast %struct.TYPE_8__* %76 to %struct.TYPE_9__*
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  store i32* %72, i32** %78, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %81 = bitcast %struct.TYPE_8__* %80 to %struct.TYPE_9__*
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  br label %83

83:                                               ; preds = %67, %53
  br label %84

84:                                               ; preds = %83, %37
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 (i32, i8*, ...) @vkprintf(i32 5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_8__* %85, i32 %86)
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %89 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @User, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %89, i64 %91
  store %struct.TYPE_8__* %88, %struct.TYPE_8__** %92, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @max_uid, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %84
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* @max_uid, align 4
  br label %98

98:                                               ; preds = %96, %84
  %99 = load i32, i32* @tot_users, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* @tot_users, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %101, %struct.TYPE_8__** %3, align 8
  br label %102

102:                                              ; preds = %98, %32, %23, %13
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %103
}

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_8__* @get_user(i32) #1

declare dso_local i32 @conv_uid(i32) #1

declare dso_local %struct.TYPE_8__* @zmalloc0(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
