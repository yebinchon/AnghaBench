; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_parse_args2.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_parse_args2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i32 }
%struct.tree = type { i32 }

@type_args2 = common dso_local global i32 0, align 4
@parse_var_ident_opt = common dso_local global i32 0, align 4
@S = common dso_local global i64 0, align 8
@T = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@save = common dso_local global %struct.parse zeroinitializer, align 4
@parse_optional_arg_def = common dso_local global i32 0, align 4
@parse_multiplicity = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@parse_args = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@PARSE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tree* @parse_args2() #0 {
  %1 = alloca %struct.tree*, align 8
  %2 = alloca %struct.parse, align 4
  %3 = alloca %struct.parse, align 4
  %4 = load i32, i32* @type_args2, align 4
  %5 = call i32 @PARSE_INIT(i32 %4)
  %6 = load i32, i32* @parse_var_ident_opt, align 4
  %7 = call i32 @PARSE_TRY(i32 %6)
  %8 = load i64, i64* @S, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %0
  %11 = call i64 @LEX_CHAR(i8 signext 58)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i32, i32* @T, align 4
  %15 = load i64, i64* @S, align 8
  %16 = call i32 @tree_add_child(i32 %14, i64 %15)
  %17 = call i32 @EXPECT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %21

18:                                               ; preds = %10, %0
  %19 = load i32, i32* getelementptr inbounds (%struct.parse, %struct.parse* @save, i32 0, i32 0), align 4
  %20 = call i32 @load_parse(i32 %19)
  br label %21

21:                                               ; preds = %18, %13
  %22 = call i32 (...) @save_parse()
  %23 = getelementptr inbounds %struct.parse, %struct.parse* %2, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @parse_optional_arg_def, align 4
  %25 = call i32 @PARSE_TRY(i32 %24)
  %26 = load i64, i64* @S, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @T, align 4
  %30 = load i64, i64* @S, align 8
  %31 = call i32 @tree_add_child(i32 %29, i64 %30)
  br label %36

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.parse, %struct.parse* %2, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @load_parse(i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  %37 = call i32 (...) @save_parse()
  %38 = getelementptr inbounds %struct.parse, %struct.parse* %3, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @parse_multiplicity, align 4
  %40 = call i32 @PARSE_TRY(i32 %39)
  %41 = load i64, i64* @S, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = call i64 @LEX_CHAR(i8 signext 42)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* @T, align 4
  %48 = load i64, i64* @S, align 8
  %49 = call i32 @tree_add_child(i32 %47, i64 %48)
  %50 = call i32 @EXPECT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %55

51:                                               ; preds = %43, %36
  %52 = getelementptr inbounds %struct.parse, %struct.parse* %3, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @load_parse(i32 %53)
  br label %55

55:                                               ; preds = %51, %46
  %56 = call i32 @EXPECT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %61
  %58 = call i64 @LEX_CHAR(i8 signext 93)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @parse_args, align 4
  %63 = call i32 @PARSE_TRY_PES(i32 %62)
  br label %57

64:                                               ; preds = %60
  %65 = call i32 @EXPECT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32, i32* @PARSE_OK, align 4
  %67 = load %struct.tree*, %struct.tree** %1, align 8
  ret %struct.tree* %67
}

declare dso_local i32 @PARSE_INIT(i32) #1

declare dso_local i32 @PARSE_TRY(i32) #1

declare dso_local i64 @LEX_CHAR(i8 signext) #1

declare dso_local i32 @tree_add_child(i32, i64) #1

declare dso_local i32 @EXPECT(i8*) #1

declare dso_local i32 @load_parse(i32) #1

declare dso_local i32 @save_parse(...) #1

declare dso_local i32 @PARSE_TRY_PES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
