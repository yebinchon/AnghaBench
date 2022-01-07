; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_mruby.c_h2o_mruby_compile_code.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_mruby.c_h2o_mruby_compile_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RProc = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.mrb_parser_state = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%s: no memory\0A\00", align 1
@H2O_MRUBY_MODULE_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%s: internal error (unexpected state)\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"line %d:%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"%s: internal error (mrb_generate_code failed)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.RProc* @h2o_mruby_compile_code(i32* %0, %struct.TYPE_13__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.mrb_parser_state*, align 8
  %9 = alloca %struct.RProc*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.RProc* null, %struct.RProc** %9, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call %struct.TYPE_12__* @mrbc_context_new(i32* %10)
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %7, align 8
  %12 = icmp eq %struct.TYPE_12__* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @H2O_MRUBY_MODULE_NAME, align 4
  %15 = call i32 @h2o_fatal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %13, %3
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @mrbc_filename(i32* %22, %struct.TYPE_12__* %23, i32* %26)
  br label %28

28:                                               ; preds = %21, %16
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %47 = call %struct.mrb_parser_state* @mrb_parse_nstring(i32* %36, i32 %40, i32 %45, %struct.TYPE_12__* %46)
  store %struct.mrb_parser_state* %47, %struct.mrb_parser_state** %8, align 8
  %48 = icmp eq %struct.mrb_parser_state* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %28
  %50 = load i32, i32* @H2O_MRUBY_MODULE_NAME, align 4
  %51 = call i32 @h2o_fatal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %49, %28
  %53 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %8, align 8
  %54 = getelementptr inbounds %struct.mrb_parser_state, %struct.mrb_parser_state* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %120

57:                                               ; preds = %52
  %58 = load i8*, i8** %6, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @H2O_MRUBY_MODULE_NAME, align 4
  %62 = call i32 @h2o_fatal(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i8*, i8** %6, align 8
  %65 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %8, align 8
  %66 = getelementptr inbounds %struct.mrb_parser_state, %struct.mrb_parser_state* %65, i32 0, i32 1
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %8, align 8
  %72 = getelementptr inbounds %struct.mrb_parser_state, %struct.mrb_parser_state* %71, i32 0, i32 1
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @snprintf(i8* %64, i32 256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %70, i8* %76)
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @strcat(i8* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i8*, i8** %6, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @strlen(i8* %81)
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %8, align 8
  %94 = getelementptr inbounds %struct.mrb_parser_state, %struct.mrb_parser_state* %93, i32 0, i32 1
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %98, %101
  %103 = add nsw i32 %102, 1
  %104 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %8, align 8
  %105 = getelementptr inbounds %struct.mrb_parser_state, %struct.mrb_parser_state* %104, i32 0, i32 1
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @h2o_str_at_position(i8* %84, i32 %88, i64 %92, i32 %103, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %63
  %113 = load i8*, i8** %6, align 8
  %114 = load i8*, i8** %6, align 8
  %115 = call i32 @strlen(i8* %114)
  %116 = sub nsw i32 %115, 2
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %113, i64 %117
  store i8 0, i8* %118, align 1
  br label %119

119:                                              ; preds = %112, %63
  br label %129

120:                                              ; preds = %52
  %121 = load i32*, i32** %4, align 8
  %122 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %8, align 8
  %123 = call %struct.RProc* @mrb_generate_code(i32* %121, %struct.mrb_parser_state* %122)
  store %struct.RProc* %123, %struct.RProc** %9, align 8
  %124 = icmp eq %struct.RProc* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i32, i32* @H2O_MRUBY_MODULE_NAME, align 4
  %127 = call i32 @h2o_fatal(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %125, %120
  br label %129

129:                                              ; preds = %128, %119
  %130 = load %struct.mrb_parser_state*, %struct.mrb_parser_state** %8, align 8
  %131 = call i32 @mrb_parser_free(%struct.mrb_parser_state* %130)
  %132 = load i32*, i32** %4, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %134 = call i32 @mrbc_context_free(i32* %132, %struct.TYPE_12__* %133)
  %135 = load %struct.RProc*, %struct.RProc** %9, align 8
  ret %struct.RProc* %135
}

declare dso_local %struct.TYPE_12__* @mrbc_context_new(i32*) #1

declare dso_local i32 @h2o_fatal(i8*, i32) #1

declare dso_local i32 @mrbc_filename(i32*, %struct.TYPE_12__*, i32*) #1

declare dso_local %struct.mrb_parser_state* @mrb_parse_nstring(i32*, i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @h2o_str_at_position(i8*, i32, i64, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.RProc* @mrb_generate_code(i32*, %struct.mrb_parser_state*) #1

declare dso_local i32 @mrb_parser_free(%struct.mrb_parser_state*) #1

declare dso_local i32 @mrbc_context_free(i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
