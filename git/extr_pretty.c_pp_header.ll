; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_pp_header.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_pp_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pretty_print_context = type { i64 }
%struct.commit = type { i32 }
%struct.strbuf = type { i32 }

@CMIT_FMT_RAW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"parent \00", align 1
@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"bad parent line in commit\00", align 1
@GIT_MAX_HEXSZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"author \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Author\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"committer \00", align 1
@CMIT_FMT_FULL = common dso_local global i64 0, align 8
@CMIT_FMT_FULLER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"Commit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pretty_print_context*, i8*, %struct.commit*, i8**, %struct.strbuf*)* @pp_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_header(%struct.pretty_print_context* %0, i8* %1, %struct.commit* %2, i8** %3, %struct.strbuf* %4) #0 {
  %6 = alloca %struct.pretty_print_context*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.commit*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.strbuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pretty_print_context* %0, %struct.pretty_print_context** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.commit* %2, %struct.commit** %8, align 8
  store i8** %3, i8*** %9, align 8
  store %struct.strbuf* %4, %struct.strbuf** %10, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %118, %58, %40, %5
  %17 = load i8**, i8*** %9, align 8
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %13, align 8
  %19 = load i8**, i8*** %9, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @get_one_line(i8* %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  br label %119

25:                                               ; preds = %16
  %26 = load i32, i32* %14, align 4
  %27 = load i8**, i8*** %9, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = sext i32 %26 to i64
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %27, align 8
  %31 = load i32, i32* %14, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %119

34:                                               ; preds = %25
  %35 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %36 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CMIT_FMT_RAW, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @strbuf_add(%struct.strbuf* %41, i8* %42, i32 %43)
  br label %16

45:                                               ; preds = %34
  %46 = load i8*, i8** %13, align 8
  %47 = call i64 @starts_with(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 8
  %55 = icmp ne i32 %50, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = call i32 @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %49
  br label %16

59:                                               ; preds = %45
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %59
  %63 = load %struct.commit*, %struct.commit** %8, align 8
  %64 = getelementptr inbounds %struct.commit, %struct.commit* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @commit_list_count(i32 %65)
  store i32 %66, i32* %15, align 4
  %67 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* @GIT_MAX_HEXSZ, align 4
  %70 = add nsw i32 %69, 10
  %71 = mul i32 %68, %70
  %72 = add i32 %71, 20
  %73 = call i32 @strbuf_grow(%struct.strbuf* %67, i32 %72)
  %74 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %75 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %76 = load %struct.commit*, %struct.commit** %8, align 8
  %77 = call i32 @add_merge_info(%struct.pretty_print_context* %74, %struct.strbuf* %75, %struct.commit* %76)
  store i32 1, i32* %11, align 4
  br label %78

78:                                               ; preds = %62, %59
  %79 = load i8*, i8** %13, align 8
  %80 = call i64 @skip_prefix(i8* %79, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %12)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 80
  %86 = call i32 @strbuf_grow(%struct.strbuf* %83, i32 %85)
  %87 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %88 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @pp_user_info(%struct.pretty_print_context* %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %struct.strbuf* %88, i8* %89, i8* %90)
  br label %92

92:                                               ; preds = %82, %78
  %93 = load i8*, i8** %13, align 8
  %94 = call i64 @skip_prefix(i8* %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %12)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %118

96:                                               ; preds = %92
  %97 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %98 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @CMIT_FMT_FULL, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %108, label %102

102:                                              ; preds = %96
  %103 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %104 = getelementptr inbounds %struct.pretty_print_context, %struct.pretty_print_context* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @CMIT_FMT_FULLER, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %102, %96
  %109 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, 80
  %112 = call i32 @strbuf_grow(%struct.strbuf* %109, i32 %111)
  %113 = load %struct.pretty_print_context*, %struct.pretty_print_context** %6, align 8
  %114 = load %struct.strbuf*, %struct.strbuf** %10, align 8
  %115 = load i8*, i8** %12, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = call i32 @pp_user_info(%struct.pretty_print_context* %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), %struct.strbuf* %114, i8* %115, i8* %116)
  br label %118

118:                                              ; preds = %108, %102, %92
  br label %16

119:                                              ; preds = %33, %24
  ret void
}

declare dso_local i32 @get_one_line(i8*) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @commit_list_count(i32) #1

declare dso_local i32 @strbuf_grow(%struct.strbuf*, i32) #1

declare dso_local i32 @add_merge_info(%struct.pretty_print_context*, %struct.strbuf*, %struct.commit*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @pp_user_info(%struct.pretty_print_context*, i8*, %struct.strbuf*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
