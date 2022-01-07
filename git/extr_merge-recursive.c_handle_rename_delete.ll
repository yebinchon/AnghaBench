; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_handle_rename_delete.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_handle_rename_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { i8*, i8*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.rename_conflict_info = type { %struct.rename* }
%struct.rename = type { i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.diff_filespec*, %struct.diff_filespec* }
%struct.diff_filespec = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"rename\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"renamed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_options*, %struct.rename_conflict_info*)* @handle_rename_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_rename_delete(%struct.merge_options* %0, %struct.rename_conflict_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.merge_options*, align 8
  %5 = alloca %struct.rename_conflict_info*, align 8
  %6 = alloca %struct.rename*, align 8
  %7 = alloca %struct.diff_filespec*, align 8
  %8 = alloca %struct.diff_filespec*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.merge_options* %0, %struct.merge_options** %4, align 8
  store %struct.rename_conflict_info* %1, %struct.rename_conflict_info** %5, align 8
  %11 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %12 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %11, i32 0, i32 0
  %13 = load %struct.rename*, %struct.rename** %12, align 8
  store %struct.rename* %13, %struct.rename** %6, align 8
  %14 = load %struct.rename*, %struct.rename** %6, align 8
  %15 = getelementptr inbounds %struct.rename, %struct.rename* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.diff_filespec*, %struct.diff_filespec** %17, align 8
  store %struct.diff_filespec* %18, %struct.diff_filespec** %7, align 8
  %19 = load %struct.rename*, %struct.rename** %6, align 8
  %20 = getelementptr inbounds %struct.rename, %struct.rename* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.diff_filespec*, %struct.diff_filespec** %22, align 8
  store %struct.diff_filespec* %23, %struct.diff_filespec** %8, align 8
  %24 = load %struct.rename*, %struct.rename** %6, align 8
  %25 = getelementptr inbounds %struct.rename, %struct.rename* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %9, align 8
  %27 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %28 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.rename*, %struct.rename** %6, align 8
  %31 = getelementptr inbounds %struct.rename, %struct.rename* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp eq i8* %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %36 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  br label %42

38:                                               ; preds = %2
  %39 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %40 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i8* [ %37, %34 ], [ %41, %38 ]
  store i8* %43, i8** %10, align 8
  %44 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %45 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %46 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %45, i32 0, i32 3
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %53 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  br label %59

55:                                               ; preds = %42
  %56 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %57 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  br label %59

59:                                               ; preds = %55, %51
  %60 = phi i32* [ %54, %51 ], [ %58, %55 ]
  %61 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %62 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %61, i32 0, i32 3
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %72

68:                                               ; preds = %59
  %69 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %70 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  br label %72

72:                                               ; preds = %68, %67
  %73 = phi i32* [ null, %67 ], [ %71, %68 ]
  %74 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %75 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = call i32 @_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %79 = call i32 @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %80 = call i64 @handle_change_delete(%struct.merge_options* %44, i32* %60, i32* %73, %struct.diff_filespec* %74, %struct.diff_filespec* %75, i8* %76, i8* %77, i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  store i32 -1, i32* %3, align 4
  br label %126

83:                                               ; preds = %72
  %84 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %85 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %84, i32 0, i32 3
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %83
  %91 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %92 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %91, i32 0, i32 2
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %97 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @remove_file_from_index(i32 %95, i32* %98)
  store i32 %99, i32* %3, align 4
  br label %126

100:                                              ; preds = %83
  %101 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %102 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %103 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %107 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = icmp eq i8* %105, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %100
  %111 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  br label %113

112:                                              ; preds = %100
  br label %113

113:                                              ; preds = %112, %110
  %114 = phi %struct.diff_filespec* [ %111, %110 ], [ null, %112 ]
  %115 = load i8*, i8** %9, align 8
  %116 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %117 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = icmp eq i8* %115, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  br label %123

121:                                              ; preds = %113
  %122 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  br label %123

123:                                              ; preds = %121, %120
  %124 = phi %struct.diff_filespec* [ null, %120 ], [ %122, %121 ]
  %125 = call i32 @update_stages(%struct.merge_options* %101, i32* %104, i32* null, %struct.diff_filespec* %114, %struct.diff_filespec* %124)
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %123, %90, %82
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i64 @handle_change_delete(%struct.merge_options*, i32*, i32*, %struct.diff_filespec*, %struct.diff_filespec*, i8*, i8*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @remove_file_from_index(i32, i32*) #1

declare dso_local i32 @update_stages(%struct.merge_options*, i32*, i32*, %struct.diff_filespec*, %struct.diff_filespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
