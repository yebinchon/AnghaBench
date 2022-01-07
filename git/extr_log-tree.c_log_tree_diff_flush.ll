; ModuleID = '/home/carl/AnghaBench/git/extr_log-tree.c_log_tree_diff_flush.c'
source_filename = "/home/carl/AnghaBench/git/extr_log-tree.c_log_tree_diff_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i64, %struct.TYPE_4__, i64, i64, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.strbuf* (%struct.TYPE_4__*, i32)* }
%struct.strbuf = type { i32, i32 }

@DIFF_FORMAT_NO_OUTPUT = common dso_local global i32 0, align 4
@CMIT_FMT_ONELINE = common dso_local global i64 0, align 8
@DIFF_FORMAT_DIFFSTAT = common dso_local global i32 0, align 4
@DIFF_FORMAT_PATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"---\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @log_tree_diff_flush(%struct.rev_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rev_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.strbuf*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  %7 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %8 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %7, i32 0, i32 2
  store i64 0, i64* %8, align 8
  %9 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %10 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %9, i32 0, i32 1
  %11 = call i32 @diffcore_std(%struct.TYPE_4__* %10)
  %12 = call i64 (...) @diff_queue_is_empty()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %16 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @DIFF_FORMAT_NO_OUTPUT, align 4
  %20 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %21 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %24 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %23, i32 0, i32 1
  %25 = call i32 @diff_flush(%struct.TYPE_4__* %24)
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %28 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  store i32 0, i32* %2, align 4
  br label %131

30:                                               ; preds = %1
  %31 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %32 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %127

35:                                               ; preds = %30
  %36 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %37 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %127, label %40

40:                                               ; preds = %35
  %41 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %42 = call i32 @show_log(%struct.rev_info* %41)
  %43 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %44 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @DIFF_FORMAT_NO_OUTPUT, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %126

51:                                               ; preds = %40
  %52 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %53 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %126

56:                                               ; preds = %51
  %57 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %58 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CMIT_FMT_ONELINE, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %126

62:                                               ; preds = %56
  %63 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %64 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @commit_format_is_empty(i64 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %126, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* @DIFF_FORMAT_DIFFSTAT, align 4
  %70 = load i32, i32* @DIFF_FORMAT_PATCH, align 4
  %71 = or i32 %69, %70
  store i32 %71, i32* %5, align 4
  %72 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %73 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  %75 = load %struct.strbuf* (%struct.TYPE_4__*, i32)*, %struct.strbuf* (%struct.TYPE_4__*, i32)** %74, align 8
  %76 = icmp ne %struct.strbuf* (%struct.TYPE_4__*, i32)* %75, null
  br i1 %76, label %77, label %100

77:                                               ; preds = %68
  store %struct.strbuf* null, %struct.strbuf** %6, align 8
  %78 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %79 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  %81 = load %struct.strbuf* (%struct.TYPE_4__*, i32)*, %struct.strbuf* (%struct.TYPE_4__*, i32)** %80, align 8
  %82 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %83 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %82, i32 0, i32 1
  %84 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %85 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call %struct.strbuf* %81(%struct.TYPE_4__* %83, i32 %87)
  store %struct.strbuf* %88, %struct.strbuf** %6, align 8
  %89 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %90 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %93 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %96 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @fwrite(i32 %91, i32 %94, i32 1, i32 %98)
  br label %100

100:                                              ; preds = %77, %68
  %101 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %102 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %120, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %108 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %106, %110
  %112 = load i32, i32* %5, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %105
  %115 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %116 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @fprintf(i32 %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %120

120:                                              ; preds = %114, %105, %100
  %121 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %122 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @putc(i8 signext 10, i32 %124)
  br label %126

126:                                              ; preds = %120, %62, %56, %51, %40
  br label %127

127:                                              ; preds = %126, %35, %30
  %128 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %129 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %128, i32 0, i32 1
  %130 = call i32 @diff_flush(%struct.TYPE_4__* %129)
  store i32 1, i32* %2, align 4
  br label %131

131:                                              ; preds = %127, %14
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @diffcore_std(%struct.TYPE_4__*) #1

declare dso_local i64 @diff_queue_is_empty(...) #1

declare dso_local i32 @diff_flush(%struct.TYPE_4__*) #1

declare dso_local i32 @show_log(%struct.rev_info*) #1

declare dso_local i32 @commit_format_is_empty(i64) #1

declare dso_local i32 @fwrite(i32, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @putc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
