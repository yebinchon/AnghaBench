; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_init_diff_words_data.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_init_diff_words_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_words_style = type { i64, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i8* }
%struct.emit_callback = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.diff_words_style*, i32*, %struct.diff_options* }
%struct.diff_options = type { i64, i32, i8*, %struct.TYPE_6__*, i8* }
%struct.TYPE_6__ = type { i32 }
%struct.diff_filespec = type { i32 }

@diff_word_regex_cfg = common dso_local global i8* null, align 8
@REG_EXTENDED = common dso_local global i32 0, align 4
@REG_NEWLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"invalid regular expression: %s\00", align 1
@diff_words_styles = common dso_local global %struct.diff_words_style* null, align 8
@DIFF_FILE_OLD = common dso_local global i32 0, align 4
@DIFF_FILE_NEW = common dso_local global i32 0, align 4
@DIFF_CONTEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emit_callback*, %struct.diff_options*, %struct.diff_filespec*, %struct.diff_filespec*)* @init_diff_words_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_diff_words_data(%struct.emit_callback* %0, %struct.diff_options* %1, %struct.diff_filespec* %2, %struct.diff_filespec* %3) #0 {
  %5 = alloca %struct.emit_callback*, align 8
  %6 = alloca %struct.diff_options*, align 8
  %7 = alloca %struct.diff_filespec*, align 8
  %8 = alloca %struct.diff_filespec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.diff_options*, align 8
  %11 = alloca %struct.diff_words_style*, align 8
  store %struct.emit_callback* %0, %struct.emit_callback** %5, align 8
  store %struct.diff_options* %1, %struct.diff_options** %6, align 8
  store %struct.diff_filespec* %2, %struct.diff_filespec** %7, align 8
  store %struct.diff_filespec* %3, %struct.diff_filespec** %8, align 8
  %12 = call %struct.diff_options* @xmalloc(i32 40)
  store %struct.diff_options* %12, %struct.diff_options** %10, align 8
  %13 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %14 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %15 = call i32 @memcpy(%struct.diff_options* %13, %struct.diff_options* %14, i32 40)
  %16 = call i8* @xcalloc(i32 1, i32 4)
  %17 = bitcast i8* %16 to %struct.TYPE_7__*
  %18 = load %struct.emit_callback*, %struct.emit_callback** %5, align 8
  %19 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %18, i32 0, i32 0
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %19, align 8
  %20 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %21 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.emit_callback*, %struct.emit_callback** %5, align 8
  %24 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i64 %22, i64* %26, align 8
  %27 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %28 = load %struct.emit_callback*, %struct.emit_callback** %5, align 8
  %29 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  store %struct.diff_options* %27, %struct.diff_options** %31, align 8
  %32 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %33 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %32, i32 0, i32 4
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %4
  %37 = call i8* @xcalloc(i32 1, i32 4)
  %38 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %39 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  br label %40

40:                                               ; preds = %36, %4
  %41 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %42 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %40
  %46 = load %struct.diff_filespec*, %struct.diff_filespec** %7, align 8
  %47 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %48 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %47, i32 0, i32 3
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @userdiff_word_regex(%struct.diff_filespec* %46, i32 %51)
  %53 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %54 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %45, %40
  %56 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %57 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %70, label %60

60:                                               ; preds = %55
  %61 = load %struct.diff_filespec*, %struct.diff_filespec** %8, align 8
  %62 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %63 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %62, i32 0, i32 3
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @userdiff_word_regex(%struct.diff_filespec* %61, i32 %66)
  %68 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %69 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %60, %55
  %71 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %72 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %70
  %76 = load i8*, i8** @diff_word_regex_cfg, align 8
  %77 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %78 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %75, %70
  %80 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %81 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %110

84:                                               ; preds = %79
  %85 = call %struct.diff_options* @xmalloc(i32 4)
  %86 = bitcast %struct.diff_options* %85 to i32*
  %87 = load %struct.emit_callback*, %struct.emit_callback** %5, align 8
  %88 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  store i32* %86, i32** %90, align 8
  %91 = load %struct.emit_callback*, %struct.emit_callback** %5, align 8
  %92 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %97 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* @REG_EXTENDED, align 4
  %100 = load i32, i32* @REG_NEWLINE, align 4
  %101 = or i32 %99, %100
  %102 = call i64 @regcomp(i32* %95, i8* %98, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %84
  %105 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %106 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %104, %84
  br label %110

110:                                              ; preds = %109, %79
  store i32 0, i32* %9, align 4
  br label %111

111:                                              ; preds = %137, %110
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.diff_words_style*, %struct.diff_words_style** @diff_words_styles, align 8
  %114 = call i32 @ARRAY_SIZE(%struct.diff_words_style* %113)
  %115 = icmp slt i32 %112, %114
  br i1 %115, label %116, label %140

116:                                              ; preds = %111
  %117 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %118 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.diff_words_style*, %struct.diff_words_style** @diff_words_styles, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.diff_words_style, %struct.diff_words_style* %120, i64 %122
  %124 = getelementptr inbounds %struct.diff_words_style, %struct.diff_words_style* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %119, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %116
  %128 = load %struct.diff_words_style*, %struct.diff_words_style** @diff_words_styles, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.diff_words_style, %struct.diff_words_style* %128, i64 %130
  %132 = load %struct.emit_callback*, %struct.emit_callback** %5, align 8
  %133 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %132, i32 0, i32 0
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  store %struct.diff_words_style* %131, %struct.diff_words_style** %135, align 8
  br label %140

136:                                              ; preds = %116
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %9, align 4
  br label %111

140:                                              ; preds = %127, %111
  %141 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %142 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @want_color(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %170

146:                                              ; preds = %140
  %147 = load %struct.emit_callback*, %struct.emit_callback** %5, align 8
  %148 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %147, i32 0, i32 0
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  %151 = load %struct.diff_words_style*, %struct.diff_words_style** %150, align 8
  store %struct.diff_words_style* %151, %struct.diff_words_style** %11, align 8
  %152 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %153 = load i32, i32* @DIFF_FILE_OLD, align 4
  %154 = call i8* @diff_get_color_opt(%struct.diff_options* %152, i32 %153)
  %155 = load %struct.diff_words_style*, %struct.diff_words_style** %11, align 8
  %156 = getelementptr inbounds %struct.diff_words_style, %struct.diff_words_style* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  store i8* %154, i8** %157, align 8
  %158 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %159 = load i32, i32* @DIFF_FILE_NEW, align 4
  %160 = call i8* @diff_get_color_opt(%struct.diff_options* %158, i32 %159)
  %161 = load %struct.diff_words_style*, %struct.diff_words_style** %11, align 8
  %162 = getelementptr inbounds %struct.diff_words_style, %struct.diff_words_style* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  store i8* %160, i8** %163, align 8
  %164 = load %struct.diff_options*, %struct.diff_options** %10, align 8
  %165 = load i32, i32* @DIFF_CONTEXT, align 4
  %166 = call i8* @diff_get_color_opt(%struct.diff_options* %164, i32 %165)
  %167 = load %struct.diff_words_style*, %struct.diff_words_style** %11, align 8
  %168 = getelementptr inbounds %struct.diff_words_style, %struct.diff_words_style* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  store i8* %166, i8** %169, align 8
  br label %170

170:                                              ; preds = %146, %140
  ret void
}

declare dso_local %struct.diff_options* @xmalloc(i32) #1

declare dso_local i32 @memcpy(%struct.diff_options*, %struct.diff_options*, i32) #1

declare dso_local i8* @xcalloc(i32, i32) #1

declare dso_local i8* @userdiff_word_regex(%struct.diff_filespec*, i32) #1

declare dso_local i64 @regcomp(i32*, i8*, i32) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.diff_words_style*) #1

declare dso_local i64 @want_color(i32) #1

declare dso_local i8* @diff_get_color_opt(%struct.diff_options*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
