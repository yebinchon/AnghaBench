; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_record_df_conflict_files.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_record_df_conflict_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.string_list_item*, i32 }
%struct.string_list_item = type { i8*, %struct.stage_data* }
%struct.stage_data = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.merge_options = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.string_list, i64 }
%struct.TYPE_6__ = type { %struct.stage_data* }

@STRING_LIST_INIT_NODUP = common dso_local global %struct.string_list zeroinitializer, align 8
@string_list_df_name_compare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.merge_options*, %struct.string_list*)* @record_df_conflict_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record_df_conflict_files(%struct.merge_options* %0, %struct.string_list* %1) #0 {
  %3 = alloca %struct.merge_options*, align 8
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca %struct.string_list, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.string_list_item*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.stage_data*, align 8
  store %struct.merge_options* %0, %struct.merge_options** %3, align 8
  store %struct.string_list* %1, %struct.string_list** %4, align 8
  %13 = bitcast %struct.string_list* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_NODUP to i8*), i64 24, i1 false)
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.merge_options*, %struct.merge_options** %3, align 8
  %15 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %132

21:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %43, %21
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.string_list*, %struct.string_list** %4, align 8
  %25 = getelementptr inbounds %struct.string_list, %struct.string_list* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %22
  %29 = load %struct.string_list*, %struct.string_list** %4, align 8
  %30 = getelementptr inbounds %struct.string_list, %struct.string_list* %29, i32 0, i32 1
  %31 = load %struct.string_list_item*, %struct.string_list_item** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %31, i64 %33
  store %struct.string_list_item* %34, %struct.string_list_item** %9, align 8
  %35 = load %struct.string_list_item*, %struct.string_list_item** %9, align 8
  %36 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %35, i32 0, i32 1
  %37 = load %struct.stage_data*, %struct.stage_data** %36, align 8
  %38 = load %struct.string_list_item*, %struct.string_list_item** %9, align 8
  %39 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call %struct.TYPE_6__* @string_list_append(%struct.string_list* %5, i8* %40)
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store %struct.stage_data* %37, %struct.stage_data** %42, align 8
  br label %43

43:                                               ; preds = %28
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %22

46:                                               ; preds = %22
  %47 = load i32, i32* @string_list_df_name_compare, align 4
  %48 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 2
  store i32 %47, i32* %48, align 8
  %49 = call i32 @string_list_sort(%struct.string_list* %5)
  %50 = load %struct.merge_options*, %struct.merge_options** %3, align 8
  %51 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i32 @string_list_clear(%struct.string_list* %53, i32 1)
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %127, %46
  %56 = load i32, i32* %8, align 4
  %57 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %130

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 1
  %62 = load %struct.string_list_item*, %struct.string_list_item** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %62, i64 %64
  %66 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %10, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @strlen(i8* %68)
  store i32 %69, i32* %11, align 4
  %70 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 1
  %71 = load %struct.string_list_item*, %struct.string_list_item** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %71, i64 %73
  %75 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %74, i32 0, i32 1
  %76 = load %struct.stage_data*, %struct.stage_data** %75, align 8
  store %struct.stage_data* %76, %struct.stage_data** %12, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %104

79:                                               ; preds = %60
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %104

83:                                               ; preds = %79
  %84 = load i8*, i8** %10, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i64 @memcmp(i8* %84, i8* %85, i32 %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %83
  %90 = load i8*, i8** %10, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 47
  br i1 %96, label %97, label %104

97:                                               ; preds = %89
  %98 = load %struct.merge_options*, %struct.merge_options** %3, align 8
  %99 = getelementptr inbounds %struct.merge_options, %struct.merge_options* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i8*, i8** %6, align 8
  %103 = call i32 @string_list_insert(%struct.string_list* %101, i8* %102)
  br label %104

104:                                              ; preds = %97, %89, %83, %79, %60
  %105 = load %struct.stage_data*, %struct.stage_data** %12, align 8
  %106 = getelementptr inbounds %struct.stage_data, %struct.stage_data* %105, i32 0, i32 0
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 2
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @S_ISREG(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %104
  %114 = load %struct.stage_data*, %struct.stage_data** %12, align 8
  %115 = getelementptr inbounds %struct.stage_data, %struct.stage_data* %114, i32 0, i32 0
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i64 2
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @S_ISLNK(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %113, %104
  %123 = load i8*, i8** %10, align 8
  store i8* %123, i8** %6, align 8
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %7, align 4
  br label %126

125:                                              ; preds = %113
  store i8* null, i8** %6, align 8
  br label %126

126:                                              ; preds = %125, %122
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  br label %55

130:                                              ; preds = %55
  %131 = call i32 @string_list_clear(%struct.string_list* %5, i32 0)
  br label %132

132:                                              ; preds = %130, %20
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_6__* @string_list_append(%struct.string_list*, i8*) #2

declare dso_local i32 @string_list_sort(%struct.string_list*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @string_list_insert(%struct.string_list*, i8*) #2

declare dso_local i64 @S_ISREG(i32) #2

declare dso_local i64 @S_ISLNK(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
