; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_get_place_f.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_get_place_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32*, %struct.TYPE_4__* }

@NOTIFY_MODE = common dso_local global i32 0, align 4
@COMM_MODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [60 x i8] c"get_place_f: type = %d, owner = %d, place = %d, force = %d\0A\00", align 1
@PLACES_HASH = common dso_local global i32 0, align 4
@Place = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"get_place_f: result = %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"get_place_f: nothing found\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"Creating new place: type = %d, owner = %d, place = %d: p = %p\0A\00", align 1
@tot_places = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32, i32, i32, i32)* @get_place_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @get_place_f(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__**, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @NOTIFY_MODE, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i64, i64* @COMM_MODE, align 8
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %15, %4
  %19 = phi i1 [ true, %4 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 (i32, i8*, ...) @vkprintf(i32 5, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 %27, 17239
  %29 = load i32, i32* %7, align 4
  %30 = mul nsw i32 %29, 239
  %31 = add nsw i32 %28, %30
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* @PLACES_HASH, align 4
  %35 = urem i32 %33, %34
  store i32 %35, i32* %10, align 4
  %36 = load i8**, i8*** @Place, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = bitcast i8** %39 to %struct.TYPE_4__**
  store %struct.TYPE_4__** %40, %struct.TYPE_4__*** %11, align 8
  br label %41

41:                                               ; preds = %91, %18
  %42 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  br i1 %44, label %45, label %94

45:                                               ; preds = %41
  %46 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %12, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %91

53:                                               ; preds = %45
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %91

59:                                               ; preds = %53
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %91

65:                                               ; preds = %59
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 5
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %11, align 8
  store %struct.TYPE_4__* %68, %struct.TYPE_4__** %69, align 8
  %70 = load i32, i32* %9, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %65
  %73 = load i8**, i8*** @Place, align 8
  %74 = load i32, i32* %10, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = bitcast i8* %77 to %struct.TYPE_4__*
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 5
  store %struct.TYPE_4__* %78, %struct.TYPE_4__** %80, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %82 = bitcast %struct.TYPE_4__* %81 to i8*
  %83 = load i8**, i8*** @Place, align 8
  %84 = load i32, i32* %10, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  store i8* %82, i8** %86, align 8
  br label %87

87:                                               ; preds = %72, %65
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %89 = call i32 (i32, i8*, ...) @vkprintf(i32 5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %88)
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %90, %struct.TYPE_4__** %5, align 8
  br label %146

91:                                               ; preds = %59, %53, %45
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 5
  store %struct.TYPE_4__** %93, %struct.TYPE_4__*** %11, align 8
  br label %41

94:                                               ; preds = %41
  %95 = load i32, i32* %9, align 4
  %96 = icmp sle i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call i32 (i32, i8*, ...) @vkprintf(i32 5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %146

99:                                               ; preds = %94
  %100 = load i64, i64* @COMM_MODE, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = call %struct.TYPE_4__* @zmalloc0(i32 40)
  store %struct.TYPE_4__* %103, %struct.TYPE_4__** %12, align 8
  br label %108

104:                                              ; preds = %99
  %105 = load i32, i32* @NOTIFY_MODE, align 4
  %106 = call i32 @assert(i32 %105)
  %107 = call %struct.TYPE_4__* @zmalloc0(i32 4)
  store %struct.TYPE_4__* %107, %struct.TYPE_4__** %12, align 8
  br label %108

108:                                              ; preds = %104, %102
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %113 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %109, i32 %110, i32 %111, %struct.TYPE_4__* %112)
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* %7, align 4
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load i8**, i8*** @Place, align 8
  %124 = load i32, i32* %10, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = bitcast i8* %127 to %struct.TYPE_4__*
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 5
  store %struct.TYPE_4__* %128, %struct.TYPE_4__** %130, align 8
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %132 = bitcast %struct.TYPE_4__* %131 to i32*
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 3
  store i32* %132, i32** %134, align 8
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 4
  store i32* %132, i32** %136, align 8
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %138 = bitcast %struct.TYPE_4__* %137 to i8*
  %139 = load i8**, i8*** @Place, align 8
  %140 = load i32, i32* %10, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  store i8* %138, i8** %142, align 8
  %143 = load i32, i32* @tot_places, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* @tot_places, align 4
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %145, %struct.TYPE_4__** %5, align 8
  br label %146

146:                                              ; preds = %108, %97, %87
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %147
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_4__* @zmalloc0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
