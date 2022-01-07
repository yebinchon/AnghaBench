; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_fn_out_diff_words_aux.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_fn_out_diff_words_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_words_data = type { i8*, i64, %struct.diff_options*, %struct.TYPE_8__, %struct.TYPE_6__, %struct.diff_words_style* }
%struct.diff_options = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.diff_words_style = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i64, i64, i8*, i64)* @fn_out_diff_words_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fn_out_diff_words_aux(i8* %0, i64 %1, i64 %2, i64 %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.diff_words_data*, align 8
  %16 = alloca %struct.diff_words_style*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.diff_options*, align 8
  %22 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = bitcast i8* %23 to %struct.diff_words_data*
  store %struct.diff_words_data* %24, %struct.diff_words_data** %15, align 8
  %25 = load %struct.diff_words_data*, %struct.diff_words_data** %15, align 8
  %26 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %25, i32 0, i32 5
  %27 = load %struct.diff_words_style*, %struct.diff_words_style** %26, align 8
  store %struct.diff_words_style* %27, %struct.diff_words_style** %16, align 8
  %28 = load %struct.diff_words_data*, %struct.diff_words_data** %15, align 8
  %29 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %28, i32 0, i32 2
  %30 = load %struct.diff_options*, %struct.diff_options** %29, align 8
  store %struct.diff_options* %30, %struct.diff_options** %21, align 8
  %31 = load %struct.diff_options*, %struct.diff_options** %21, align 8
  %32 = call i32 @assert(%struct.diff_options* %31)
  %33 = load %struct.diff_options*, %struct.diff_options** %21, align 8
  %34 = call i8* @diff_line_prefix(%struct.diff_options* %33)
  store i8* %34, i8** %22, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %7
  %38 = load %struct.diff_words_data*, %struct.diff_words_data** %15, align 8
  %39 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %17, align 8
  %46 = load %struct.diff_words_data*, %struct.diff_words_data** %15, align 8
  %47 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %10, align 8
  %52 = add nsw i64 %50, %51
  %53 = sub nsw i64 %52, 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %18, align 8
  br label %66

57:                                               ; preds = %7
  %58 = load %struct.diff_words_data*, %struct.diff_words_data** %15, align 8
  %59 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %18, align 8
  store i8* %65, i8** %17, align 8
  br label %66

66:                                               ; preds = %57, %37
  %67 = load i64, i64* %12, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %66
  %70 = load %struct.diff_words_data*, %struct.diff_words_data** %15, align 8
  %71 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = load i64, i64* %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %19, align 8
  %78 = load %struct.diff_words_data*, %struct.diff_words_data** %15, align 8
  %79 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %12, align 8
  %84 = add nsw i64 %82, %83
  %85 = sub nsw i64 %84, 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %20, align 8
  br label %98

89:                                               ; preds = %66
  %90 = load %struct.diff_words_data*, %struct.diff_words_data** %15, align 8
  %91 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = load i64, i64* %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %20, align 8
  store i8* %97, i8** %19, align 8
  br label %98

98:                                               ; preds = %89, %69
  %99 = load %struct.diff_words_data*, %struct.diff_words_data** %15, align 8
  %100 = call i64 @color_words_output_graph_prefix(%struct.diff_words_data* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = load i8*, i8** %22, align 8
  %104 = load %struct.diff_words_data*, %struct.diff_words_data** %15, align 8
  %105 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %104, i32 0, i32 2
  %106 = load %struct.diff_options*, %struct.diff_options** %105, align 8
  %107 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @fputs(i8* %103, i32 %108)
  br label %110

110:                                              ; preds = %102, %98
  %111 = load %struct.diff_words_data*, %struct.diff_words_data** %15, align 8
  %112 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load i8*, i8** %19, align 8
  %115 = icmp ne i8* %113, %114
  br i1 %115, label %116, label %137

116:                                              ; preds = %110
  %117 = load %struct.diff_words_data*, %struct.diff_words_data** %15, align 8
  %118 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %117, i32 0, i32 2
  %119 = load %struct.diff_options*, %struct.diff_options** %118, align 8
  %120 = load %struct.diff_words_style*, %struct.diff_words_style** %16, align 8
  %121 = getelementptr inbounds %struct.diff_words_style, %struct.diff_words_style* %120, i32 0, i32 3
  %122 = load %struct.diff_words_style*, %struct.diff_words_style** %16, align 8
  %123 = getelementptr inbounds %struct.diff_words_style, %struct.diff_words_style* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i8*, i8** %19, align 8
  %126 = load %struct.diff_words_data*, %struct.diff_words_data** %15, align 8
  %127 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = ptrtoint i8* %125 to i64
  %130 = ptrtoint i8* %128 to i64
  %131 = sub i64 %129, %130
  %132 = trunc i64 %131 to i32
  %133 = load %struct.diff_words_data*, %struct.diff_words_data** %15, align 8
  %134 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @fn_out_diff_words_write_helper(%struct.diff_options* %119, i32* %121, i32 %124, i32 %132, i8* %135)
  br label %137

137:                                              ; preds = %116, %110
  %138 = load i8*, i8** %17, align 8
  %139 = load i8*, i8** %18, align 8
  %140 = icmp ne i8* %138, %139
  br i1 %140, label %141, label %158

141:                                              ; preds = %137
  %142 = load %struct.diff_words_data*, %struct.diff_words_data** %15, align 8
  %143 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %142, i32 0, i32 2
  %144 = load %struct.diff_options*, %struct.diff_options** %143, align 8
  %145 = load %struct.diff_words_style*, %struct.diff_words_style** %16, align 8
  %146 = getelementptr inbounds %struct.diff_words_style, %struct.diff_words_style* %145, i32 0, i32 2
  %147 = load %struct.diff_words_style*, %struct.diff_words_style** %16, align 8
  %148 = getelementptr inbounds %struct.diff_words_style, %struct.diff_words_style* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i8*, i8** %18, align 8
  %151 = load i8*, i8** %17, align 8
  %152 = ptrtoint i8* %150 to i64
  %153 = ptrtoint i8* %151 to i64
  %154 = sub i64 %152, %153
  %155 = trunc i64 %154 to i32
  %156 = load i8*, i8** %17, align 8
  %157 = call i32 @fn_out_diff_words_write_helper(%struct.diff_options* %144, i32* %146, i32 %149, i32 %155, i8* %156)
  br label %158

158:                                              ; preds = %141, %137
  %159 = load i8*, i8** %19, align 8
  %160 = load i8*, i8** %20, align 8
  %161 = icmp ne i8* %159, %160
  br i1 %161, label %162, label %179

162:                                              ; preds = %158
  %163 = load %struct.diff_words_data*, %struct.diff_words_data** %15, align 8
  %164 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %163, i32 0, i32 2
  %165 = load %struct.diff_options*, %struct.diff_options** %164, align 8
  %166 = load %struct.diff_words_style*, %struct.diff_words_style** %16, align 8
  %167 = getelementptr inbounds %struct.diff_words_style, %struct.diff_words_style* %166, i32 0, i32 1
  %168 = load %struct.diff_words_style*, %struct.diff_words_style** %16, align 8
  %169 = getelementptr inbounds %struct.diff_words_style, %struct.diff_words_style* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i8*, i8** %20, align 8
  %172 = load i8*, i8** %19, align 8
  %173 = ptrtoint i8* %171 to i64
  %174 = ptrtoint i8* %172 to i64
  %175 = sub i64 %173, %174
  %176 = trunc i64 %175 to i32
  %177 = load i8*, i8** %19, align 8
  %178 = call i32 @fn_out_diff_words_write_helper(%struct.diff_options* %165, i32* %167, i32 %170, i32 %176, i8* %177)
  br label %179

179:                                              ; preds = %162, %158
  %180 = load i8*, i8** %20, align 8
  %181 = load %struct.diff_words_data*, %struct.diff_words_data** %15, align 8
  %182 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %181, i32 0, i32 0
  store i8* %180, i8** %182, align 8
  %183 = load i64, i64* %9, align 8
  %184 = load %struct.diff_words_data*, %struct.diff_words_data** %15, align 8
  %185 = getelementptr inbounds %struct.diff_words_data, %struct.diff_words_data* %184, i32 0, i32 1
  store i64 %183, i64* %185, align 8
  ret void
}

declare dso_local i32 @assert(%struct.diff_options*) #1

declare dso_local i8* @diff_line_prefix(%struct.diff_options*) #1

declare dso_local i64 @color_words_output_graph_prefix(%struct.diff_words_data*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fn_out_diff_words_write_helper(%struct.diff_options*, i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
