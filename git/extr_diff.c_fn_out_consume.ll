; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_fn_out_consume.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_fn_out_consume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emit_callback = type { i8**, i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__*, %struct.diff_options* }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i8*, i64 }
%struct.diff_options = type { i32 }

@DIFF_SYMBOL_HEADER = common dso_local global i32 0, align 4
@DIFF_SYMBOL_FILEPAIR_MINUS = common dso_local global i32 0, align 4
@DIFF_SYMBOL_FILEPAIR_PLUS = common dso_local global i32 0, align 4
@diff_suppress_blank_empty = common dso_local global i64 0, align 8
@DIFF_WORDS_PORCELAIN = common dso_local global i64 0, align 8
@DIFF_SYMBOL_WORDS_PORCELAIN = common dso_local global i32 0, align 4
@DIFF_SYMBOL_WORDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\\ \00", align 1
@DIFF_SYMBOL_CONTEXT_INCOMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64)* @fn_out_consume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fn_out_consume(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.emit_callback*, align 8
  %8 = alloca %struct.diff_options*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.emit_callback*
  store %struct.emit_callback* %11, %struct.emit_callback** %7, align 8
  %12 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %13 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %12, i32 0, i32 5
  %14 = load %struct.diff_options*, %struct.diff_options** %13, align 8
  store %struct.diff_options* %14, %struct.diff_options** %8, align 8
  %15 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %16 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %18 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %3
  %22 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %23 = load i32, i32* @DIFF_SYMBOL_HEADER, align 4
  %24 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %25 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %24, i32 0, i32 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %30 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %29, i32 0, i32 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @emit_diff_symbol(%struct.diff_options* %22, i32 %23, i8* %28, i64 %33, i32 0)
  %35 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %36 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %35, i32 0, i32 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = call i32 @strbuf_reset(%struct.TYPE_4__* %37)
  %39 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %40 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %39, i32 0, i32 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %40, align 8
  br label %41

41:                                               ; preds = %21, %3
  %42 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %43 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %42, i32 0, i32 0
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %85

48:                                               ; preds = %41
  %49 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %50 = load i32, i32* @DIFF_SYMBOL_FILEPAIR_MINUS, align 4
  %51 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %52 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %51, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %57 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %56, i32 0, i32 0
  %58 = load i8**, i8*** %57, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @strlen(i8* %60)
  %62 = call i32 @emit_diff_symbol(%struct.diff_options* %49, i32 %50, i8* %55, i64 %61, i32 0)
  %63 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %64 = load i32, i32* @DIFF_SYMBOL_FILEPAIR_PLUS, align 4
  %65 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %66 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %65, i32 0, i32 0
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 1
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %71 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %70, i32 0, i32 0
  %72 = load i8**, i8*** %71, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @strlen(i8* %74)
  %76 = call i32 @emit_diff_symbol(%struct.diff_options* %63, i32 %64, i8* %69, i64 %75, i32 0)
  %77 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %78 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %77, i32 0, i32 0
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  store i8* null, i8** %80, align 8
  %81 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %82 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %81, i32 0, i32 0
  %83 = load i8**, i8*** %82, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  store i8* null, i8** %84, align 8
  br label %85

85:                                               ; preds = %48, %41
  %86 = load i64, i64* @diff_suppress_blank_empty, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %85
  %89 = load i64, i64* %6, align 8
  %90 = icmp eq i64 %89, 2
  br i1 %90, label %91, label %106

91:                                               ; preds = %88
  %92 = load i8*, i8** %5, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 32
  br i1 %96, label %97, label %106

97:                                               ; preds = %91
  %98 = load i8*, i8** %5, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 10
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i8*, i8** %5, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  store i8 10, i8* %105, align 1
  store i64 1, i64* %6, align 8
  br label %106

106:                                              ; preds = %103, %97, %91, %88, %85
  %107 = load i8*, i8** %5, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 0
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 64
  br i1 %111, label %112, label %131

112:                                              ; preds = %106
  %113 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %114 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %113, i32 0, i32 3
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = icmp ne %struct.TYPE_3__* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %119 = call i32 @diff_words_flush(%struct.emit_callback* %118)
  br label %120

120:                                              ; preds = %117, %112
  %121 = load i8*, i8** %5, align 8
  %122 = load i64, i64* %6, align 8
  %123 = call i64 @sane_truncate_line(i8* %121, i64 %122)
  store i64 %123, i64* %6, align 8
  %124 = load i8*, i8** %5, align 8
  %125 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %126 = call i32 @find_lno(i8* %124, %struct.emit_callback* %125)
  %127 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %128 = load i8*, i8** %5, align 8
  %129 = load i64, i64* %6, align 8
  %130 = call i32 @emit_hunk_header(%struct.emit_callback* %127, i8* %128, i64 %129)
  br label %244

131:                                              ; preds = %106
  %132 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %133 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %132, i32 0, i32 3
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = icmp ne %struct.TYPE_3__* %134, null
  br i1 %135, label %136, label %192

136:                                              ; preds = %131
  %137 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %138 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %137, i32 0, i32 3
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @DIFF_WORDS_PORCELAIN, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %136
  %145 = load i32, i32* @DIFF_SYMBOL_WORDS_PORCELAIN, align 4
  br label %148

146:                                              ; preds = %136
  %147 = load i32, i32* @DIFF_SYMBOL_WORDS, align 4
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi i32 [ %145, %144 ], [ %147, %146 ]
  store i32 %149, i32* %9, align 4
  %150 = load i8*, i8** %5, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 0
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 45
  br i1 %154, label %155, label %163

155:                                              ; preds = %148
  %156 = load i8*, i8** %5, align 8
  %157 = load i64, i64* %6, align 8
  %158 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %159 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %158, i32 0, i32 3
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 2
  %162 = call i32 @diff_words_append(i8* %156, i64 %157, i32* %161)
  br label %244

163:                                              ; preds = %148
  %164 = load i8*, i8** %5, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 0
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 43
  br i1 %168, label %169, label %177

169:                                              ; preds = %163
  %170 = load i8*, i8** %5, align 8
  %171 = load i64, i64* %6, align 8
  %172 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %173 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %172, i32 0, i32 3
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 1
  %176 = call i32 @diff_words_append(i8* %170, i64 %171, i32* %175)
  br label %244

177:                                              ; preds = %163
  %178 = load i8*, i8** %5, align 8
  %179 = call i64 @starts_with(i8* %178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %177
  br label %244

182:                                              ; preds = %177
  br label %183

183:                                              ; preds = %182
  br label %184

184:                                              ; preds = %183
  %185 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %186 = call i32 @diff_words_flush(%struct.emit_callback* %185)
  %187 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %188 = load i32, i32* %9, align 4
  %189 = load i8*, i8** %5, align 8
  %190 = load i64, i64* %6, align 8
  %191 = call i32 @emit_diff_symbol(%struct.diff_options* %187, i32 %188, i8* %189, i64 %190, i32 0)
  br label %244

192:                                              ; preds = %131
  %193 = load i8*, i8** %5, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 0
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  switch i32 %196, label %234 [
    i32 43, label %197
    i32 45, label %208
    i32 32, label %219
  ]

197:                                              ; preds = %192
  %198 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %199 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %199, align 4
  %202 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %203 = load i8*, i8** %5, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 1
  %205 = load i64, i64* %6, align 8
  %206 = sub i64 %205, 1
  %207 = call i32 @emit_add_line(%struct.emit_callback* %202, i8* %204, i64 %206)
  br label %244

208:                                              ; preds = %192
  %209 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %210 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 8
  %213 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %214 = load i8*, i8** %5, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 1
  %216 = load i64, i64* %6, align 8
  %217 = sub i64 %216, 1
  %218 = call i32 @emit_del_line(%struct.emit_callback* %213, i8* %215, i64 %217)
  br label %244

219:                                              ; preds = %192
  %220 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %221 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %221, align 4
  %224 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %225 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %225, align 8
  %228 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %229 = load i8*, i8** %5, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 1
  %231 = load i64, i64* %6, align 8
  %232 = sub i64 %231, 1
  %233 = call i32 @emit_context_line(%struct.emit_callback* %228, i8* %230, i64 %232)
  br label %244

234:                                              ; preds = %192
  %235 = load %struct.emit_callback*, %struct.emit_callback** %7, align 8
  %236 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %236, align 8
  %239 = load %struct.diff_options*, %struct.diff_options** %8, align 8
  %240 = load i32, i32* @DIFF_SYMBOL_CONTEXT_INCOMPLETE, align 4
  %241 = load i8*, i8** %5, align 8
  %242 = load i64, i64* %6, align 8
  %243 = call i32 @emit_diff_symbol(%struct.diff_options* %239, i32 %240, i8* %241, i64 %242, i32 0)
  br label %244

244:                                              ; preds = %120, %155, %169, %181, %184, %234, %219, %208, %197
  ret void
}

declare dso_local i32 @emit_diff_symbol(%struct.diff_options*, i32, i8*, i64, i32) #1

declare dso_local i32 @strbuf_reset(%struct.TYPE_4__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @diff_words_flush(%struct.emit_callback*) #1

declare dso_local i64 @sane_truncate_line(i8*, i64) #1

declare dso_local i32 @find_lno(i8*, %struct.emit_callback*) #1

declare dso_local i32 @emit_hunk_header(%struct.emit_callback*, i8*, i64) #1

declare dso_local i32 @diff_words_append(i8*, i64, i32*) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @emit_add_line(%struct.emit_callback*, i8*, i64) #1

declare dso_local i32 @emit_del_line(%struct.emit_callback*, i8*, i64) #1

declare dso_local i32 @emit_context_line(%struct.emit_callback*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
