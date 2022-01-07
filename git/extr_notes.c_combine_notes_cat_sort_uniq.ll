; ModuleID = '/home/carl/AnghaBench/git/extr_notes.c_combine_notes_cat_sort_uniq.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes.c_combine_notes_cat_sort_uniq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32 }
%struct.strbuf = type { i32, i32 }
%struct.object_id = type opaque

@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@string_list_join_lines_helper = common dso_local global i32 0, align 4
@blob_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @combine_notes_cat_sort_uniq(%struct.object_id* %0, %struct.object_id* %1) #0 {
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca %struct.string_list, align 4
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  store %struct.object_id* %1, %struct.object_id** %4, align 8
  %8 = bitcast %struct.string_list* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 4, i1 false)
  %9 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i32 1, i32* %7, align 4
  %10 = load %struct.object_id*, %struct.object_id** %3, align 8
  %11 = call i64 @string_list_add_note_lines(%struct.string_list* %5, %struct.object_id* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %35

14:                                               ; preds = %2
  %15 = load %struct.object_id*, %struct.object_id** %4, align 8
  %16 = call i64 @string_list_add_note_lines(%struct.string_list* %5, %struct.object_id* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %35

19:                                               ; preds = %14
  %20 = call i32 @string_list_remove_empty_items(%struct.string_list* %5, i32 0)
  %21 = call i32 @string_list_sort(%struct.string_list* %5)
  %22 = call i32 @string_list_remove_duplicates(%struct.string_list* %5, i32 0)
  %23 = load i32, i32* @string_list_join_lines_helper, align 4
  %24 = call i64 @for_each_string_list(%struct.string_list* %5, i32 %23, %struct.strbuf* %6)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %35

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @blob_type, align 4
  %33 = load %struct.object_id*, %struct.object_id** %3, align 8
  %34 = call i32 @write_object_file(i32 %29, i32 %31, i32 %32, %struct.object_id* %33)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %27, %26, %18, %13
  %36 = call i32 @strbuf_release(%struct.strbuf* %6)
  %37 = call i32 @string_list_clear(%struct.string_list* %5, i32 0)
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @string_list_add_note_lines(%struct.string_list*, %struct.object_id*) #2

declare dso_local i32 @string_list_remove_empty_items(%struct.string_list*, i32) #2

declare dso_local i32 @string_list_sort(%struct.string_list*) #2

declare dso_local i32 @string_list_remove_duplicates(%struct.string_list*, i32) #2

declare dso_local i64 @for_each_string_list(%struct.string_list*, i32, %struct.strbuf*) #2

declare dso_local i32 @write_object_file(i32, i32, i32, %struct.object_id*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
