; ModuleID = '/home/carl/AnghaBench/i3/libi3/extr_font.c_load_font.c'
source_filename = "/home/carl/AnghaBench/i3/libi3/extr_font.c_load_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_13__, i64, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_16__*, i32*, i32 }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_14__ = type { i8* }

@FONT_TYPE_NONE = common dso_local global i32 0, align 4
@conn = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"pango:\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"xft:\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"Could not open font %s (X error %d). Trying fallback to 'fixed'.\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"Could not open fallback font 'fixed', trying with '-misc-*'.\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"-misc-*\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [81 x i8] c"Could open neither requested font nor fallbacks (fixed or -misc-*): X11 error %d\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Using X font %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Could not load font \22%s\22\00", align 1
@FONT_TYPE_XCB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_font(%struct.TYPE_15__* noalias sret %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  store i8* %1, i8** %4, align 8
  store i32 %2, i32* %5, align 4
  %11 = call i32 (...) @free_font()
  %12 = load i32, i32* @FONT_TYPE_NONE, align 4
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 3
  store i32* null, i32** %14, align 8
  %15 = load i32*, i32** @conn, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %212

18:                                               ; preds = %3
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @strncmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @load_pango_font(%struct.TYPE_15__* %0, i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load i8*, i8** %4, align 8
  %38 = call i8* @sstrdup(i8* %37)
  %39 = bitcast i8* %38 to i32*
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 3
  store i32* %39, i32** %40, align 8
  br label %212

41:                                               ; preds = %28
  br label %67

42:                                               ; preds = %23, %18
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %42
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %50 = call i32 @strncmp(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %66, label %52

52:                                               ; preds = %47
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8* %56, i8** %7, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i64 @load_pango_font(%struct.TYPE_15__* %0, i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load i8*, i8** %4, align 8
  %62 = call i8* @sstrdup(i8* %61)
  %63 = bitcast i8* %62 to i32*
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 3
  store i32* %63, i32** %64, align 8
  br label %212

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %47, %42
  br label %67

67:                                               ; preds = %66, %41
  %68 = load i32*, i32** @conn, align 8
  %69 = call i32 @xcb_generate_id(i32* %68)
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 2
  store i32 %69, i32* %72, align 8
  %73 = load i32*, i32** @conn, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 @strlen(i8* %78)
  %80 = load i8*, i8** %4, align 8
  %81 = call i32 @xcb_open_font_checked(i32* %73, i32 %77, i32 %79, i8* %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32*, i32** @conn, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @xcb_query_font(i32* %82, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32*, i32** @conn, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call %struct.TYPE_14__* @xcb_request_check(i32* %88, i32 %89)
  store %struct.TYPE_14__* %90, %struct.TYPE_14__** %10, align 8
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %155

93:                                               ; preds = %67
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %95 = icmp ne %struct.TYPE_14__* %94, null
  br i1 %95, label %96, label %155

96:                                               ; preds = %93
  %97 = load i8*, i8** %4, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i8*, ...) @ELOG(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i8* %97, i8* %100)
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  %102 = load i32*, i32** @conn, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i8*, i8** %4, align 8
  %108 = call i32 @strlen(i8* %107)
  %109 = load i8*, i8** %4, align 8
  %110 = call i32 @xcb_open_font_checked(i32* %102, i32 %106, i32 %108, i8* %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32*, i32** @conn, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @xcb_query_font(i32* %111, i32 %115)
  store i32 %116, i32* %9, align 4
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %118 = call i32 @free(%struct.TYPE_14__* %117)
  %119 = load i32*, i32** @conn, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call %struct.TYPE_14__* @xcb_request_check(i32* %119, i32 %120)
  store %struct.TYPE_14__* %121, %struct.TYPE_14__** %10, align 8
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %123 = icmp ne %struct.TYPE_14__* %122, null
  br i1 %123, label %124, label %154

124:                                              ; preds = %96
  %125 = call i32 (i8*, ...) @ELOG(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0))
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  %126 = load i32*, i32** @conn, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i8*, i8** %4, align 8
  %132 = call i32 @strlen(i8* %131)
  %133 = load i8*, i8** %4, align 8
  %134 = call i32 @xcb_open_font_checked(i32* %126, i32 %130, i32 %132, i8* %133)
  store i32 %134, i32* %8, align 4
  %135 = load i32*, i32** @conn, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @xcb_query_font(i32* %135, i32 %139)
  store i32 %140, i32* %9, align 4
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %142 = call i32 @free(%struct.TYPE_14__* %141)
  %143 = load i32*, i32** @conn, align 8
  %144 = load i32, i32* %8, align 4
  %145 = call %struct.TYPE_14__* @xcb_request_check(i32* %143, i32 %144)
  store %struct.TYPE_14__* %145, %struct.TYPE_14__** %10, align 8
  %146 = icmp ne %struct.TYPE_14__* %145, null
  br i1 %146, label %147, label %153

147:                                              ; preds = %124
  %148 = load i32, i32* @EXIT_FAILURE, align 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @errx(i32 %148, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i64 0, i64 0), i8* %151)
  br label %153

153:                                              ; preds = %147, %124
  br label %154

154:                                              ; preds = %153, %96
  br label %155

155:                                              ; preds = %154, %93, %67
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %157 = call i32 @free(%struct.TYPE_14__* %156)
  %158 = load i8*, i8** %4, align 8
  %159 = call i8* @sstrdup(i8* %158)
  %160 = bitcast i8* %159 to i32*
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 3
  store i32* %160, i32** %161, align 8
  %162 = load i8*, i8** %4, align 8
  %163 = call i32 @LOG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %162)
  %164 = load i32*, i32** @conn, align 8
  %165 = load i32, i32* %9, align 4
  %166 = call %struct.TYPE_16__* @xcb_query_font_reply(i32* %164, i32 %165, i32* null)
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  store %struct.TYPE_16__* %166, %struct.TYPE_16__** %169, align 8
  %170 = icmp ne %struct.TYPE_16__* %166, null
  br i1 %170, label %175, label %171

171:                                              ; preds = %155
  %172 = load i32, i32* @EXIT_FAILURE, align 4
  %173 = load i8*, i8** %4, align 8
  %174 = call i32 @errx(i32 %172, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %173)
  br label %175

175:                                              ; preds = %171, %155
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %178, align 8
  %180 = call i64 @xcb_query_font_char_infos_length(%struct.TYPE_16__* %179)
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %175
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 1
  store i32* null, i32** %185, align 8
  br label %195

186:                                              ; preds = %175
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %189, align 8
  %191 = call i32* @xcb_query_font_char_infos(%struct.TYPE_16__* %190)
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 1
  store i32* %191, i32** %194, align 8
  br label %195

195:                                              ; preds = %186, %182
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = add nsw i64 %201, %207
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 2
  store i64 %208, i64* %209, align 8
  %210 = load i32, i32* @FONT_TYPE_XCB, align 4
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %0, i32 0, i32 0
  store i32 %210, i32* %211, align 8
  br label %212

212:                                              ; preds = %195, %60, %36, %17
  ret void
}

declare dso_local i32 @free_font(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @load_pango_font(%struct.TYPE_15__*, i8*) #1

declare dso_local i8* @sstrdup(i8*) #1

declare dso_local i32 @xcb_generate_id(i32*) #1

declare dso_local i32 @xcb_open_font_checked(i32*, i32, i32, i8*) #1

declare dso_local i32 @xcb_query_font(i32*, i32) #1

declare dso_local %struct.TYPE_14__* @xcb_request_check(i32*, i32) #1

declare dso_local i32 @ELOG(i8*, ...) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @LOG(i8*, i8*) #1

declare dso_local %struct.TYPE_16__* @xcb_query_font_reply(i32*, i32, i32*) #1

declare dso_local i64 @xcb_query_font_char_infos_length(%struct.TYPE_16__*) #1

declare dso_local i32* @xcb_query_font_char_infos(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
