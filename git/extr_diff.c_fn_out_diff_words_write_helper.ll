; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_fn_out_diff_words_write_helper.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_fn_out_diff_words_write_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i32 }
%struct.diff_options = type { i32 }
%struct.diff_words_style_elem = type { i8*, i8*, i8* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@GIT_COLOR_RESET = common dso_local global i8* null, align 8
@DIFF_SYMBOL_WORD_DIFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.diff_options*, %struct.diff_words_style_elem*, i8*, i64, i8*)* @fn_out_diff_words_write_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fn_out_diff_words_write_helper(%struct.diff_options* %0, %struct.diff_words_style_elem* %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.diff_options*, align 8
  %7 = alloca %struct.diff_words_style_elem*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.strbuf, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.diff_options* %0, %struct.diff_options** %6, align 8
  store %struct.diff_words_style_elem* %1, %struct.diff_words_style_elem** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  br label %16

16:                                               ; preds = %124, %5
  %17 = load i64, i64* %9, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %125

19:                                               ; preds = %16
  %20 = load i8*, i8** %10, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i8* @memchr(i8* %20, i8 signext 10, i64 %21)
  store i8* %22, i8** %13, align 8
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %27 = call i8* @diff_line_prefix(%struct.diff_options* %26)
  %28 = call i32 @strbuf_addstr(%struct.strbuf* %12, i8* %27)
  br label %29

29:                                               ; preds = %25, %19
  %30 = load i8*, i8** %13, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = icmp ne i8* %30, %31
  br i1 %32, label %33, label %96

33:                                               ; preds = %29
  %34 = load %struct.diff_words_style_elem*, %struct.diff_words_style_elem** %7, align 8
  %35 = getelementptr inbounds %struct.diff_words_style_elem, %struct.diff_words_style_elem* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.diff_words_style_elem*, %struct.diff_words_style_elem** %7, align 8
  %40 = getelementptr inbounds %struct.diff_words_style_elem, %struct.diff_words_style_elem* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i8*, i8** @GIT_COLOR_RESET, align 8
  br label %48

47:                                               ; preds = %38, %33
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i8* [ %46, %45 ], [ null, %47 ]
  store i8* %49, i8** %14, align 8
  %50 = load %struct.diff_words_style_elem*, %struct.diff_words_style_elem** %7, align 8
  %51 = getelementptr inbounds %struct.diff_words_style_elem, %struct.diff_words_style_elem* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %66

54:                                               ; preds = %48
  %55 = load %struct.diff_words_style_elem*, %struct.diff_words_style_elem** %7, align 8
  %56 = getelementptr inbounds %struct.diff_words_style_elem, %struct.diff_words_style_elem* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.diff_words_style_elem*, %struct.diff_words_style_elem** %7, align 8
  %63 = getelementptr inbounds %struct.diff_words_style_elem, %struct.diff_words_style_elem* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @strbuf_addstr(%struct.strbuf* %12, i8* %64)
  br label %66

66:                                               ; preds = %61, %54, %48
  %67 = load %struct.diff_words_style_elem*, %struct.diff_words_style_elem** %7, align 8
  %68 = getelementptr inbounds %struct.diff_words_style_elem, %struct.diff_words_style_elem* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @strbuf_addstr(%struct.strbuf* %12, i8* %69)
  %71 = load i8*, i8** %10, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %66
  %75 = load i8*, i8** %13, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  br label %82

80:                                               ; preds = %66
  %81 = load i64, i64* %9, align 8
  br label %82

82:                                               ; preds = %80, %74
  %83 = phi i64 [ %79, %74 ], [ %81, %80 ]
  %84 = trunc i64 %83 to i32
  %85 = call i32 @strbuf_add(%struct.strbuf* %12, i8* %71, i32 %84)
  %86 = load %struct.diff_words_style_elem*, %struct.diff_words_style_elem** %7, align 8
  %87 = getelementptr inbounds %struct.diff_words_style_elem, %struct.diff_words_style_elem* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @strbuf_addstr(%struct.strbuf* %12, i8* %88)
  %90 = load i8*, i8** %14, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %82
  %93 = load i8*, i8** %14, align 8
  %94 = call i32 @strbuf_addstr(%struct.strbuf* %12, i8* %93)
  br label %95

95:                                               ; preds = %92, %82
  br label %96

96:                                               ; preds = %95, %29
  %97 = load i8*, i8** %13, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  br label %126

100:                                              ; preds = %96
  %101 = load i8*, i8** %8, align 8
  %102 = call i32 @strbuf_addstr(%struct.strbuf* %12, i8* %101)
  %103 = load i8*, i8** %13, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load i8*, i8** %10, align 8
  %106 = ptrtoint i8* %104 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = load i64, i64* %9, align 8
  %110 = sub i64 %109, %108
  store i64 %110, i64* %9, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  store i8* %112, i8** %10, align 8
  store i32 1, i32* %11, align 4
  %113 = load i64, i64* %9, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %100
  %116 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %117 = load i32, i32* @DIFF_SYMBOL_WORD_DIFF, align 4
  %118 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @emit_diff_symbol(%struct.diff_options* %116, i32 %117, i32 %119, i64 %121, i32 0)
  %123 = call i32 @strbuf_reset(%struct.strbuf* %12)
  br label %124

124:                                              ; preds = %115, %100
  br label %16

125:                                              ; preds = %16
  br label %126

126:                                              ; preds = %125, %99
  %127 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %126
  %131 = load %struct.diff_options*, %struct.diff_options** %6, align 8
  %132 = load i32, i32* @DIFF_SYMBOL_WORD_DIFF, align 4
  %133 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @emit_diff_symbol(%struct.diff_options* %131, i32 %132, i32 %134, i64 %136, i32 0)
  br label %138

138:                                              ; preds = %130, %126
  %139 = call i32 @strbuf_release(%struct.strbuf* %12)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i8* @diff_line_prefix(%struct.diff_options*) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #2

declare dso_local i32 @emit_diff_symbol(%struct.diff_options*, i32, i32, i64, i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
