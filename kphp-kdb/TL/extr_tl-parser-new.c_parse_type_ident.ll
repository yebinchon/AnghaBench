; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_parse_type_ident.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_parse_type_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.tree = type { i32 }

@type_type_ident = common dso_local global i32 0, align 4
@parse = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@lex_uc_ident = common dso_local global i64 0, align 8
@T = common dso_local global %struct.TYPE_6__* null, align 8
@PARSE_OK = common dso_local global i32 0, align 4
@lex_lc_ident = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Can not parse type ident\00", align 1
@PARSE_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tree* @parse_type_ident() #0 {
  %1 = alloca %struct.tree*, align 8
  %2 = load i32, i32* @type_type_ident, align 4
  %3 = call i32 @PARSE_INIT(i32 %2)
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @parse, i32 0, i32 0, i32 0), align 8
  %5 = load i64, i64* @lex_uc_ident, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %23

7:                                                ; preds = %0
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @parse, i32 0, i32 0, i32 1), align 8
  %9 = and i32 %8, 2
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @parse, i32 0, i32 0, i32 3), align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @T, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @parse, i32 0, i32 0, i32 2), align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @T, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @parse, i32 0, i32 0, i32 1), align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @T, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = call i32 (...) @parse_lex()
  %22 = load i32, i32* @PARSE_OK, align 4
  br label %63

23:                                               ; preds = %7, %0
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @parse, i32 0, i32 0, i32 0), align 8
  %25 = load i64, i64* @lex_lc_ident, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @parse, i32 0, i32 0, i32 1), align 8
  %29 = and i32 %28, 2
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @parse, i32 0, i32 0, i32 3), align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @T, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @parse, i32 0, i32 0, i32 2), align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @T, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @parse, i32 0, i32 0, i32 1), align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @T, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = call i32 (...) @parse_lex()
  %42 = load i32, i32* @PARSE_OK, align 4
  br label %62

43:                                               ; preds = %27, %23
  %44 = call i64 @LEX_CHAR(i8 signext 35)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @parse, i32 0, i32 0, i32 3), align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @T, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @parse, i32 0, i32 0, i32 2), align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @T, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @parse, i32 0, i32 0, i32 1), align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @T, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = call i32 (...) @parse_lex()
  %57 = load i32, i32* @PARSE_OK, align 4
  br label %61

58:                                               ; preds = %43
  %59 = call i32 @parse_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @PARSE_FAIL, align 4
  br label %61

61:                                               ; preds = %58, %46
  br label %62

62:                                               ; preds = %61, %31
  br label %63

63:                                               ; preds = %62, %11
  %64 = load %struct.tree*, %struct.tree** %1, align 8
  ret %struct.tree* %64
}

declare dso_local i32 @PARSE_INIT(i32) #1

declare dso_local i32 @parse_lex(...) #1

declare dso_local i64 @LEX_CHAR(i8 signext) #1

declare dso_local i32 @parse_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
