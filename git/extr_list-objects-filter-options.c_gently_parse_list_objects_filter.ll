; ModuleID = '/home/carl/AnghaBench/git/extr_list-objects-filter-options.c_gently_parse_list_objects_filter.c'
source_filename = "/home/carl/AnghaBench/git/extr_list-objects-filter-options.c_gently_parse_list_objects_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_objects_filter_options = type { i64, i32, i32, i32 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"filter_options already populated\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"blob:none\00", align 1
@LOFC_BLOB_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"blob:limit=\00", align 1
@LOFC_BLOB_LIMIT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"tree:\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"expected 'tree:<depth>'\00", align 1
@LOFC_TREE_DEPTH = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"sparse:oid=\00", align 1
@LOFC_SPARSE_OID = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"sparse:path=\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"sparse:path filters support has been dropped\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"combine:\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"invalid filter-spec '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_objects_filter_options*, i8*, %struct.strbuf*)* @gently_parse_list_objects_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gently_parse_list_objects_filter(%struct.list_objects_filter_options* %0, i8* %1, %struct.strbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.list_objects_filter_options*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca i8*, align 8
  store %struct.list_objects_filter_options* %0, %struct.list_objects_filter_options** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.strbuf* %2, %struct.strbuf** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %105

12:                                               ; preds = %3
  %13 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %5, align 8
  %14 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 @BUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %12
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* @LOFC_BLOB_NONE, align 8
  %25 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %5, align 8
  %26 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  store i32 0, i32* %4, align 4
  br label %105

27:                                               ; preds = %19
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @skip_prefix(i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %8)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %5, align 8
  %34 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %33, i32 0, i32 3
  %35 = call i64 @git_parse_ulong(i8* %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i64, i64* @LOFC_BLOB_LIMIT, align 8
  %39 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %5, align 8
  %40 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  store i32 0, i32* %4, align 4
  br label %105

41:                                               ; preds = %31
  br label %97

42:                                               ; preds = %27
  %43 = load i8*, i8** %6, align 8
  %44 = call i64 @skip_prefix(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %8)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %5, align 8
  %49 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %48, i32 0, i32 2
  %50 = call i64 @git_parse_ulong(i8* %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %54 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %55 = call i32 @strbuf_addstr(%struct.strbuf* %53, i32 %54)
  store i32 1, i32* %4, align 4
  br label %105

56:                                               ; preds = %46
  %57 = load i64, i64* @LOFC_TREE_DEPTH, align 8
  %58 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %5, align 8
  %59 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  store i32 0, i32* %4, align 4
  br label %105

60:                                               ; preds = %42
  %61 = load i8*, i8** %6, align 8
  %62 = call i64 @skip_prefix(i8* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %8)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @xstrdup(i8* %65)
  %67 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %5, align 8
  %68 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load i64, i64* @LOFC_SPARSE_OID, align 8
  %70 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %5, align 8
  %71 = getelementptr inbounds %struct.list_objects_filter_options, %struct.list_objects_filter_options* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  store i32 0, i32* %4, align 4
  br label %105

72:                                               ; preds = %60
  %73 = load i8*, i8** %6, align 8
  %74 = call i64 @skip_prefix(i8* %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %8)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %78 = icmp ne %struct.strbuf* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %81 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  %82 = call i32 @strbuf_addstr(%struct.strbuf* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %76
  store i32 1, i32* %4, align 4
  br label %105

84:                                               ; preds = %72
  %85 = load i8*, i8** %6, align 8
  %86 = call i64 @skip_prefix(i8* %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %8)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %5, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %92 = call i32 @parse_combine_filter(%struct.list_objects_filter_options* %89, i8* %90, %struct.strbuf* %91)
  store i32 %92, i32* %4, align 4
  br label %105

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %96, %41
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %100 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 @strbuf_addf(%struct.strbuf* %99, i32 %100, i8* %101)
  %103 = load %struct.list_objects_filter_options*, %struct.list_objects_filter_options** %5, align 8
  %104 = call i32 @memset(%struct.list_objects_filter_options* %103, i32 0, i32 24)
  store i32 1, i32* %4, align 4
  br label %105

105:                                              ; preds = %98, %88, %83, %64, %56, %52, %37, %23, %11
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i64 @git_parse_ulong(i8*, i32*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @parse_combine_filter(%struct.list_objects_filter_options*, i8*, %struct.strbuf*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i32, i8*) #1

declare dso_local i32 @memset(%struct.list_objects_filter_options*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
