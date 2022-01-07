; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_parse_program.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_parse_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.tree = type { i32 }

@type_tl_program = common dso_local global i32 0, align 4
@parse_constr_declarations = common dso_local global i32 0, align 4
@parse = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@lex_eof = common dso_local global i64 0, align 8
@PARSE_OK = common dso_local global i32 0, align 4
@lex_error = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@PARSE_FAIL = common dso_local global i32 0, align 4
@parse_fun_declarations = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"types\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tree* @parse_program() #0 {
  %1 = load i32, i32* @type_tl_program, align 4
  %2 = call i32 @PARSE_INIT(i32 %1)
  br label %3

3:                                                ; preds = %0, %49
  %4 = load i32, i32* @parse_constr_declarations, align 4
  %5 = call i32 @PARSE_TRY_PES(i32 %4)
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @parse, i32 0, i32 0, i32 0), align 8
  %7 = load i64, i64* @lex_eof, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = load i32, i32* @PARSE_OK, align 4
  br label %11

11:                                               ; preds = %9, %3
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @parse, i32 0, i32 0, i32 0), align 8
  %13 = load i64, i64* @lex_error, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = call i64 @expect(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = call i64 @expect(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = call i64 @expect(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %18, %15, %11
  %25 = load i32, i32* @PARSE_FAIL, align 4
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32, i32* @parse_fun_declarations, align 4
  %28 = call i32 @PARSE_TRY_PES(i32 %27)
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @parse, i32 0, i32 0, i32 0), align 8
  %30 = load i64, i64* @lex_eof, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @PARSE_OK, align 4
  br label %34

34:                                               ; preds = %32, %26
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @parse, i32 0, i32 0, i32 0), align 8
  %36 = load i64, i64* @lex_error, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = call i64 @expect(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = call i64 @expect(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = call i64 @expect(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44, %41, %38, %34
  %48 = load i32, i32* @PARSE_FAIL, align 4
  br label %49

49:                                               ; preds = %47, %44
  br label %3
}

declare dso_local i32 @PARSE_INIT(i32) #1

declare dso_local i32 @PARSE_TRY_PES(i32) #1

declare dso_local i64 @expect(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
