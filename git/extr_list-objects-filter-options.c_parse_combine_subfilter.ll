; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects-filter-options.c_parse_combine_subfilter.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects-filter-options.c_parse_combine_subfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_objects_filter_options = type { i64, i32*, i32 }
%struct.strbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_objects_filter_options*, %struct.strbuf*, %struct.strbuf*)* @parse_combine_subfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_combine_subfilter(%struct.list_objects_filter_options* %0, %struct.strbuf* %1, %struct.strbuf* %2) #0 {
  %4 = alloca %struct.list_objects_filter_options*, align 8
  %5 = alloca %struct.strbuf*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.list_objects_filter_options* %0, %struct.list_objects_filter_options** %4, align 8
  store %struct.strbuf* %1, %struct.strbuf** %5, align 8
  store %struct.strbuf* %2, %struct.strbuf** %6, align 8
  %10 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %4, align 8
  %11 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %4, align 8
  %14 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %4, align 8
  %17 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %4, align 8
  %20 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ALLOC_GROW_BY(i32* %15, i64 %18, i32 1, i32 %21)
  %23 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %24 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @url_percent_decode(i32 %25)
  store i8* %26, i8** %8, align 8
  %27 = load %struct.strbuf*, %struct.strbuf** %5, align 8
  %28 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %29 = call i64 @has_reserved_character(%struct.strbuf* %27, %struct.strbuf* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %3
  %32 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %4, align 8
  %33 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %39 = call i64 @gently_parse_list_objects_filter(i32* %36, i8* %37, %struct.strbuf* %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %31, %3
  %42 = phi i1 [ true, %3 ], [ %40, %31 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %9, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local i32 @ALLOC_GROW_BY(i32*, i64, i32, i32) #1

declare dso_local i8* @url_percent_decode(i32) #1

declare dso_local i64 @has_reserved_character(%struct.strbuf*, %struct.strbuf*) #1

declare dso_local i64 @gently_parse_list_objects_filter(i32*, i8*, %struct.strbuf*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
