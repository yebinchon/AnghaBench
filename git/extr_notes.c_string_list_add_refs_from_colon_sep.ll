; ModuleID = '/home/carl/AnghaBench/git/extr_notes.c_string_list_add_refs_from_colon_sep.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes.c_string_list_add_refs_from_colon_sep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@STRING_LIST_INIT_NODUP = common dso_local global %struct.string_list zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @string_list_add_refs_from_colon_sep(%struct.string_list* %0, i8* %1) #0 {
  %3 = alloca %struct.string_list*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.string_list, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.string_list* %0, %struct.string_list** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = bitcast %struct.string_list* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_NODUP to i8*), i64 16, i1 false)
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @xstrdup(i8* %9)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @string_list_split_in_place(%struct.string_list* %5, i8* %11, i8 signext 58, i32 -1)
  %13 = call i32 @string_list_remove_empty_items(%struct.string_list* %5, i32 0)
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %29, %2
  %15 = load i32, i32* %7, align 4
  %16 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = load %struct.string_list*, %struct.string_list** %3, align 8
  %21 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @string_list_add_refs_by_glob(%struct.string_list* %20, i32 %27)
  br label %29

29:                                               ; preds = %19
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %14

32:                                               ; preds = %14
  %33 = call i32 @string_list_clear(%struct.string_list* %5, i32 0)
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @free(i8* %34)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @xstrdup(i8*) #2

declare dso_local i32 @string_list_split_in_place(%struct.string_list*, i8*, i8 signext, i32) #2

declare dso_local i32 @string_list_remove_empty_items(%struct.string_list*, i32) #2

declare dso_local i32 @string_list_add_refs_by_glob(%struct.string_list*, i32) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
