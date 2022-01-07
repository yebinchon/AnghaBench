; ModuleID = '/home/carl/AnghaBench/git/extr_pack-bitmap-write.c_bitmap_writer_select_commits.c'
source_filename = "/home/carl/AnghaBench/git/extr_pack-bitmap-write.c_bitmap_writer_select_commits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.commit = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ewah_bitmap = type { i32 }

@date_compare = common dso_local global i32 0, align 4
@writer = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [25 x i8] c"Selecting bitmap commits\00", align 1
@NEEDS_BITMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bitmap_writer_select_commits(%struct.commit** %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.commit**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ewah_bitmap*, align 8
  %11 = alloca %struct.commit*, align 8
  %12 = alloca %struct.commit*, align 8
  store %struct.commit** %0, %struct.commit*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.commit**, %struct.commit*** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @date_compare, align 4
  %16 = call i32 @QSORT(%struct.commit** %13, i32 %14, i32 %15)
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @writer, i32 0, i32 2), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 @start_progress(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @writer, i32 0, i32 1), align 4
  br label %21

21:                                               ; preds = %19, %3
  %22 = load i32, i32* %5, align 4
  %23 = icmp ult i32 %22, 100
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %36, %24
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load %struct.commit**, %struct.commit*** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.commit*, %struct.commit** %30, i64 %32
  %34 = load %struct.commit*, %struct.commit** %33, align 8
  %35 = call i32 @push_bitmapped_commit(%struct.commit* %34, %struct.ewah_bitmap* null)
  br label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %7, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %25

39:                                               ; preds = %25
  br label %140

40:                                               ; preds = %21
  br label %41

41:                                               ; preds = %127, %40
  store %struct.ewah_bitmap* null, %struct.ewah_bitmap** %10, align 8
  store %struct.commit* null, %struct.commit** %11, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @next_commit_index(i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %9, align 4
  %46 = add i32 %44, %45
  %47 = load i32, i32* %5, align 4
  %48 = icmp uge i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %138

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @writer, i32 0, i32 0), align 8
  %55 = load i32, i32* %6, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @writer, i32 0, i32 0), align 8
  br label %138

59:                                               ; preds = %53, %50
  %60 = load i32, i32* %9, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load %struct.commit**, %struct.commit*** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.commit*, %struct.commit** %63, i64 %65
  %67 = load %struct.commit*, %struct.commit** %66, align 8
  store %struct.commit* %67, %struct.commit** %11, align 8
  %68 = load %struct.commit*, %struct.commit** %11, align 8
  %69 = getelementptr inbounds %struct.commit, %struct.commit* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = call %struct.ewah_bitmap* @find_reused_bitmap(i32* %70)
  store %struct.ewah_bitmap* %71, %struct.ewah_bitmap** %10, align 8
  br label %127

72:                                               ; preds = %59
  %73 = load %struct.commit**, %struct.commit*** %4, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %9, align 4
  %76 = add i32 %74, %75
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.commit*, %struct.commit** %73, i64 %77
  %79 = load %struct.commit*, %struct.commit** %78, align 8
  store %struct.commit* %79, %struct.commit** %11, align 8
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %123, %72
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ule i32 %81, %82
  br i1 %83, label %84, label %126

84:                                               ; preds = %80
  %85 = load %struct.commit**, %struct.commit*** %4, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = add i32 %86, %87
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.commit*, %struct.commit** %85, i64 %89
  %91 = load %struct.commit*, %struct.commit** %90, align 8
  store %struct.commit* %91, %struct.commit** %12, align 8
  %92 = load %struct.commit*, %struct.commit** %12, align 8
  %93 = getelementptr inbounds %struct.commit, %struct.commit* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = call %struct.ewah_bitmap* @find_reused_bitmap(i32* %94)
  store %struct.ewah_bitmap* %95, %struct.ewah_bitmap** %10, align 8
  %96 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %10, align 8
  %97 = icmp ne %struct.ewah_bitmap* %96, null
  br i1 %97, label %106, label %98

98:                                               ; preds = %84
  %99 = load %struct.commit*, %struct.commit** %12, align 8
  %100 = getelementptr inbounds %struct.commit, %struct.commit* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @NEEDS_BITMAP, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %98, %84
  %107 = load %struct.commit*, %struct.commit** %12, align 8
  store %struct.commit* %107, %struct.commit** %11, align 8
  br label %126

108:                                              ; preds = %98
  %109 = load %struct.commit*, %struct.commit** %12, align 8
  %110 = getelementptr inbounds %struct.commit, %struct.commit* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = icmp ne %struct.TYPE_5__* %111, null
  br i1 %112, label %113, label %122

113:                                              ; preds = %108
  %114 = load %struct.commit*, %struct.commit** %12, align 8
  %115 = getelementptr inbounds %struct.commit, %struct.commit* %114, i32 0, i32 0
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load %struct.commit*, %struct.commit** %12, align 8
  store %struct.commit* %121, %struct.commit** %11, align 8
  br label %122

122:                                              ; preds = %120, %113, %108
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %8, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %80

126:                                              ; preds = %106, %80
  br label %127

127:                                              ; preds = %126, %62
  %128 = load %struct.commit*, %struct.commit** %11, align 8
  %129 = load %struct.ewah_bitmap*, %struct.ewah_bitmap** %10, align 8
  %130 = call i32 @push_bitmapped_commit(%struct.commit* %128, %struct.ewah_bitmap* %129)
  %131 = load i32, i32* %9, align 4
  %132 = add i32 %131, 1
  %133 = load i32, i32* %7, align 4
  %134 = add i32 %133, %132
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @writer, i32 0, i32 1), align 4
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @display_progress(i32 %135, i32 %136)
  br label %41

138:                                              ; preds = %57, %49
  %139 = call i32 @stop_progress(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @writer, i32 0, i32 1))
  br label %140

140:                                              ; preds = %138, %39
  ret void
}

declare dso_local i32 @QSORT(%struct.commit**, i32, i32) #1

declare dso_local i32 @start_progress(i8*, i32) #1

declare dso_local i32 @push_bitmapped_commit(%struct.commit*, %struct.ewah_bitmap*) #1

declare dso_local i32 @next_commit_index(i32) #1

declare dso_local %struct.ewah_bitmap* @find_reused_bitmap(i32*) #1

declare dso_local i32 @display_progress(i32, i32) #1

declare dso_local i32 @stop_progress(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
