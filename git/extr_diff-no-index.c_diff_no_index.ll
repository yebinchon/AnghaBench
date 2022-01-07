; ModuleID = '/home/carl/AnghaBench/git/extr_diff-no-index.c_diff_no_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff-no-index.c_diff_no_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.rev_info = type { i8*, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i8*, %struct.TYPE_9__, i64, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.option = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c"no-index\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PARSE_OPT_NONEG = common dso_local global i32 0, align 4
@PARSE_OPT_HIDDEN = common dso_local global i32 0, align 4
@diff_no_index_usage = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [81 x i8] c"Not a git repository. Use --no-index to compare two paths outside a working tree\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@file_from_standard_input = common dso_local global i8* null, align 8
@DIFF_FORMAT_PATCH = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"1/\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"2/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diff_no_index(%struct.rev_info* %0, i32 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rev_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i8*], align 16
  %13 = alloca %struct.strbuf, align 4
  %14 = alloca i8*, align 8
  %15 = alloca [2 x %struct.option], align 4
  %16 = alloca %struct.option*, align 8
  %17 = alloca i8*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %18 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %19 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %20 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %14, align 8
  %22 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %15, i64 0, i64 0
  %23 = load i32, i32* @PARSE_OPT_NONEG, align 4
  %24 = load i32, i32* @PARSE_OPT_HIDDEN, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @OPT_BOOL_F(i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = getelementptr inbounds %struct.option, %struct.option* %22, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.option, %struct.option* %22, i64 1
  %29 = call i32 (...) @OPT_END()
  %30 = getelementptr inbounds %struct.option, %struct.option* %28, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %15, i64 0, i64 0
  %32 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %33 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.option* @parse_options_concat(%struct.option* %31, i32 %35)
  store %struct.option* %36, %struct.option** %16, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i8**, i8*** %9, align 8
  %39 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %40 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.option*, %struct.option** %16, align 8
  %43 = load i32, i32* @diff_no_index_usage, align 4
  %44 = call i32 @parse_options(i32 %37, i8** %38, i8* %41, %struct.option* %42, i32 %43, i32 0)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 2
  br i1 %46, label %47, label %57

47:                                               ; preds = %4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = call i32 @_(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0))
  %52 = call i32 @warning(i32 %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* @diff_no_index_usage, align 4
  %55 = load %struct.option*, %struct.option** %16, align 8
  %56 = call i32 @usage_with_options(i32 %54, %struct.option* %55)
  br label %57

57:                                               ; preds = %53, %4
  %58 = load %struct.option*, %struct.option** %16, align 8
  %59 = call i32 @FREE_AND_NULL(%struct.option* %58)
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %90, %57
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 2
  br i1 %62, label %63, label %93

63:                                               ; preds = %60
  %64 = load i8**, i8*** %9, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 %65, 2
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %64, i64 %69
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %17, align 8
  %72 = load i8*, i8** %17, align 8
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %63
  %76 = load i8*, i8** @file_from_standard_input, align 8
  store i8* %76, i8** %17, align 8
  br label %85

77:                                               ; preds = %63
  %78 = load i8*, i8** %14, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i8*, i8** %14, align 8
  %82 = load i8*, i8** %17, align 8
  %83 = call i8* @prefix_filename(i8* %81, i8* %82)
  store i8* %83, i8** %17, align 8
  br label %84

84:                                               ; preds = %80, %77
  br label %85

85:                                               ; preds = %84, %75
  %86 = load i8*, i8** %17, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 %88
  store i8* %86, i8** %89, align 8
  br label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %60

93:                                               ; preds = %60
  %94 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  %95 = call i32 @fixup_paths(i8** %94, %struct.strbuf* %13)
  %96 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %97 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  %99 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %100 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %93
  %105 = load i64, i64* @DIFF_FORMAT_PATCH, align 8
  %106 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %107 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 3
  store i64 %105, i64* %108, align 8
  br label %109

109:                                              ; preds = %104, %93
  %110 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %111 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  %114 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %115 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  store i32 1, i32* %117, align 4
  %118 = load i8*, i8** %14, align 8
  %119 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %120 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  store i8* %118, i8** %121, align 8
  %122 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %123 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %122, i32 0, i32 1
  store i32 -2, i32* %123, align 8
  %124 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %125 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %124, i32 0, i32 2
  %126 = call i32 @diff_setup_done(%struct.TYPE_10__* %125)
  %127 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %128 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %127, i32 0, i32 2
  %129 = call i32 @setup_diff_pager(%struct.TYPE_10__* %128)
  %130 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %131 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  store i32 1, i32* %133, align 8
  %134 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %135 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %134, i32 0, i32 2
  %136 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 0
  %137 = load i8*, i8** %136, align 16
  %138 = getelementptr inbounds [2 x i8*], [2 x i8*]* %12, i64 0, i64 1
  %139 = load i8*, i8** %138, align 8
  %140 = call i64 @queue_diff(%struct.TYPE_10__* %135, i8* %137, i8* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %109
  store i32 1, i32* %5, align 4
  br label %157

143:                                              ; preds = %109
  %144 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %145 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %144, i32 0, i32 2
  %146 = call i32 @diff_set_mnemonic_prefix(%struct.TYPE_10__* %145, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %147 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %148 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %147, i32 0, i32 2
  %149 = call i32 @diffcore_std(%struct.TYPE_10__* %148)
  %150 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %151 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %150, i32 0, i32 2
  %152 = call i32 @diff_flush(%struct.TYPE_10__* %151)
  %153 = call i32 @strbuf_release(%struct.strbuf* %13)
  %154 = load %struct.rev_info*, %struct.rev_info** %6, align 8
  %155 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %154, i32 0, i32 2
  %156 = call i32 @diff_result_code(%struct.TYPE_10__* %155, i32 0)
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %143, %142
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT_BOOL_F(i32, i8*, i32*, i8*, i32) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local %struct.option* @parse_options_concat(%struct.option*, i32) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #2

declare dso_local i32 @warning(i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @usage_with_options(i32, %struct.option*) #2

declare dso_local i32 @FREE_AND_NULL(%struct.option*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i8* @prefix_filename(i8*, i8*) #2

declare dso_local i32 @fixup_paths(i8**, %struct.strbuf*) #2

declare dso_local i32 @diff_setup_done(%struct.TYPE_10__*) #2

declare dso_local i32 @setup_diff_pager(%struct.TYPE_10__*) #2

declare dso_local i64 @queue_diff(%struct.TYPE_10__*, i8*, i8*) #2

declare dso_local i32 @diff_set_mnemonic_prefix(%struct.TYPE_10__*, i8*, i8*) #2

declare dso_local i32 @diffcore_std(%struct.TYPE_10__*) #2

declare dso_local i32 @diff_flush(%struct.TYPE_10__*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @diff_result_code(%struct.TYPE_10__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
