; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects-filter-options.c_parse_list_objects_filter.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects-filter-options.c_parse_list_objects_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.list_objects_filter_options = type { i32, %struct.list_objects_filter_options*, i32, i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_list_objects_filter(%struct.list_objects_filter_options* %0, i8* %1) #0 {
  %3 = alloca %struct.list_objects_filter_options*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.strbuf, align 4
  %6 = alloca i32, align 4
  store %struct.list_objects_filter_options* %0, %struct.list_objects_filter_options** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %8 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %3, align 8
  %9 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %3, align 8
  %14 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %13, i32 0, i32 3
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @xstrdup(i8* %15)
  %17 = call i32 @string_list_append(i32* %14, i32 %16)
  %18 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %3, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @gently_parse_list_objects_filter(%struct.list_objects_filter_options* %18, i8* %19, %struct.strbuf* %5)
  store i32 %20, i32* %6, align 4
  br label %52

21:                                               ; preds = %2
  %22 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %3, align 8
  %23 = call i32 @transform_to_combine_type(%struct.list_objects_filter_options* %22)
  %24 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %3, align 8
  %25 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %24, i32 0, i32 3
  %26 = call i32 @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @string_list_append(i32* %25, i32 %26)
  %28 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %3, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @filter_spec_append_urlencode(%struct.list_objects_filter_options* %28, i8* %29)
  %31 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %3, align 8
  %32 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %31, i32 0, i32 1
  %33 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %32, align 8
  %34 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %3, align 8
  %35 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %3, align 8
  %38 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ALLOC_GROW_BY(%struct.list_objects_filter_options* %33, i32 %36, i32 1, i32 %39)
  %41 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %3, align 8
  %42 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %41, i32 0, i32 1
  %43 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %42, align 8
  %44 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %3, align 8
  %45 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %43, i64 %48
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @gently_parse_list_objects_filter(%struct.list_objects_filter_options* %49, i8* %50, %struct.strbuf* %5)
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %21, %12
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @die(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %55, %52
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @string_list_append(i32*, i32) #2

declare dso_local i32 @xstrdup(i8*) #2

declare dso_local i32 @gently_parse_list_objects_filter(%struct.list_objects_filter_options*, i8*, %struct.strbuf*) #2

declare dso_local i32 @transform_to_combine_type(%struct.list_objects_filter_options*) #2

declare dso_local i32 @filter_spec_append_urlencode(%struct.list_objects_filter_options*, i8*) #2

declare dso_local i32 @ALLOC_GROW_BY(%struct.list_objects_filter_options*, i32, i32, i32) #2

declare dso_local i32 @die(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
