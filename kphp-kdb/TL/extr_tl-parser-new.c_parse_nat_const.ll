; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_parse_nat_const.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_parse_nat_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.tree = type { i32 }

@type_nat_const = common dso_local global i32 0, align 4
@parse = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@lex_num = common dso_local global i64 0, align 8
@T = common dso_local global %struct.TYPE_6__* null, align 8
@PARSE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Can not parse nat const\00", align 1
@PARSE_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tree* @parse_nat_const() #0 {
  %1 = alloca %struct.tree*, align 8
  %2 = load i32, i32* @type_nat_const, align 4
  %3 = call i32 @PARSE_INIT(i32 %2)
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @parse, i32 0, i32 0, i32 0), align 8
  %5 = load i64, i64* @lex_num, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %19

7:                                                ; preds = %0
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @parse, i32 0, i32 0, i32 3), align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @T, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @parse, i32 0, i32 0, i32 2), align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @T, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @parse, i32 0, i32 0, i32 1), align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @T, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = call i32 (...) @parse_lex()
  %18 = load i32, i32* @PARSE_OK, align 4
  br label %22

19:                                               ; preds = %0
  %20 = call i32 @parse_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @PARSE_FAIL, align 4
  br label %22

22:                                               ; preds = %19, %7
  %23 = load %struct.tree*, %struct.tree** %1, align 8
  ret %struct.tree* %23
}

declare dso_local i32 @PARSE_INIT(i32) #1

declare dso_local i32 @parse_lex(...) #1

declare dso_local i32 @parse_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
