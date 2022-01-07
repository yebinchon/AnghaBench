; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_diff_words_show.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_diff_words_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_words_data = type { i64, %struct.TYPE_12__, %struct.TYPE_12__, %struct.diff_options*, i32, i64, %struct.diff_words_style* }
%struct.TYPE_12__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64 }
%struct.diff_options = type { i32 }
%struct.diff_words_style = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32 }

@DIFF_SYMBOL_WORD_DIFF = common dso_local global i32 0, align 4
@fn_out_diff_words_aux = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unable to generate word diff\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.diff_words_data*)* @diff_words_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diff_words_show(%struct.diff_words_data* %0) #0 {
  %2 = alloca %struct.diff_words_data*, align 8
  %3 = alloca %struct.TYPE_14__, align 8
  %4 = alloca %struct.TYPE_14__, align 8
  %5 = alloca %struct.TYPE_15__, align 4
  %6 = alloca %struct.TYPE_15__, align 4
  %7 = alloca %struct.diff_words_style*, align 8
  %8 = alloca %struct.diff_options*, align 8
  %9 = alloca i8*, align 8
  store %struct.diff_words_data* %0, %struct.diff_words_data** %2, align 8
  %10 = load %struct.diff_words_data*, %struct.diff_words_data** %2, align 8
  %11 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %10, i32 0, i32 6
  %12 = load %struct.diff_words_style*, %struct.diff_words_style** %11, align 8
  store %struct.diff_words_style* %12, %struct.diff_words_style** %7, align 8
  %13 = load %struct.diff_words_data*, %struct.diff_words_data** %2, align 8
  %14 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %13, i32 0, i32 3
  %15 = load %struct.diff_options*, %struct.diff_options** %14, align 8
  store %struct.diff_options* %15, %struct.diff_options** %8, align 8
  %16 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %17 = call i32 @assert(%struct.diff_options* %16)
  %18 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %19 = call i8* @diff_line_prefix(%struct.diff_options* %18)
  store i8* %19, i8** %9, align 8
  %20 = load %struct.diff_words_data*, %struct.diff_words_data** %2, align 8
  %21 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %58, label %26

26:                                               ; preds = %1
  %27 = load %struct.diff_words_data*, %struct.diff_words_data** %2, align 8
  %28 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %27, i32 0, i32 3
  %29 = load %struct.diff_options*, %struct.diff_options** %28, align 8
  %30 = load i32, i32* @DIFF_SYMBOL_WORD_DIFF, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = call i32 @emit_diff_symbol(%struct.diff_options* %29, i32 %30, i8* %31, i32 %33, i32 0)
  %35 = load %struct.diff_words_data*, %struct.diff_words_data** %2, align 8
  %36 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %35, i32 0, i32 3
  %37 = load %struct.diff_options*, %struct.diff_options** %36, align 8
  %38 = load %struct.diff_words_style*, %struct.diff_words_style** %7, align 8
  %39 = getelementptr inbounds %struct.diff_words_style, %struct.diff_words_style* %38, i32 0, i32 2
  %40 = load %struct.diff_words_style*, %struct.diff_words_style** %7, align 8
  %41 = getelementptr inbounds %struct.diff_words_style, %struct.diff_words_style* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.diff_words_data*, %struct.diff_words_data** %2, align 8
  %44 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.diff_words_data*, %struct.diff_words_data** %2, align 8
  %49 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @fn_out_diff_words_write_helper(%struct.diff_options* %37, i32* %39, i32 %42, i64 %47, i64 %52)
  %54 = load %struct.diff_words_data*, %struct.diff_words_data** %2, align 8
  %55 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  br label %162

58:                                               ; preds = %1
  %59 = load %struct.diff_words_data*, %struct.diff_words_data** %2, align 8
  %60 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.diff_words_data*, %struct.diff_words_data** %2, align 8
  %65 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.diff_words_data*, %struct.diff_words_data** %2, align 8
  %67 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %66, i32 0, i32 5
  store i64 0, i64* %67, align 8
  %68 = call i32 @memset(%struct.TYPE_14__* %3, i32 0, i32 16)
  %69 = call i32 @memset(%struct.TYPE_14__* %4, i32 0, i32 16)
  %70 = load %struct.diff_words_data*, %struct.diff_words_data** %2, align 8
  %71 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %70, i32 0, i32 2
  %72 = load %struct.diff_words_data*, %struct.diff_words_data** %2, align 8
  %73 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @diff_words_fill(%struct.TYPE_12__* %71, %struct.TYPE_15__* %5, i32 %74)
  %76 = load %struct.diff_words_data*, %struct.diff_words_data** %2, align 8
  %77 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %76, i32 0, i32 1
  %78 = load %struct.diff_words_data*, %struct.diff_words_data** %2, align 8
  %79 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @diff_words_fill(%struct.TYPE_12__* %77, %struct.TYPE_15__* %6, i32 %80)
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  store i64 0, i64* %83, align 8
  %84 = load i32, i32* @fn_out_diff_words_aux, align 4
  %85 = load %struct.diff_words_data*, %struct.diff_words_data** %2, align 8
  %86 = call i64 @xdi_diff_outf(%struct.TYPE_15__* %5, %struct.TYPE_15__* %6, i32 %84, i32* null, %struct.diff_words_data* %85, %struct.TYPE_14__* %3, %struct.TYPE_14__* %4)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %58
  %89 = call i32 @die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %58
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @free(i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @free(i32 %95)
  %97 = load %struct.diff_words_data*, %struct.diff_words_data** %2, align 8
  %98 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.diff_words_data*, %struct.diff_words_data** %2, align 8
  %101 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.diff_words_data*, %struct.diff_words_data** %2, align 8
  %106 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %104, %109
  %111 = icmp ne i64 %99, %110
  br i1 %111, label %112, label %153

112:                                              ; preds = %90
  %113 = load %struct.diff_words_data*, %struct.diff_words_data** %2, align 8
  %114 = call i64 @color_words_output_graph_prefix(%struct.diff_words_data* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %112
  %117 = load %struct.diff_words_data*, %struct.diff_words_data** %2, align 8
  %118 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %117, i32 0, i32 3
  %119 = load %struct.diff_options*, %struct.diff_options** %118, align 8
  %120 = load i32, i32* @DIFF_SYMBOL_WORD_DIFF, align 4
  %121 = load i8*, i8** %9, align 8
  %122 = load i8*, i8** %9, align 8
  %123 = call i32 @strlen(i8* %122)
  %124 = call i32 @emit_diff_symbol(%struct.diff_options* %119, i32 %120, i8* %121, i32 %123, i32 0)
  br label %125

125:                                              ; preds = %116, %112
  %126 = load %struct.diff_words_data*, %struct.diff_words_data** %2, align 8
  %127 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %126, i32 0, i32 3
  %128 = load %struct.diff_options*, %struct.diff_options** %127, align 8
  %129 = load %struct.diff_words_style*, %struct.diff_words_style** %7, align 8
  %130 = getelementptr inbounds %struct.diff_words_style, %struct.diff_words_style* %129, i32 0, i32 1
  %131 = load %struct.diff_words_style*, %struct.diff_words_style** %7, align 8
  %132 = getelementptr inbounds %struct.diff_words_style, %struct.diff_words_style* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.diff_words_data*, %struct.diff_words_data** %2, align 8
  %135 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.diff_words_data*, %struct.diff_words_data** %2, align 8
  %140 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = add nsw i64 %138, %143
  %145 = load %struct.diff_words_data*, %struct.diff_words_data** %2, align 8
  %146 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = sub nsw i64 %144, %147
  %149 = load %struct.diff_words_data*, %struct.diff_words_data** %2, align 8
  %150 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @fn_out_diff_words_write_helper(%struct.diff_options* %128, i32* %130, i32 %133, i64 %148, i64 %151)
  br label %153

153:                                              ; preds = %125, %90
  %154 = load %struct.diff_words_data*, %struct.diff_words_data** %2, align 8
  %155 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  store i64 0, i64* %157, align 8
  %158 = load %struct.diff_words_data*, %struct.diff_words_data** %2, align 8
  %159 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  store i64 0, i64* %161, align 8
  br label %162

162:                                              ; preds = %153, %26
  ret void
}

declare dso_local i32 @assert(%struct.diff_options*) #1

declare dso_local i8* @diff_line_prefix(%struct.diff_options*) #1

declare dso_local i32 @emit_diff_symbol(%struct.diff_options*, i32, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fn_out_diff_words_write_helper(%struct.diff_options*, i32*, i32, i64, i64) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @diff_words_fill(%struct.TYPE_12__*, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @xdi_diff_outf(%struct.TYPE_15__*, %struct.TYPE_15__*, i32, i32*, %struct.diff_words_data*, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i64 @color_words_output_graph_prefix(%struct.diff_words_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
