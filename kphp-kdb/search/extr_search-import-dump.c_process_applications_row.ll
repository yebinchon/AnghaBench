; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-import-dump.c_process_applications_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-import-dump.c_process_applications_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_search_text_short_entry = type { i32, i32, i32, i8*, i64 }
%struct.lev_search_text_long_entry = type { i32, i32, i32, i32, i8*, i32 }

@process_applications_row.tag = internal global [64 x i8] zeroinitializer, align 16
@I = common dso_local global i32* null, align 8
@ap_server = common dso_local global i64 0, align 8
@ap_id = common dso_local global i64 0, align 8
@ap_type = common dso_local global i64 0, align 8
@ap_enabled = common dso_local global i64 0, align 8
@ap_language_id = common dso_local global i64 0, align 8
@L = common dso_local global i32* null, align 8
@ap_name = common dso_local global i64 0, align 8
@ap_description = common dso_local global i64 0, align 8
@LEV_SEARCH_TEXT_SHORT = common dso_local global i64 0, align 8
@ap_rate = common dso_local global i64 0, align 8
@ap_size = common dso_local global i64 0, align 8
@LEV_SEARCH_TEXT_LONG = common dso_local global i32 0, align 4
@S = common dso_local global i8** null, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_applications_row() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lev_search_text_short_entry*, align 8
  %8 = alloca %struct.lev_search_text_long_entry*, align 8
  %9 = load i32*, i32** @I, align 8
  %10 = load i64, i64* @ap_server, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %0
  %15 = load i32*, i32** @I, align 8
  %16 = load i64, i64* @ap_id, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @fits(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14, %0
  br label %239

22:                                               ; preds = %14
  %23 = load i32*, i32** @I, align 8
  %24 = load i64, i64* @ap_type, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @make_tag(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @process_applications_row.tag, i64 0, i64 0), i8 signext 84, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %33

32:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32*, i32** @I, align 8
  %35 = load i64, i64* @ap_enabled, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %49, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, -2
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, -3
  br i1 %48, label %49, label %56

49:                                               ; preds = %46, %43, %40, %33
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @process_applications_row.tag, i64 0, i64 0), i64 %51
  %53 = call i32 @make_tag(i8* %52, i8 signext 66, i32 1)
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %49, %46
  %57 = load i32*, i32** @I, align 8
  %58 = load i64, i64* @ap_language_id, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @process_applications_row.tag, i64 0, i64 0), i64 %64
  %66 = load i32*, i32** @I, align 8
  %67 = load i64, i64* @ap_language_id, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @make_tag(i8* %65, i8 signext 76, i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %62, %56
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @process_applications_row.tag, i64 0, i64 0), i64 %75
  %77 = call i32 @make_tag(i8* %76, i8 signext 65, i32 0)
  %78 = add nsw i32 %77, 1
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32*, i32** @L, align 8
  %83 = load i64, i64* @ap_name, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %81, %85
  %87 = load i32*, i32** @L, align 8
  %88 = load i64, i64* @ap_description, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %86, %90
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %3, align 4
  %93 = load i32, i32* %3, align 4
  %94 = icmp sgt i32 %93, 4095
  br i1 %94, label %95, label %96

95:                                               ; preds = %73
  br label %239

96:                                               ; preds = %73
  %97 = load i32, i32* %3, align 4
  %98 = icmp slt i32 %97, 256
  br i1 %98, label %99, label %131

99:                                               ; preds = %96
  %100 = load i32, i32* %3, align 4
  %101 = add nsw i32 21, %100
  %102 = call i8* @write_alloc(i32 %101)
  %103 = bitcast i8* %102 to %struct.lev_search_text_short_entry*
  store %struct.lev_search_text_short_entry* %103, %struct.lev_search_text_short_entry** %7, align 8
  %104 = load i64, i64* @LEV_SEARCH_TEXT_SHORT, align 8
  %105 = load i32, i32* %3, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %104, %106
  %108 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %7, align 8
  %109 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %108, i32 0, i32 4
  store i64 %107, i64* %109, align 8
  %110 = load i32*, i32** @I, align 8
  %111 = load i64, i64* @ap_rate, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %7, align 8
  %115 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load i32*, i32** @I, align 8
  %117 = load i64, i64* @ap_size, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %7, align 8
  %121 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load i32*, i32** @I, align 8
  %123 = load i64, i64* @ap_id, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %7, align 8
  %127 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load %struct.lev_search_text_short_entry*, %struct.lev_search_text_short_entry** %7, align 8
  %129 = getelementptr inbounds %struct.lev_search_text_short_entry, %struct.lev_search_text_short_entry* %128, i32 0, i32 3
  %130 = load i8*, i8** %129, align 8
  store i8* %130, i8** %2, align 8
  br label %163

131:                                              ; preds = %96
  %132 = load i32, i32* %3, align 4
  %133 = add nsw i32 23, %132
  %134 = call i8* @write_alloc(i32 %133)
  %135 = bitcast i8* %134 to %struct.lev_search_text_long_entry*
  store %struct.lev_search_text_long_entry* %135, %struct.lev_search_text_long_entry** %8, align 8
  %136 = load i32, i32* @LEV_SEARCH_TEXT_LONG, align 4
  %137 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %138 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 8
  %139 = load i32*, i32** @I, align 8
  %140 = load i64, i64* @ap_rate, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %144 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load i32*, i32** @I, align 8
  %146 = load i64, i64* @ap_size, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %150 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load i32*, i32** @I, align 8
  %152 = load i64, i64* @ap_id, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %156 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* %3, align 4
  %158 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %159 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 4
  %160 = load %struct.lev_search_text_long_entry*, %struct.lev_search_text_long_entry** %8, align 8
  %161 = getelementptr inbounds %struct.lev_search_text_long_entry, %struct.lev_search_text_long_entry* %160, i32 0, i32 4
  %162 = load i8*, i8** %161, align 8
  store i8* %162, i8** %2, align 8
  br label %163

163:                                              ; preds = %131, %99
  %164 = load i32, i32* %6, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %163
  %167 = load i8*, i8** %2, align 8
  %168 = load i32, i32* %6, align 4
  %169 = call i32 @memcpy(i8* %167, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @process_applications_row.tag, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* %6, align 4
  %171 = load i8*, i8** %2, align 8
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i8, i8* %171, i64 %172
  store i8* %173, i8** %2, align 8
  %174 = load i8*, i8** %2, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 -1
  store i8 32, i8* %175, align 1
  br label %176

176:                                              ; preds = %166, %163
  %177 = load i8**, i8*** @S, align 8
  %178 = load i64, i64* @ap_name, align 8
  %179 = getelementptr inbounds i8*, i8** %177, i64 %178
  %180 = load i8*, i8** %179, align 8
  store i8* %180, i8** %1, align 8
  %181 = load i32*, i32** @L, align 8
  %182 = load i64, i64* @ap_name, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %4, align 4
  br label %185

185:                                              ; preds = %201, %176
  %186 = load i32, i32* %4, align 4
  %187 = icmp sgt i32 %186, 0
  br i1 %187, label %188, label %204

188:                                              ; preds = %185
  %189 = load i8*, i8** %1, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %1, align 8
  %191 = load i8, i8* %189, align 1
  %192 = zext i8 %191 to i32
  store i32 %192, i32* %5, align 4
  %193 = load i32, i32* %5, align 4
  %194 = icmp slt i32 %193, 32
  br i1 %194, label %195, label %196

195:                                              ; preds = %188
  store i32 32, i32* %5, align 4
  br label %196

196:                                              ; preds = %195, %188
  %197 = load i32, i32* %5, align 4
  %198 = trunc i32 %197 to i8
  %199 = load i8*, i8** %2, align 8
  %200 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %200, i8** %2, align 8
  store i8 %198, i8* %199, align 1
  br label %201

201:                                              ; preds = %196
  %202 = load i32, i32* %4, align 4
  %203 = add nsw i32 %202, -1
  store i32 %203, i32* %4, align 4
  br label %185

204:                                              ; preds = %185
  %205 = load i8*, i8** %2, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %206, i8** %2, align 8
  store i8 9, i8* %205, align 1
  %207 = load i8**, i8*** @S, align 8
  %208 = load i64, i64* @ap_description, align 8
  %209 = getelementptr inbounds i8*, i8** %207, i64 %208
  %210 = load i8*, i8** %209, align 8
  store i8* %210, i8** %1, align 8
  %211 = load i32*, i32** @L, align 8
  %212 = load i64, i64* @ap_description, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %4, align 4
  br label %215

215:                                              ; preds = %231, %204
  %216 = load i32, i32* %4, align 4
  %217 = icmp sgt i32 %216, 0
  br i1 %217, label %218, label %234

218:                                              ; preds = %215
  %219 = load i8*, i8** %1, align 8
  %220 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %220, i8** %1, align 8
  %221 = load i8, i8* %219, align 1
  %222 = zext i8 %221 to i32
  store i32 %222, i32* %5, align 4
  %223 = load i32, i32* %5, align 4
  %224 = icmp slt i32 %223, 32
  br i1 %224, label %225, label %226

225:                                              ; preds = %218
  store i32 32, i32* %5, align 4
  br label %226

226:                                              ; preds = %225, %218
  %227 = load i32, i32* %5, align 4
  %228 = trunc i32 %227 to i8
  %229 = load i8*, i8** %2, align 8
  %230 = getelementptr inbounds i8, i8* %229, i32 1
  store i8* %230, i8** %2, align 8
  store i8 %228, i8* %229, align 1
  br label %231

231:                                              ; preds = %226
  %232 = load i32, i32* %4, align 4
  %233 = add nsw i32 %232, -1
  store i32 %233, i32* %4, align 4
  br label %215

234:                                              ; preds = %215
  %235 = load i8*, i8** %2, align 8
  %236 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %236, i8** %2, align 8
  store i8 0, i8* %235, align 1
  %237 = load i32, i32* @adj_rec, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* @adj_rec, align 4
  br label %239

239:                                              ; preds = %234, %95, %21
  ret void
}

declare dso_local i32 @fits(i32) #1

declare dso_local i32 @make_tag(i8*, i8 signext, i32) #1

declare dso_local i8* @write_alloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
