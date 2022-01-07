; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_parse_opt_args.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_parse_opt_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i8* }
%struct.tree = type { i32 }

@type_opt_args = common dso_local global i32 0, align 4
@parse_var_ident = common dso_local global i32 0, align 4
@parse = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@lex_char = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@parse_type_term = common dso_local global i32 0, align 4
@PARSE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tree* @parse_opt_args() #0 {
  %1 = alloca %struct.tree*, align 8
  %2 = load i32, i32* @type_opt_args, align 4
  %3 = call i32 @PARSE_INIT(i32 %2)
  br label %4

4:                                                ; preds = %0, %16
  %5 = load i32, i32* @parse_var_ident, align 4
  %6 = call i32 @PARSE_TRY_PES(i32 %5)
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @parse, i32 0, i32 0, i32 0), align 8
  %8 = load i64, i64* @lex_char, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @parse, i32 0, i32 0, i32 1), align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 58
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %17

16:                                               ; preds = %10, %4
  br label %4

17:                                               ; preds = %15
  %18 = call i32 @EXPECT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @parse_type_term, align 4
  %20 = call i32 @PARSE_TRY_PES(i32 %19)
  %21 = load i32, i32* @PARSE_OK, align 4
  %22 = load %struct.tree*, %struct.tree** %1, align 8
  ret %struct.tree* %22
}

declare dso_local i32 @PARSE_INIT(i32) #1

declare dso_local i32 @PARSE_TRY_PES(i32) #1

declare dso_local i32 @EXPECT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
