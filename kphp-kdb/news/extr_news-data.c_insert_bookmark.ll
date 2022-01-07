; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_insert_bookmark.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_insert_bookmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@index_mode = common dso_local global i64 0, align 8
@ALLOW_OLD_INDEX_MODE = common dso_local global i64 0, align 8
@bookmarks = common dso_local global %struct.TYPE_5__* null, align 8
@new_users = common dso_local global %struct.TYPE_4__* null, align 8
@new_users_number = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Inserted user %d (total %d new users)\0A\00", align 1
@NIL_BOOKMARK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @insert_bookmark(i32 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i64, i64* @index_mode, align 8
  %16 = load i64, i64* @ALLOW_OLD_INDEX_MODE, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %4
  %19 = call i32 (...) @next_bookmark_ptr()
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %10, align 4
  %24 = and i32 %23, -1073741824
  %25 = icmp eq i32 %24, -1073741824
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i1 [ false, %18 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bookmarks, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 %30, i32* %35, align 8
  %36 = load i32, i32* %10, align 4
  %37 = shl i32 %36, 1
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, 1
  %40 = add nsw i32 %37, %39
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bookmarks, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 %40, i32* %45, align 4
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bookmarks, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  store i64 %46, i64* %51, align 8
  store i32 1, i32* %5, align 4
  br label %180

52:                                               ; preds = %4
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @new_users, align 8
  %55 = load i32, i32* @new_users_number, align 4
  %56 = call i32 @binary_search(i32 %53, %struct.TYPE_4__* %54, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %82

59:                                               ; preds = %52
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %180

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @insert_new_users(i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @new_users, align 8
  %69 = load i32, i32* @new_users_number, align 4
  %70 = call i32 @binary_search(i32 %67, %struct.TYPE_4__* %68, i32 %69)
  %71 = icmp eq i32 %66, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load i32, i32* @verbosity, align 4
  %75 = icmp sge i32 %74, 4
  br i1 %75, label %76, label %81

76:                                               ; preds = %63
  %77 = load i32, i32* @stderr, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @new_users_number, align 4
  %80 = call i32 @fprintf(i32 %77, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %63
  br label %82

82:                                               ; preds = %81, %52
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @new_users, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %82, %177
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bookmarks, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @NIL_BOOKMARK, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %108, label %99

99:                                               ; preds = %89
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bookmarks, align 8
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %7, align 8
  %107 = icmp sgt i64 %105, %106
  br i1 %107, label %108, label %138

108:                                              ; preds = %99, %89
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  store i32 0, i32* %5, align 4
  br label %180

112:                                              ; preds = %108
  %113 = call i32 (...) @next_bookmark_ptr()
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %13, align 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bookmarks, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  store i32 %114, i32* %119, align 8
  %120 = load i64, i64* %7, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bookmarks, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  store i64 %120, i64* %125, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bookmarks, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  store i32 %126, i32* %131, align 4
  %132 = load i32, i32* %14, align 4
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bookmarks, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  store i32 %132, i32* %137, align 8
  br label %179

138:                                              ; preds = %99
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bookmarks, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %7, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %177

147:                                              ; preds = %138
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %160, label %150

150:                                              ; preds = %147
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bookmarks, align 8
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp eq i32 %156, %157
  %159 = zext i1 %158 to i32
  store i32 %159, i32* %5, align 4
  br label %180

160:                                              ; preds = %147
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bookmarks, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %161, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %160
  %170 = load i32, i32* %8, align 4
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bookmarks, align 8
  %172 = load i32, i32* %13, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  store i32 %170, i32* %175, align 4
  br label %176

176:                                              ; preds = %169, %160
  br label %179

177:                                              ; preds = %138
  %178 = load i32, i32* %13, align 4
  store i32 %178, i32* %12, align 4
  br label %89

179:                                              ; preds = %176, %112
  store i32 1, i32* %5, align 4
  br label %180

180:                                              ; preds = %179, %150, %111, %62, %26
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i32 @next_bookmark_ptr(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @binary_search(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @insert_new_users(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
