; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_handle_rename_add.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_handle_rename_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { i8*, i8*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.rename_conflict_info = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i8*, %struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_10__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_9__ = type { %struct.diff_filespec*, %struct.diff_filespec* }
%struct.diff_filespec = type { i8* }
%struct.merge_file_info = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i8* }

@.str = private unnamed_addr constant [60 x i8] c"CONFLICT (rename/add): Rename %s->%s in %s.  Added %s in %s\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"version of %s from %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_options*, %struct.rename_conflict_info*)* @handle_rename_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_rename_add(%struct.merge_options* %0, %struct.rename_conflict_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.merge_options*, align 8
  %5 = alloca %struct.rename_conflict_info*, align 8
  %6 = alloca %struct.diff_filespec*, align 8
  %7 = alloca %struct.diff_filespec*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.merge_file_info, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.merge_options* %0, %struct.merge_options** %4, align 8
  store %struct.rename_conflict_info* %1, %struct.rename_conflict_info** %5, align 8
  %14 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %15 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %14, i32 0, i32 0
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load %struct.diff_filespec*, %struct.diff_filespec** %19, align 8
  store %struct.diff_filespec* %20, %struct.diff_filespec** %6, align 8
  %21 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %22 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.diff_filespec*, %struct.diff_filespec** %26, align 8
  store %struct.diff_filespec* %27, %struct.diff_filespec** %7, align 8
  %28 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %29 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %8, align 8
  %31 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %32 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %11, align 8
  %36 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %37 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = icmp eq i8* %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %2
  %42 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %43 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  br label %49

45:                                               ; preds = %2
  %46 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %47 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi i8* [ %44, %41 ], [ %48, %45 ]
  store i8* %50, i8** %12, align 8
  %51 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %52 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %51, i32 0, i32 0
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %57 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp eq i8* %55, %58
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 3, i32 2
  store i32 %61, i32* %13, align 4
  %62 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %63 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %64 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %65 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %68 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %72 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = call i32 @output(%struct.merge_options* %62, i32 1, i32 %63, i8* %66, i8* %69, i8* %70, i8* %73, i8* %74)
  %76 = load i8*, i8** %8, align 8
  %77 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %78 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i8* @xstrfmt(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %76, i8* %79)
  store i8* %80, i8** %9, align 8
  %81 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %82 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %85 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %84, i32 0, i32 0
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  store i8* %83, i8** %94, align 8
  %95 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %96 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %97 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %98 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %99 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %98, i32 0, i32 0
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i64 %106
  %108 = load i8*, i8** %9, align 8
  %109 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %110 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %113 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %116 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %115, i32 0, i32 2
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %119, 2
  %121 = add nsw i32 1, %120
  %122 = call i64 @merge_mode_and_contents(%struct.merge_options* %95, %struct.diff_filespec* %96, %struct.diff_filespec* %97, %struct.TYPE_14__* %107, i8* %108, i8* %111, i8* %114, i32 %121, %struct.merge_file_info* %10)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %165

125:                                              ; preds = %49
  %126 = load i8*, i8** %9, align 8
  %127 = call i32 @free(i8* %126)
  %128 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %129 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %10, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  store i8* %130, i8** %132, align 8
  %133 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %134 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %133, i32 0, i32 0
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %138, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  store i8* %130, i8** %143, align 8
  %144 = load %struct.merge_options*, %struct.merge_options** %4, align 8
  %145 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %146 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.diff_filespec*, %struct.diff_filespec** %6, align 8
  %149 = getelementptr inbounds %struct.diff_filespec, %struct.diff_filespec* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load i8*, i8** %11, align 8
  %152 = load i8*, i8** %12, align 8
  %153 = getelementptr inbounds %struct.merge_file_info, %struct.merge_file_info* %10, i32 0, i32 0
  %154 = load %struct.rename_conflict_info*, %struct.rename_conflict_info** %5, align 8
  %155 = getelementptr inbounds %struct.rename_conflict_info, %struct.rename_conflict_info* %154, i32 0, i32 0
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %159, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i64 %162
  %164 = call i32 @handle_file_collision(%struct.merge_options* %144, i8* %147, i8* %150, i32* null, i8* %151, i8* %152, %struct.TYPE_15__* %153, %struct.TYPE_16__* %163)
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %125, %124
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i32 @output(%struct.merge_options*, i32, i32, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @xstrfmt(i8*, i8*, i8*) #1

declare dso_local i64 @merge_mode_and_contents(%struct.merge_options*, %struct.diff_filespec*, %struct.diff_filespec*, %struct.TYPE_14__*, i8*, i8*, i8*, i32, %struct.merge_file_info*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @handle_file_collision(%struct.merge_options*, i8*, i8*, i32*, i8*, i8*, %struct.TYPE_15__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
