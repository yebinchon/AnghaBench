; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_repo_diff_setup.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_repo_diff_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.diff_options = type { i8*, i8, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_2__, i32, i32, i32, i32, i32, %struct.repository*, i32 }
%struct.TYPE_2__ = type { i32 }

@default_diff_options = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@OUTPUT_INDICATOR_NEW = common dso_local global i64 0, align 8
@OUTPUT_INDICATOR_OLD = common dso_local global i64 0, align 8
@OUTPUT_INDICATOR_CONTEXT = common dso_local global i64 0, align 8
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@diff_dirstat_permille_default = common dso_local global i32 0, align 4
@diff_context_default = common dso_local global i32 0, align 4
@diff_interhunk_context_default = common dso_local global i32 0, align 4
@ws_error_highlight_default = common dso_local global i32 0, align 4
@diff_change = common dso_local global i32 0, align 4
@diff_addremove = common dso_local global i32 0, align 4
@diff_use_color_default = common dso_local global i32 0, align 4
@diff_detect_rename_default = common dso_local global i32 0, align 4
@diff_algorithm = common dso_local global i32 0, align 4
@diff_indent_heuristic = common dso_local global i64 0, align 8
@INDENT_HEURISTIC = common dso_local global i32 0, align 4
@diff_order_file_cfg = common dso_local global i32 0, align 4
@diff_no_prefix = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@diff_mnemonic_prefix = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"a/\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"b/\00", align 1
@diff_color_moved_default = common dso_local global i32 0, align 4
@diff_color_moved_ws_default = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @repo_diff_setup(%struct.repository* %0, %struct.diff_options* %1) #0 {
  %3 = alloca %struct.repository*, align 8
  %4 = alloca %struct.diff_options*, align 8
  store %struct.repository* %0, %struct.repository** %3, align 8
  store %struct.diff_options* %1, %struct.diff_options** %4, align 8
  %5 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %6 = call i32 @memcpy(%struct.diff_options* %5, i32* @default_diff_options, i32 120)
  %7 = load i32, i32* @stdout, align 4
  %8 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %9 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 22
  store i32 %7, i32* %9, align 8
  %10 = load %struct.repository*, %struct.repository** %3, align 8
  %11 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %12 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %11, i32 0, i32 21
  store %struct.repository* %10, %struct.repository** %12, align 8
  %13 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %14 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i64, i64* @OUTPUT_INDICATOR_NEW, align 8
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8 43, i8* %17, align 1
  %18 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %19 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i64, i64* @OUTPUT_INDICATOR_OLD, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8 45, i8* %22, align 1
  %23 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %24 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i64, i64* @OUTPUT_INDICATOR_CONTEXT, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8 32, i8* %27, align 1
  %28 = load i32, i32* @DEFAULT_ABBREV, align 4
  %29 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %30 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %29, i32 0, i32 20
  store i32 %28, i32* %30, align 4
  %31 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %32 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %31, i32 0, i32 1
  store i8 10, i8* %32, align 8
  %33 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %34 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %33, i32 0, i32 2
  store i32 -1, i32* %34, align 4
  %35 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %36 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %35, i32 0, i32 3
  store i32 -1, i32* %36, align 8
  %37 = load i32, i32* @diff_dirstat_permille_default, align 4
  %38 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %39 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %38, i32 0, i32 19
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @diff_context_default, align 4
  %41 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %42 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %41, i32 0, i32 18
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @diff_interhunk_context_default, align 4
  %44 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %45 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %44, i32 0, i32 17
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @ws_error_highlight_default, align 4
  %47 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %48 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %47, i32 0, i32 16
  store i32 %46, i32* %48, align 4
  %49 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %50 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %49, i32 0, i32 15
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %53 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %52, i32 0, i32 14
  store i32* null, i32** %53, align 8
  %54 = load i32, i32* @diff_change, align 4
  %55 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %56 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %55, i32 0, i32 13
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @diff_addremove, align 4
  %58 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %59 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %58, i32 0, i32 12
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @diff_use_color_default, align 4
  %61 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %62 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %61, i32 0, i32 11
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @diff_detect_rename_default, align 4
  %64 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %65 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %64, i32 0, i32 10
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @diff_algorithm, align 4
  %67 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %68 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %67, i32 0, i32 9
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i64, i64* @diff_indent_heuristic, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %2
  %74 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %75 = load i32, i32* @INDENT_HEURISTIC, align 4
  %76 = call i32 @DIFF_XDL_SET(%struct.diff_options* %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %2
  %78 = load i32, i32* @diff_order_file_cfg, align 4
  %79 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %80 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %79, i32 0, i32 8
  store i32 %78, i32* %80, align 8
  %81 = load i64, i64* @diff_no_prefix, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %85 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %84, i32 0, i32 5
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %85, align 8
  %86 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %87 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %86, i32 0, i32 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %87, align 8
  br label %97

88:                                               ; preds = %77
  %89 = load i32, i32* @diff_mnemonic_prefix, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %93 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %92, i32 0, i32 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %93, align 8
  %94 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %95 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %94, i32 0, i32 5
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %95, align 8
  br label %96

96:                                               ; preds = %91, %88
  br label %97

97:                                               ; preds = %96, %83
  %98 = load i32, i32* @diff_color_moved_default, align 4
  %99 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %100 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %99, i32 0, i32 7
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @diff_color_moved_ws_default, align 4
  %102 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %103 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 8
  %104 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %105 = call i32 @prep_parse_options(%struct.diff_options* %104)
  ret void
}

declare dso_local i32 @memcpy(%struct.diff_options*, i32*, i32) #1

declare dso_local i32 @DIFF_XDL_SET(%struct.diff_options*, i32) #1

declare dso_local i32 @prep_parse_options(%struct.diff_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
