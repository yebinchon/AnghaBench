; ModuleID = '/home/carl/AnghaBench/i3/i3bar/src/extr_workspaces.c_workspaces_string_cb.c'
source_filename = "/home/carl/AnghaBench/i3/i3bar/src/extr_workspaces.c_workspaces_string_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.workspaces_json_params = type { i8*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_5__*, i8*, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@workspaces_string_cb.ws_num = internal global [10 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"Got workspace canonical: %s, name: '%s', name_width: %d, glyphs: %zu\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@tailq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @workspaces_string_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @workspaces_string_cb(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.workspaces_json_params*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.workspaces_json_params*
  store %struct.workspaces_json_params* %14, %struct.workspaces_json_params** %8, align 8
  %15 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %8, align 8
  %16 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %138, label %20

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @sstrndup(i8* %22, i64 %23)
  %25 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %8, align 8
  %26 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 4
  store i32 %24, i32* %28, align 4
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 0), align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %20
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 1), align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %92

34:                                               ; preds = %31, %20
  %35 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %8, align 8
  %36 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %39, 0
  br i1 %40, label %41, label %92

41:                                               ; preds = %34
  %42 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %8, align 8
  %43 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @snprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @workspaces_string_cb.ws_num, i64 0, i64 0), i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  %48 = load i8*, i8** %9, align 8
  %49 = call i64 @strspn(i8* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @workspaces_string_cb.ws_num, i64 0, i64 0))
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %41
  %53 = load i8*, i8** %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 58
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  %60 = load i64, i64* %10, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %10, align 8
  br label %62

62:                                               ; preds = %59, %52, %41
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @config, i32 0, i32 0), align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %85

65:                                               ; preds = %62
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %7, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load i8*, i8** %9, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %10, align 8
  %75 = sub i64 %73, %74
  %76 = call i8* @i3string_from_markup_with_length(i8* %72, i64 %75)
  br label %79

77:                                               ; preds = %65
  %78 = call i8* @i3string_from_markup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @workspaces_string_cb.ws_num, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %69
  %80 = phi i8* [ %76, %69 ], [ %78, %77 ]
  %81 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %8, align 8
  %82 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  store i8* %80, i8** %84, align 8
  br label %91

85:                                               ; preds = %62
  %86 = call i8* @i3string_from_markup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @workspaces_string_cb.ws_num, i64 0, i64 0))
  %87 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %8, align 8
  %88 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  store i8* %86, i8** %90, align 8
  br label %91

91:                                               ; preds = %85, %79
  br label %100

92:                                               ; preds = %34, %31
  %93 = load i8*, i8** %9, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i8* @i3string_from_markup_with_length(i8* %93, i64 %94)
  %96 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %8, align 8
  %97 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %96, i32 0, i32 1
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  store i8* %95, i8** %99, align 8
  br label %100

100:                                              ; preds = %92, %91
  %101 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %8, align 8
  %102 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %101, i32 0, i32 1
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @predict_text_width(i8* %105)
  %107 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %8, align 8
  %108 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %107, i32 0, i32 1
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 3
  store i32 %106, i32* %110, align 8
  %111 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %8, align 8
  %112 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %111, i32 0, i32 1
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %8, align 8
  %117 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %116, i32 0, i32 1
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @i3string_as_utf8(i8* %120)
  %122 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %8, align 8
  %123 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %122, i32 0, i32 1
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %8, align 8
  %128 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %127, i32 0, i32 1
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @i3string_get_num_glyphs(i8* %131)
  %133 = call i32 @DLOG(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %115, i32 %121, i32 %126, i32 %132)
  %134 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %8, align 8
  %135 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @FREE(i8* %136)
  store i32 1, i32* %4, align 4
  br label %174

138:                                              ; preds = %3
  %139 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %8, align 8
  %140 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @strcmp(i8* %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %173, label %144

144:                                              ; preds = %138
  store i8* null, i8** %11, align 8
  %145 = load i64, i64* %7, align 8
  %146 = load i8*, i8** %6, align 8
  %147 = call i32 @sasprintf(i8** %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 %145, i8* %146)
  %148 = load i8*, i8** %11, align 8
  %149 = call %struct.TYPE_5__* @get_output_by_name(i8* %148)
  store %struct.TYPE_5__* %149, %struct.TYPE_5__** %12, align 8
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %151 = icmp ne %struct.TYPE_5__* %150, null
  br i1 %151, label %152, label %170

152:                                              ; preds = %144
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %154 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %8, align 8
  %155 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %154, i32 0, i32 1
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  store %struct.TYPE_5__* %153, %struct.TYPE_5__** %157, align 8
  %158 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %8, align 8
  %159 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %158, i32 0, i32 1
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.workspaces_json_params*, %struct.workspaces_json_params** %8, align 8
  %166 = getelementptr inbounds %struct.workspaces_json_params, %struct.workspaces_json_params* %165, i32 0, i32 1
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = load i32, i32* @tailq, align 4
  %169 = call i32 @TAILQ_INSERT_TAIL(i32 %164, %struct.TYPE_7__* %167, i32 %168)
  br label %170

170:                                              ; preds = %152, %144
  %171 = load i8*, i8** %11, align 8
  %172 = call i32 @FREE(i8* %171)
  store i32 1, i32* %4, align 4
  br label %174

173:                                              ; preds = %138
  store i32 0, i32* %4, align 4
  br label %174

174:                                              ; preds = %173, %170, %100
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @sstrndup(i8*, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i8* @i3string_from_markup_with_length(i8*, i64) #1

declare dso_local i8* @i3string_from_markup(i8*) #1

declare dso_local i32 @predict_text_width(i8*) #1

declare dso_local i32 @DLOG(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @i3string_as_utf8(i8*) #1

declare dso_local i32 @i3string_get_num_glyphs(i8*) #1

declare dso_local i32 @FREE(i8*) #1

declare dso_local i32 @sasprintf(i8**, i8*, i64, i8*) #1

declare dso_local %struct.TYPE_5__* @get_output_by_name(i8*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
