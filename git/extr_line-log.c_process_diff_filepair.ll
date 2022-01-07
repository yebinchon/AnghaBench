; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_process_diff_filepair.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_process_diff_filepair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.diff_filepair = type { %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8*, i64, i64, i64 }
%struct.line_log_data = type { %struct.TYPE_13__, i64, %struct.line_log_data* }
%struct.TYPE_13__ = type { i64 }
%struct.diff_ranges = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.range_set = type { i32 }
%struct.TYPE_12__ = type { i8*, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"unable to generate diff for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rev_info*, %struct.diff_filepair*, %struct.line_log_data*, %struct.diff_ranges**)* @process_diff_filepair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_diff_filepair(%struct.rev_info* %0, %struct.diff_filepair* %1, %struct.line_log_data* %2, %struct.diff_ranges** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rev_info*, align 8
  %7 = alloca %struct.diff_filepair*, align 8
  %8 = alloca %struct.line_log_data*, align 8
  %9 = alloca %struct.diff_ranges**, align 8
  %10 = alloca %struct.line_log_data*, align 8
  %11 = alloca %struct.range_set, align 4
  %12 = alloca %struct.diff_ranges, align 8
  %13 = alloca %struct.TYPE_12__, align 8
  %14 = alloca %struct.TYPE_12__, align 8
  store %struct.rev_info* %0, %struct.rev_info** %6, align 8
  store %struct.diff_filepair* %1, %struct.diff_filepair** %7, align 8
  store %struct.line_log_data* %2, %struct.line_log_data** %8, align 8
  store %struct.diff_ranges** %3, %struct.diff_ranges*** %9, align 8
  %15 = load %struct.line_log_data*, %struct.line_log_data** %8, align 8
  store %struct.line_log_data* %15, %struct.line_log_data** %10, align 8
  %16 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %17 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %16, i32 0, i32 1
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @assert(i64 %20)
  br label %22

22:                                               ; preds = %41, %4
  %23 = load %struct.line_log_data*, %struct.line_log_data** %10, align 8
  %24 = icmp ne %struct.line_log_data* %23, null
  br i1 %24, label %25, label %45

25:                                               ; preds = %22
  %26 = load %struct.line_log_data*, %struct.line_log_data** %10, align 8
  %27 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @assert(i64 %28)
  %30 = load %struct.line_log_data*, %struct.line_log_data** %10, align 8
  %31 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %34 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %33, i32 0, i32 1
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @strcmp(i64 %32, i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %25
  br label %45

41:                                               ; preds = %25
  %42 = load %struct.line_log_data*, %struct.line_log_data** %10, align 8
  %43 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %42, i32 0, i32 2
  %44 = load %struct.line_log_data*, %struct.line_log_data** %43, align 8
  store %struct.line_log_data* %44, %struct.line_log_data** %10, align 8
  br label %22

45:                                               ; preds = %40, %22
  %46 = load %struct.line_log_data*, %struct.line_log_data** %10, align 8
  %47 = icmp ne %struct.line_log_data* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %156

49:                                               ; preds = %45
  %50 = load %struct.line_log_data*, %struct.line_log_data** %10, align 8
  %51 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %156

56:                                               ; preds = %49
  %57 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %58 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %57, i32 0, i32 1
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @assert(i64 %61)
  %63 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %64 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %68 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %67, i32 0, i32 1
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = call i32 @diff_populate_filespec(i32 %66, %struct.TYPE_14__* %69, i32 0)
  %71 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %72 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %71, i32 0, i32 1
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  store i8* %75, i8** %76, align 8
  %77 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %78 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %77, i32 0, i32 1
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  store i64 %81, i64* %82, align 8
  %83 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %84 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %83, i32 0, i32 0
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %110

89:                                               ; preds = %56
  %90 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %91 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %95 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %94, i32 0, i32 0
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = call i32 @diff_populate_filespec(i32 %93, %struct.TYPE_14__* %96, i32 0)
  %98 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %99 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %98, i32 0, i32 0
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store i8* %102, i8** %103, align 8
  %104 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %105 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %104, i32 0, i32 0
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  store i64 %108, i64* %109, align 8
  br label %113

110:                                              ; preds = %56
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %111, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %110, %89
  %114 = call i32 @diff_ranges_init(%struct.diff_ranges* %12)
  %115 = call i64 @collect_diff(%struct.TYPE_12__* %13, %struct.TYPE_12__* %14, %struct.diff_ranges* %12)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %113
  %118 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %119 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %118, i32 0, i32 0
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %122)
  br label %124

124:                                              ; preds = %117, %113
  %125 = load %struct.line_log_data*, %struct.line_log_data** %10, align 8
  %126 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @free(i64 %127)
  %129 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %130 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %129, i32 0, i32 0
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i64 @xstrdup(i64 %133)
  %135 = load %struct.line_log_data*, %struct.line_log_data** %10, align 8
  %136 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %135, i32 0, i32 1
  store i64 %134, i64* %136, align 8
  %137 = call i32 @range_set_init(%struct.range_set* %11, i32 0)
  %138 = load %struct.line_log_data*, %struct.line_log_data** %10, align 8
  %139 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %138, i32 0, i32 0
  %140 = load %struct.diff_ranges**, %struct.diff_ranges*** %9, align 8
  %141 = call i32 @range_set_map_across_diff(%struct.range_set* %11, %struct.TYPE_13__* %139, %struct.diff_ranges* %12, %struct.diff_ranges** %140)
  %142 = load %struct.line_log_data*, %struct.line_log_data** %10, align 8
  %143 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %142, i32 0, i32 0
  %144 = call i32 @range_set_release(%struct.TYPE_13__* %143)
  %145 = load %struct.line_log_data*, %struct.line_log_data** %10, align 8
  %146 = getelementptr inbounds %struct.line_log_data, %struct.line_log_data* %145, i32 0, i32 0
  %147 = call i32 @range_set_move(%struct.TYPE_13__* %146, %struct.range_set* %11)
  %148 = call i32 @diff_ranges_release(%struct.diff_ranges* %12)
  %149 = load %struct.diff_ranges**, %struct.diff_ranges*** %9, align 8
  %150 = load %struct.diff_ranges*, %struct.diff_ranges** %149, align 8
  %151 = getelementptr inbounds %struct.diff_ranges, %struct.diff_ranges* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp sgt i64 %153, 0
  %155 = zext i1 %154 to i32
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %124, %55, %48
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i32 @assert(i64) #1

declare dso_local i32 @strcmp(i64, i64) #1

declare dso_local i32 @diff_populate_filespec(i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @diff_ranges_init(%struct.diff_ranges*) #1

declare dso_local i64 @collect_diff(%struct.TYPE_12__*, %struct.TYPE_12__*, %struct.diff_ranges*) #1

declare dso_local i32 @die(i8*, i64) #1

declare dso_local i32 @free(i64) #1

declare dso_local i64 @xstrdup(i64) #1

declare dso_local i32 @range_set_init(%struct.range_set*, i32) #1

declare dso_local i32 @range_set_map_across_diff(%struct.range_set*, %struct.TYPE_13__*, %struct.diff_ranges*, %struct.diff_ranges**) #1

declare dso_local i32 @range_set_release(%struct.TYPE_13__*) #1

declare dso_local i32 @range_set_move(%struct.TYPE_13__*, %struct.range_set*) #1

declare dso_local i32 @diff_ranges_release(%struct.diff_ranges*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
