; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_unpack_metafile_pointers.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_unpack_metafile_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32*, i32* }
%struct.TYPE_12__ = type { i32, i32, i32* }
%struct.TYPE_11__ = type { i32 }

@M_List = common dso_local global %struct.TYPE_13__* null, align 8
@OTree = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@M_metafile = common dso_local global %struct.TYPE_12__* null, align 8
@M_metafile_size = common dso_local global i32 0, align 4
@M_tot_entries = common dso_local global i32 0, align 4
@M_obj_id_list = common dso_local global i32* null, align 8
@M_global_id_list = common dso_local global i32* null, align 8
@M_sorted_global_id_list = common dso_local global i32* null, align 8
@M_sublist_temp_id_list = common dso_local global i32* null, align 8
@M_sublist_temp_id_by_global = common dso_local global i32* null, align 8
@M_values = common dso_local global i32* null, align 8
@M_dates = common dso_local global i32* null, align 8
@M_text_offset = common dso_local global i32* null, align 8
@M_flags_small = common dso_local global i8* null, align 8
@M_flags = common dso_local global i32* null, align 8
@M_text_min_offset = common dso_local global i32 0, align 4
@M_text_max_offset = common dso_local global i32 0, align 4
@M_text_start = common dso_local global i8* null, align 8
@M_text_end = common dso_local global i8* null, align 8
@FILE_LIST_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Metafile flags: %d, tot_entries = %d\0A\00", align 1
@MAX_METAFILE_ENTRIES = common dso_local global i32 0, align 4
@OBJECT_ID_INTS = common dso_local global i32 0, align 4
@LF_HAVE_VALUES = common dso_local global i32 0, align 4
@LF_HAVE_DATES = common dso_local global i32 0, align 4
@LF_HAVE_TEXTS = common dso_local global i32 0, align 4
@LF_BIGFLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @unpack_metafile_pointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unpack_metafile_pointers(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_12__* @get_metafile_ptr(i32 %15)
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %12
  %19 = phi %struct.TYPE_12__* [ %16, %12 ], [ null, %17 ]
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %3, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** @M_List, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  store i32* %22, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @OTree, i32 0, i32 2), align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = icmp ne %struct.TYPE_12__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store %struct.TYPE_12__* null, %struct.TYPE_12__** @M_metafile, align 8
  store i32 0, i32* @M_metafile_size, align 4
  store i32 0, i32* @M_tot_entries, align 4
  store i32* null, i32** @M_obj_id_list, align 8
  store i32* null, i32** @M_global_id_list, align 8
  store i32* null, i32** @M_sorted_global_id_list, align 8
  store i32* null, i32** @M_sublist_temp_id_list, align 8
  store i32* null, i32** @M_sublist_temp_id_by_global, align 8
  store i32* null, i32** @M_values, align 8
  store i32* null, i32** @M_dates, align 8
  store i32* null, i32** @M_text_offset, align 8
  store i8* null, i8** @M_flags_small, align 8
  store i32* null, i32** @M_flags, align 8
  store i32 0, i32* @M_text_min_offset, align 4
  store i32 0, i32* @M_text_max_offset, align 4
  store i8* null, i8** @M_text_start, align 8
  store i8* null, i8** @M_text_end, align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @OTree, i32 0, i32 0), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @OTree, i32 0, i32 1), align 8
  br label %169

26:                                               ; preds = %18
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = call i64 @MF_MAGIC(%struct.TYPE_12__* %27)
  %29 = load i64, i64* @FILE_LIST_MAGIC, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** @M_metafile, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  %39 = call %struct.TYPE_11__* @FLI_ENTRY_ADJUSTED(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call %struct.TYPE_11__* @FLI_ENTRY_ADJUSTED(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %41, %45
  store i32 %46, i32* @M_metafile_size, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %5, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @MAX_METAFILE_ENTRIES, align 4
  %58 = icmp ule i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* @M_tot_entries, align 4
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @OTree, i32 0, i32 0), align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %7, align 8
  store i32* %64, i32** @M_obj_id_list, align 8
  store i32* %64, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @OTree, i32 0, i32 1), align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @OBJECT_ID_INTS, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load i32*, i32** %7, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32* %70, i32** %7, align 8
  %71 = load i32*, i32** %7, align 8
  store i32* %71, i32** @M_global_id_list, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 1
  %75 = load i32*, i32** %7, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 %74
  store i32* %76, i32** %7, align 8
  %77 = load i32*, i32** %7, align 8
  store i32* %77, i32** @M_sorted_global_id_list, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32* %81, i32** %7, align 8
  %82 = load i32*, i32** %7, align 8
  store i32* %82, i32** @M_sublist_temp_id_list, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32* %86, i32** %7, align 8
  %87 = load i32*, i32** %7, align 8
  store i32* %87, i32** @M_sublist_temp_id_by_global, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32* %91, i32** %7, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @LF_HAVE_VALUES, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %26
  %97 = load i32*, i32** %7, align 8
  store i32* %97, i32** @M_values, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load i32*, i32** %7, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32* %101, i32** %7, align 8
  br label %103

102:                                              ; preds = %26
  store i32* null, i32** @M_values, align 8
  br label %103

103:                                              ; preds = %102, %96
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @LF_HAVE_DATES, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load i32*, i32** %7, align 8
  store i32* %109, i32** @M_dates, align 8
  %110 = load i32, i32* %5, align 4
  %111 = load i32*, i32** %7, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  store i32* %113, i32** %7, align 8
  br label %115

114:                                              ; preds = %103
  store i32* null, i32** @M_dates, align 8
  br label %115

115:                                              ; preds = %114, %108
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @LF_HAVE_TEXTS, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load i32*, i32** %7, align 8
  store i32* %121, i32** @M_text_offset, align 8
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  %124 = load i32*, i32** %7, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32* %126, i32** %7, align 8
  br label %128

127:                                              ; preds = %115
  store i32* null, i32** @M_text_offset, align 8
  br label %128

128:                                              ; preds = %127, %120
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @LF_BIGFLAGS, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %128
  %134 = load i32*, i32** %7, align 8
  store i32* %134, i32** @M_flags, align 8
  store i8* null, i8** @M_flags_small, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = bitcast i32* %138 to i8*
  store i8* %139, i8** @M_text_start, align 8
  br label %148

140:                                              ; preds = %128
  %141 = load i32*, i32** %7, align 8
  %142 = bitcast i32* %141 to i8*
  store i8* %142, i8** @M_flags_small, align 8
  store i32* null, i32** @M_flags, align 8
  %143 = load i32*, i32** %7, align 8
  %144 = bitcast i32* %143 to i8*
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  store i8* %147, i8** @M_text_start, align 8
  br label %148

148:                                              ; preds = %140, %133
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** @M_metafile, align 8
  %150 = call i64 @MF_READJUST(%struct.TYPE_12__* %149)
  %151 = inttoptr i64 %150 to i8*
  %152 = load i32, i32* @M_metafile_size, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  store i8* %154, i8** @M_text_end, align 8
  %155 = load i8*, i8** @M_text_start, align 8
  %156 = load i8*, i8** @M_text_end, align 8
  %157 = icmp ule i8* %155, %156
  %158 = zext i1 %157 to i32
  %159 = call i32 @assert(i32 %158)
  %160 = load i8*, i8** @M_text_start, align 8
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** @M_metafile, align 8
  %162 = call i64 @MF_READJUST(%struct.TYPE_12__* %161)
  %163 = inttoptr i64 %162 to i8*
  %164 = ptrtoint i8* %160 to i64
  %165 = ptrtoint i8* %163 to i64
  %166 = sub i64 %164, %165
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* @M_text_min_offset, align 4
  %168 = load i32, i32* @M_metafile_size, align 4
  store i32 %168, i32* @M_text_max_offset, align 4
  br label %169

169:                                              ; preds = %148, %25
  ret void
}

declare dso_local %struct.TYPE_12__* @get_metafile_ptr(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @MF_MAGIC(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_11__* @FLI_ENTRY_ADJUSTED(i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32) #1

declare dso_local i64 @MF_READJUST(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
