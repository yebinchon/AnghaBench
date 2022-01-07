; ModuleID = '/home/carl/AnghaBench/git/extr_diff.c_emit_hunk_header.c'
source_filename = "/home/carl/AnghaBench/git/extr_diff.c_emit_hunk_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }
%struct.emit_callback = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@DIFF_CONTEXT = common dso_local global i32 0, align 4
@DIFF_FRAGINFO = common dso_local global i32 0, align 4
@DIFF_FUNCINFO = common dso_local global i32 0, align 4
@DIFF_RESET = common dso_local global i32 0, align 4
@GIT_COLOR_REVERSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@emit_hunk_header.atat = internal constant [2 x i8] c"@@", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@DIFF_SYMBOL_CONTEXT_MARKER = common dso_local global i32 0, align 4
@DIFF_SYMBOL_CONTEXT_FRAGINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emit_callback*, i8*, i32)* @emit_hunk_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_hunk_header(%struct.emit_callback* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.emit_callback*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.strbuf, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.emit_callback* %0, %struct.emit_callback** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.emit_callback*, %struct.emit_callback** %4, align 8
  %18 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @DIFF_CONTEXT, align 4
  %21 = call i8* @diff_get_color(i64 %19, i32 %20)
  store i8* %21, i8** %7, align 8
  %22 = load %struct.emit_callback*, %struct.emit_callback** %4, align 8
  %23 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @DIFF_FRAGINFO, align 4
  %26 = call i8* @diff_get_color(i64 %24, i32 %25)
  store i8* %26, i8** %8, align 8
  %27 = load %struct.emit_callback*, %struct.emit_callback** %4, align 8
  %28 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @DIFF_FUNCINFO, align 4
  %31 = call i8* @diff_get_color(i64 %29, i32 %30)
  store i8* %31, i8** %9, align 8
  %32 = load %struct.emit_callback*, %struct.emit_callback** %4, align 8
  %33 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @DIFF_RESET, align 4
  %36 = call i8* @diff_get_color(i64 %34, i32 %35)
  store i8* %36, i8** %10, align 8
  %37 = load %struct.emit_callback*, %struct.emit_callback** %4, align 8
  %38 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %3
  %42 = load i8*, i8** @GIT_COLOR_REVERSE, align 8
  br label %44

43:                                               ; preds = %3
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i8* [ %42, %41 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %43 ]
  store i8* %45, i8** %11, align 8
  %46 = bitcast %struct.strbuf* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 10
  br i1 %49, label %61, label %50

50:                                               ; preds = %44
  %51 = load i8*, i8** %5, align 8
  %52 = call i64 @memcmp(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @emit_hunk_header.atat, i64 0, i64 0), i32 2)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %50
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %57, 2
  %59 = call i8* @memmem(i8* %56, i32 %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @emit_hunk_header.atat, i64 0, i64 0), i32 2)
  store i8* %59, i8** %13, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %69, label %61

61:                                               ; preds = %54, %50, %44
  %62 = load %struct.emit_callback*, %struct.emit_callback** %4, align 8
  %63 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* @DIFF_SYMBOL_CONTEXT_MARKER, align 4
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @emit_diff_symbol(%struct.TYPE_4__* %64, i32 %65, i8* %66, i32 %67, i32 0)
  br label %222

69:                                               ; preds = %54
  %70 = load i8*, i8** %13, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 2
  store i8* %71, i8** %13, align 8
  %72 = load %struct.emit_callback*, %struct.emit_callback** %4, align 8
  %73 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %69
  %80 = load i8*, i8** %11, align 8
  %81 = call i32 @strbuf_addstr(%struct.strbuf* %14, i8* %80)
  br label %82

82:                                               ; preds = %79, %69
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @strbuf_addstr(%struct.strbuf* %14, i8* %83)
  %85 = load %struct.emit_callback*, %struct.emit_callback** %4, align 8
  %86 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = call i32 @strbuf_add(%struct.strbuf* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @emit_hunk_header.atat, i64 0, i64 0), i32 2)
  br label %103

94:                                               ; preds = %82
  %95 = load i8*, i8** %5, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = trunc i64 %100 to i32
  %102 = call i32 @strbuf_add(%struct.strbuf* %14, i8* %95, i32 %101)
  br label %103

103:                                              ; preds = %94, %92
  %104 = load i8*, i8** %10, align 8
  %105 = call i32 @strbuf_addstr(%struct.strbuf* %14, i8* %104)
  br label %106

106:                                              ; preds = %133, %103
  %107 = load i32, i32* %16, align 4
  %108 = icmp slt i32 %107, 3
  br i1 %108, label %109, label %136

109:                                              ; preds = %106
  %110 = load i8*, i8** %5, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %16, align 4
  %113 = sub nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %110, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 13
  br i1 %118, label %129, label %119

119:                                              ; preds = %109
  %120 = load i8*, i8** %5, align 8
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %16, align 4
  %123 = sub nsw i32 %121, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %120, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 10
  br i1 %128, label %129, label %132

129:                                              ; preds = %119, %109
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %129, %119
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %16, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %16, align 4
  br label %106

136:                                              ; preds = %106
  %137 = load i8*, i8** %13, align 8
  store i8* %137, i8** %12, align 8
  br label %138

138:                                              ; preds = %159, %136
  %139 = load i8*, i8** %13, align 8
  %140 = load i8*, i8** %5, align 8
  %141 = ptrtoint i8* %139 to i64
  %142 = ptrtoint i8* %140 to i64
  %143 = sub i64 %141, %142
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = icmp slt i64 %143, %145
  br i1 %146, label %147, label %162

147:                                              ; preds = %138
  %148 = load i8*, i8** %13, align 8
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp ne i32 %150, 32
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load i8*, i8** %13, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %155, 9
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %162

158:                                              ; preds = %152, %147
  br label %159

159:                                              ; preds = %158
  %160 = load i8*, i8** %13, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %13, align 8
  br label %138

162:                                              ; preds = %157, %138
  %163 = load i8*, i8** %13, align 8
  %164 = load i8*, i8** %12, align 8
  %165 = icmp ne i8* %163, %164
  br i1 %165, label %166, label %179

166:                                              ; preds = %162
  %167 = load i8*, i8** %7, align 8
  %168 = call i32 @strbuf_addstr(%struct.strbuf* %14, i8* %167)
  %169 = load i8*, i8** %12, align 8
  %170 = load i8*, i8** %13, align 8
  %171 = load i8*, i8** %12, align 8
  %172 = ptrtoint i8* %170 to i64
  %173 = ptrtoint i8* %171 to i64
  %174 = sub i64 %172, %173
  %175 = trunc i64 %174 to i32
  %176 = call i32 @strbuf_add(%struct.strbuf* %14, i8* %169, i32 %175)
  %177 = load i8*, i8** %10, align 8
  %178 = call i32 @strbuf_addstr(%struct.strbuf* %14, i8* %177)
  br label %179

179:                                              ; preds = %166, %162
  %180 = load i8*, i8** %13, align 8
  %181 = load i8*, i8** %5, align 8
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = icmp ult i8* %180, %184
  br i1 %185, label %186, label %202

186:                                              ; preds = %179
  %187 = load i8*, i8** %9, align 8
  %188 = call i32 @strbuf_addstr(%struct.strbuf* %14, i8* %187)
  %189 = load i8*, i8** %13, align 8
  %190 = load i8*, i8** %5, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = load i8*, i8** %13, align 8
  %195 = ptrtoint i8* %193 to i64
  %196 = ptrtoint i8* %194 to i64
  %197 = sub i64 %195, %196
  %198 = trunc i64 %197 to i32
  %199 = call i32 @strbuf_add(%struct.strbuf* %14, i8* %189, i32 %198)
  %200 = load i8*, i8** %10, align 8
  %201 = call i32 @strbuf_addstr(%struct.strbuf* %14, i8* %200)
  br label %202

202:                                              ; preds = %186, %179
  %203 = load i8*, i8** %5, align 8
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %203, i64 %205
  %207 = load i32, i32* %15, align 4
  %208 = load i32, i32* %6, align 4
  %209 = sub nsw i32 %207, %208
  %210 = call i32 @strbuf_add(%struct.strbuf* %14, i8* %206, i32 %209)
  %211 = call i32 @strbuf_complete_line(%struct.strbuf* %14)
  %212 = load %struct.emit_callback*, %struct.emit_callback** %4, align 8
  %213 = getelementptr inbounds %struct.emit_callback, %struct.emit_callback* %212, i32 0, i32 0
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = load i32, i32* @DIFF_SYMBOL_CONTEXT_FRAGINFO, align 4
  %216 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %14, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @emit_diff_symbol(%struct.TYPE_4__* %214, i32 %215, i8* %217, i32 %219, i32 0)
  %221 = call i32 @strbuf_release(%struct.strbuf* %14)
  br label %222

222:                                              ; preds = %202, %61
  ret void
}

declare dso_local i8* @diff_get_color(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i8* @memmem(i8*, i32, i8*, i32) #1

declare dso_local i32 @emit_diff_symbol(%struct.TYPE_4__*, i32, i8*, i32, i32) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @strbuf_complete_line(%struct.strbuf*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
