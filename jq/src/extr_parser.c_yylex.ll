; ModuleID = '/home/carl/AnghaBench/jq/src/extr_parser.c_yylex.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_parser.c_yylex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.locfile = type { i32 }
%struct.lexer_param = type { i32 }

@LITERAL = common dso_local global i32 0, align 4
@QQSTRING_TEXT = common dso_local global i32 0, align 4
@JV_KIND_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Invalid literal\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yylex(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32* %3, %struct.locfile* %4, %struct.lexer_param* %5) #0 {
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.locfile*, align 8
  %12 = alloca %struct.lexer_param*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.locfile* %4, %struct.locfile** %11, align 8
  store %struct.lexer_param* %5, %struct.lexer_param** %12, align 8
  %16 = load %struct.lexer_param*, %struct.lexer_param** %12, align 8
  %17 = getelementptr inbounds %struct.lexer_param, %struct.lexer_param* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %13, align 4
  %22 = call i32 @jq_yylex(%struct.TYPE_4__* %19, i32* %20, i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* @LITERAL, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* @QQSTRING_TEXT, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %66

30:                                               ; preds = %26, %6
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @jv_is_valid(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %66, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @jv_copy(i32 %39)
  %41 = call i32 @jv_invalid_get_msg(i32 %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = call i64 @jv_get_kind(i32 %42)
  %44 = load i64, i64* @JV_KIND_STRING, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %36
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %15, align 4
  %50 = call i8* @jv_string_value(i32 %49)
  %51 = call i32 @FAIL(i32 %48, i8* %50)
  br label %56

52:                                               ; preds = %36
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @FAIL(i32 %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %52, %46
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @jv_free(i32 %57)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @jv_free(i32 %61)
  %63 = call i32 (...) @jv_null()
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %56, %30, %26
  %67 = load i32, i32* %14, align 4
  ret i32 %67
}

declare dso_local i32 @jq_yylex(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @jv_is_valid(i32) #1

declare dso_local i32 @jv_invalid_get_msg(i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @FAIL(i32, i8*) #1

declare dso_local i8* @jv_string_value(i32) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @jv_null(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
