; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-import-dump.c_process_outbox_row.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-import-dump.c_process_outbox_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_add_message = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i64, i64 }

@I = common dso_local global i32* null, align 8
@ob_to_id = common dso_local global i64 0, align 8
@ob_from_id = common dso_local global i64 0, align 8
@list_id = common dso_local global i32 0, align 4
@L = common dso_local global i32* null, align 8
@ob_title = common dso_local global i64 0, align 8
@S = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [3 x i8] c"\\N\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@ob_message = common dso_local global i64 0, align 8
@LEV_TX_ADD_MESSAGE = common dso_local global i64 0, align 8
@ob_read_state = common dso_local global i64 0, align 8
@TXF_UNREAD = common dso_local global i64 0, align 8
@TXF_OUTBOX = common dso_local global i64 0, align 8
@TXF_FRIENDS = common dso_local global i32 0, align 4
@ob_id = common dso_local global i64 0, align 8
@ob_date = common dso_local global i64 0, align 8
@ob_ip = common dso_local global i64 0, align 8
@ob_port = common dso_local global i64 0, align 8
@ob_front = common dso_local global i64 0, align 8
@ob_ua_hash = common dso_local global i64 0, align 8
@adj_rec = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_outbox_row() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lev_add_message*, align 8
  %7 = load i32*, i32** @I, align 8
  %8 = load i64, i64* @ob_to_id, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %1, align 4
  %11 = load i32*, i32** @I, align 8
  %12 = load i64, i64* @ob_from_id, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* @list_id, align 4
  %15 = load i32, i32* @list_id, align 4
  %16 = call i64 @conv_uid(i32 %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %0
  %19 = load i32, i32* @list_id, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %1, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18, %0
  br label %259

25:                                               ; preds = %21
  %26 = load i32*, i32** @L, align 8
  %27 = load i64, i64* @ob_title, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load i8**, i8*** @S, align 8
  %33 = load i64, i64* @ob_title, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %31
  %39 = load i32*, i32** @L, align 8
  %40 = load i64, i64* @ob_title, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32 3, i32* %41, align 4
  %42 = load i8**, i8*** @S, align 8
  %43 = load i64, i64* @ob_title, align 8
  %44 = getelementptr inbounds i8*, i8** %42, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strcpy(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %38, %31, %25
  %48 = load i32*, i32** @L, align 8
  %49 = load i64, i64* @ob_message, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %69

53:                                               ; preds = %47
  %54 = load i8**, i8*** @S, align 8
  %55 = load i64, i64* @ob_message, align 8
  %56 = getelementptr inbounds i8*, i8** %54, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %53
  %61 = load i32*, i32** @L, align 8
  %62 = load i64, i64* @ob_message, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 0, i32* %63, align 4
  %64 = load i8**, i8*** @S, align 8
  %65 = load i64, i64* @ob_message, align 8
  %66 = getelementptr inbounds i8*, i8** %64, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  store i8 0, i8* %68, align 1
  br label %69

69:                                               ; preds = %60, %53, %47
  %70 = load i32*, i32** @L, align 8
  %71 = load i64, i64* @ob_title, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 64, %74
  %76 = load i32*, i32** @L, align 8
  %77 = load i64, i64* @ob_message, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = add i64 %75, %80
  %82 = add i64 %81, 2
  %83 = trunc i64 %82 to i32
  %84 = call %struct.lev_add_message* @write_alloc(i32 %83)
  store %struct.lev_add_message* %84, %struct.lev_add_message** %6, align 8
  %85 = load i64, i64* @LEV_TX_ADD_MESSAGE, align 8
  %86 = load i32*, i32** @I, align 8
  %87 = load i64, i64* @ob_read_state, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %69
  br label %94

92:                                               ; preds = %69
  %93 = load i64, i64* @TXF_UNREAD, align 8
  br label %94

94:                                               ; preds = %92, %91
  %95 = phi i64 [ 0, %91 ], [ %93, %92 ]
  %96 = add nsw i64 %85, %95
  %97 = load i64, i64* @TXF_OUTBOX, align 8
  %98 = add nsw i64 %96, %97
  %99 = load i32, i32* @list_id, align 4
  %100 = load i32, i32* %1, align 4
  %101 = call i64 @is_friend(i32 %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* @TXF_FRIENDS, align 4
  br label %106

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %105, %103
  %107 = phi i32 [ %104, %103 ], [ 0, %105 ]
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %98, %108
  %110 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %111 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %110, i32 0, i32 11
  store i64 %109, i64* %111, align 8
  %112 = load i32, i32* @list_id, align 4
  %113 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %114 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load i32*, i32** @I, align 8
  %116 = load i64, i64* @ob_id, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 0, %118
  %120 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %121 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %1, align 4
  %123 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %124 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  %125 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %126 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %125, i32 0, i32 10
  store i64 0, i64* %126, align 8
  %127 = load i32*, i32** @I, align 8
  %128 = load i64, i64* @ob_date, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %132 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 4
  %133 = load i32*, i32** @I, align 8
  %134 = load i64, i64* @ob_ip, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %138 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 8
  %139 = load i32*, i32** @I, align 8
  %140 = load i64, i64* @ob_port, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %144 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %143, i32 0, i32 5
  store i32 %142, i32* %144, align 4
  %145 = load i32*, i32** @I, align 8
  %146 = load i64, i64* @ob_front, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %150 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %149, i32 0, i32 6
  store i32 %148, i32* %150, align 8
  %151 = load i8**, i8*** @S, align 8
  %152 = load i64, i64* @ob_ua_hash, align 8
  %153 = getelementptr inbounds i8*, i8** %151, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @strtoull(i8* %154, i32 0, i32 10)
  %156 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %157 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %156, i32 0, i32 9
  store i32 %155, i32* %157, align 8
  %158 = load i32*, i32** @L, align 8
  %159 = load i64, i64* @ob_title, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 1
  %163 = load i32*, i32** @L, align 8
  %164 = load i64, i64* @ob_message, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %162, %166
  %168 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %169 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %168, i32 0, i32 7
  store i32 %167, i32* %169, align 4
  %170 = load %struct.lev_add_message*, %struct.lev_add_message** %6, align 8
  %171 = getelementptr inbounds %struct.lev_add_message, %struct.lev_add_message* %170, i32 0, i32 8
  %172 = load i8*, i8** %171, align 8
  store i8* %172, i8** %4, align 8
  %173 = load i32*, i32** @L, align 8
  %174 = load i64, i64* @ob_title, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %3, align 4
  %177 = load i8**, i8*** @S, align 8
  %178 = load i64, i64* @ob_title, align 8
  %179 = getelementptr inbounds i8*, i8** %177, i64 %178
  %180 = load i8*, i8** %179, align 8
  store i8* %180, i8** %5, align 8
  store i32 0, i32* %2, align 4
  br label %181

181:                                              ; preds = %205, %106
  %182 = load i32, i32* %2, align 4
  %183 = load i32, i32* %3, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %208

185:                                              ; preds = %181
  %186 = load i8*, i8** %5, align 8
  %187 = load i32, i32* %2, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = icmp slt i32 %191, 32
  br i1 %192, label %193, label %196

193:                                              ; preds = %185
  %194 = load i8*, i8** %4, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %4, align 8
  store i8 32, i8* %194, align 1
  br label %204

196:                                              ; preds = %185
  %197 = load i8*, i8** %5, align 8
  %198 = load i32, i32* %2, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %197, i64 %199
  %201 = load i8, i8* %200, align 1
  %202 = load i8*, i8** %4, align 8
  %203 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %203, i8** %4, align 8
  store i8 %201, i8* %202, align 1
  br label %204

204:                                              ; preds = %196, %193
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %2, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %2, align 4
  br label %181

208:                                              ; preds = %181
  %209 = load i8*, i8** %4, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** %4, align 8
  store i8 9, i8* %209, align 1
  %211 = load i32*, i32** @L, align 8
  %212 = load i64, i64* @ob_message, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %3, align 4
  %215 = load i8**, i8*** @S, align 8
  %216 = load i64, i64* @ob_message, align 8
  %217 = getelementptr inbounds i8*, i8** %215, i64 %216
  %218 = load i8*, i8** %217, align 8
  store i8* %218, i8** %5, align 8
  store i32 0, i32* %2, align 4
  br label %219

219:                                              ; preds = %251, %208
  %220 = load i32, i32* %2, align 4
  %221 = load i32, i32* %3, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %254

223:                                              ; preds = %219
  %224 = load i8*, i8** %5, align 8
  %225 = load i32, i32* %2, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8, i8* %224, i64 %226
  %228 = load i8, i8* %227, align 1
  %229 = zext i8 %228 to i32
  %230 = icmp slt i32 %229, 32
  br i1 %230, label %231, label %242

231:                                              ; preds = %223
  %232 = load i8*, i8** %5, align 8
  %233 = load i32, i32* %2, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %232, i64 %234
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp ne i32 %237, 9
  br i1 %238, label %239, label %242

239:                                              ; preds = %231
  %240 = load i8*, i8** %4, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %4, align 8
  store i8 32, i8* %240, align 1
  br label %250

242:                                              ; preds = %231, %223
  %243 = load i8*, i8** %5, align 8
  %244 = load i32, i32* %2, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8, i8* %243, i64 %245
  %247 = load i8, i8* %246, align 1
  %248 = load i8*, i8** %4, align 8
  %249 = getelementptr inbounds i8, i8* %248, i32 1
  store i8* %249, i8** %4, align 8
  store i8 %247, i8* %248, align 1
  br label %250

250:                                              ; preds = %242, %239
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %2, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %2, align 4
  br label %219

254:                                              ; preds = %219
  %255 = load i8*, i8** %4, align 8
  %256 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %256, i8** %4, align 8
  store i8 0, i8* %255, align 1
  %257 = load i32, i32* @adj_rec, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* @adj_rec, align 4
  br label %259

259:                                              ; preds = %254, %24
  ret void
}

declare dso_local i64 @conv_uid(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local %struct.lev_add_message* @write_alloc(i32) #1

declare dso_local i64 @is_friend(i32, i32) #1

declare dso_local i32 @strtoull(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
