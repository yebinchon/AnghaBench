; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_parse_var_ident_opt.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_parse_var_ident_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.tree = type { i32 }

@type_var_ident_opt = common dso_local global i32 0, align 4
@parse = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@lex_lc_ident = common dso_local global i64 0, align 8
@lex_uc_ident = common dso_local global i64 0, align 8
@T = common dso_local global %struct.TYPE_6__* null, align 8
@PARSE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Can not parse var ident opt\00", align 1
@PARSE_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tree* @parse_var_ident_opt() #0 {
  %1 = alloca %struct.tree*, align 8
  %2 = load i32, i32* @type_var_ident_opt, align 4
  %3 = call i32 @PARSE_INIT(i32 %2)
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @parse, i32 0, i32 0, i32 0), align 8
  %5 = load i64, i64* @lex_lc_ident, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @parse, i32 0, i32 0, i32 0), align 8
  %9 = load i64, i64* @lex_uc_ident, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %7, %0
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @parse, i32 0, i32 0, i32 1), align 8
  %13 = and i32 %12, 3
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @parse, i32 0, i32 0, i32 3), align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @T, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @parse, i32 0, i32 0, i32 2), align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @T, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @parse, i32 0, i32 0, i32 1), align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @T, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = call i32 (...) @parse_lex()
  %26 = load i32, i32* @PARSE_OK, align 4
  br label %46

27:                                               ; preds = %11, %7
  %28 = call i64 @LEX_CHAR(i8 signext 95)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @parse, i32 0, i32 0, i32 3), align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @T, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @parse, i32 0, i32 0, i32 2), align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @T, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @parse, i32 0, i32 0, i32 1), align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @T, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = call i32 (...) @parse_lex()
  %41 = load i32, i32* @PARSE_OK, align 4
  br label %45

42:                                               ; preds = %27
  %43 = call i32 @parse_error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @PARSE_FAIL, align 4
  br label %45

45:                                               ; preds = %42, %30
  br label %46

46:                                               ; preds = %45, %15
  %47 = load %struct.tree*, %struct.tree** %1, align 8
  ret %struct.tree* %47
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
