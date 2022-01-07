; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects-filter-options.c_parse_combine_filter.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects-filter-options.c_parse_combine_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_objects_filter_options = type { i32 }
%struct.strbuf = type { i32, i8* }

@.str = private unnamed_addr constant [34 x i8] c"expected something after combine:\00", align 1
@LOFC_COMBINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_objects_filter_options*, i8*, %struct.strbuf*)* @parse_combine_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_combine_filter(%struct.list_objects_filter_options* %0, i8* %1, %struct.strbuf* %2) #0 {
  %4 = alloca %struct.list_objects_filter_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca %struct.strbuf**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.list_objects_filter_options* %0, %struct.list_objects_filter_options** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.strbuf* %2, %struct.strbuf** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call %struct.strbuf** @strbuf_split_str(i8* %11, i8 signext 43, i32 0)
  store %struct.strbuf** %12, %struct.strbuf*** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.strbuf**, %struct.strbuf*** %7, align 8
  %14 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %13, i64 0
  %15 = load %struct.strbuf*, %struct.strbuf** %14, align 8
  %16 = icmp ne %struct.strbuf* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %19 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @strbuf_addstr(%struct.strbuf* %18, i32 %19)
  store i32 1, i32* %9, align 4
  br label %84

21:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %22

22:                                               ; preds = %77, %21
  %23 = load %struct.strbuf**, %struct.strbuf*** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %23, i64 %24
  %26 = load %struct.strbuf*, %struct.strbuf** %25, align 8
  %27 = icmp ne %struct.strbuf* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %28, %22
  %33 = phi i1 [ false, %22 ], [ %31, %28 ]
  br i1 %33, label %34, label %80

34:                                               ; preds = %32
  %35 = load %struct.strbuf**, %struct.strbuf*** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, 1
  %38 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %35, i64 %37
  %39 = load %struct.strbuf*, %struct.strbuf** %38, align 8
  %40 = icmp ne %struct.strbuf* %39, null
  br i1 %40, label %41, label %69

41:                                               ; preds = %34
  %42 = load %struct.strbuf**, %struct.strbuf*** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %42, i64 %43
  %45 = load %struct.strbuf*, %struct.strbuf** %44, align 8
  %46 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %10, align 8
  %50 = load %struct.strbuf**, %struct.strbuf*** %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %50, i64 %51
  %53 = load %struct.strbuf*, %struct.strbuf** %52, align 8
  %54 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 43
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.strbuf**, %struct.strbuf*** %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %63, i64 %64
  %66 = load %struct.strbuf*, %struct.strbuf** %65, align 8
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @strbuf_remove(%struct.strbuf* %66, i64 %67, i32 1)
  br label %69

69:                                               ; preds = %41, %34
  %70 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %4, align 8
  %71 = load %struct.strbuf**, %struct.strbuf*** %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %71, i64 %72
  %74 = load %struct.strbuf*, %struct.strbuf** %73, align 8
  %75 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %76 = call i32 @parse_combine_subfilter(%struct.list_objects_filter_options* %70, %struct.strbuf* %74, %struct.strbuf* %75)
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %69
  %78 = load i64, i64* %8, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %8, align 8
  br label %22

80:                                               ; preds = %32
  %81 = load i32, i32* @LOFC_COMBINE, align 4
  %82 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %4, align 8
  %83 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %80, %17
  %85 = load %struct.strbuf**, %struct.strbuf*** %7, align 8
  %86 = call i32 @strbuf_list_free(%struct.strbuf** %85)
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %4, align 8
  %91 = call i32 @list_objects_filter_release(%struct.list_objects_filter_options* %90)
  %92 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %4, align 8
  %93 = call i32 @memset(%struct.list_objects_filter_options* %92, i32 0, i32 4)
  br label %94

94:                                               ; preds = %89, %84
  %95 = load i32, i32* %9, align 4
  ret i32 %95
}

declare dso_local %struct.strbuf** @strbuf_split_str(i8*, i8 signext, i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strbuf_remove(%struct.strbuf*, i64, i32) #1

declare dso_local i32 @parse_combine_subfilter(%struct.list_objects_filter_options*, %struct.strbuf*, %struct.strbuf*) #1

declare dso_local i32 @strbuf_list_free(%struct.strbuf**) #1

declare dso_local i32 @list_objects_filter_release(%struct.list_objects_filter_options*) #1

declare dso_local i32 @memset(%struct.list_objects_filter_options*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
