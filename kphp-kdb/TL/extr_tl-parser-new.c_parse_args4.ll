; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_parse_args4.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_parse_args4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32 }
%struct.parse = type { i32 }

@type_args4 = common dso_local global i32 0, align 4
@parse_optional_arg_def = common dso_local global i32 0, align 4
@S = common dso_local global i64 0, align 8
@T = common dso_local global i32 0, align 4
@type_exclam = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"!\00", align 1
@parse_type_term = common dso_local global i32 0, align 4
@PARSE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tree* @parse_args4() #0 {
  %1 = alloca %struct.tree*, align 8
  %2 = alloca %struct.parse, align 4
  %3 = load i32, i32* @type_args4, align 4
  %4 = call i32 @PARSE_INIT(i32 %3)
  %5 = call i32 (...) @save_parse()
  %6 = getelementptr inbounds %struct.parse, %struct.parse* %2, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @parse_optional_arg_def, align 4
  %8 = call i32 @PARSE_TRY(i32 %7)
  %9 = load i64, i64* @S, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %0
  %12 = load i32, i32* @T, align 4
  %13 = load i64, i64* @S, align 8
  %14 = call i32 @tree_add_child(i32 %12, i64 %13)
  br label %19

15:                                               ; preds = %0
  %16 = getelementptr inbounds %struct.parse, %struct.parse* %2, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @load_parse(i32 %17)
  br label %19

19:                                               ; preds = %15, %11
  %20 = call i64 @LEX_CHAR(i8 signext 33)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* @type_exclam, align 4
  %24 = call i32 @PARSE_ADD(i32 %23)
  %25 = call i32 @EXPECT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i32, i32* @parse_type_term, align 4
  %28 = call i32 @PARSE_TRY_PES(i32 %27)
  %29 = load i32, i32* @PARSE_OK, align 4
  %30 = load %struct.tree*, %struct.tree** %1, align 8
  ret %struct.tree* %30
}

declare dso_local i32 @PARSE_INIT(i32) #1

declare dso_local i32 @save_parse(...) #1

declare dso_local i32 @PARSE_TRY(i32) #1

declare dso_local i32 @tree_add_child(i32, i64) #1

declare dso_local i32 @load_parse(i32) #1

declare dso_local i64 @LEX_CHAR(i8 signext) #1

declare dso_local i32 @PARSE_ADD(i32) #1

declare dso_local i32 @EXPECT(i8*) #1

declare dso_local i32 @PARSE_TRY_PES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
