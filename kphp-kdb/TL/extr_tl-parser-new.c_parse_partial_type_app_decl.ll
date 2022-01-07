; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_parse_partial_type_app_decl.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_parse_partial_type_app_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32 }

@type_partial_type_app_decl = common dso_local global i32 0, align 4
@parse_boxed_type_ident = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"<\00", align 1
@parse_expr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c">\00", align 1
@PARSE_OK = common dso_local global i32 0, align 4
@parse_subexpr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tree* @parse_partial_type_app_decl() #0 {
  %1 = alloca %struct.tree*, align 8
  %2 = load i32, i32* @type_partial_type_app_decl, align 4
  %3 = call i32 @PARSE_INIT(i32 %2)
  %4 = load i32, i32* @parse_boxed_type_ident, align 4
  %5 = call i32 @PARSE_TRY_PES(i32 %4)
  %6 = call i64 @LEX_CHAR(i8 signext 60)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %0
  %9 = call i32 @EXPECT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %16
  %11 = load i32, i32* @parse_expr, align 4
  %12 = call i32 @PARSE_TRY_PES(i32 %11)
  %13 = call i64 @LEX_CHAR(i8 signext 62)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %18

16:                                               ; preds = %10
  %17 = call i32 @EXPECT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %10

18:                                               ; preds = %15
  %19 = call i32 @EXPECT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* @PARSE_OK, align 4
  br label %31

21:                                               ; preds = %0
  br label %22

22:                                               ; preds = %21, %28
  %23 = load i32, i32* @parse_subexpr, align 4
  %24 = call i32 @PARSE_TRY_PES(i32 %23)
  %25 = call i64 @LEX_CHAR(i8 signext 59)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %29

28:                                               ; preds = %22
  br label %22

29:                                               ; preds = %27
  %30 = load i32, i32* @PARSE_OK, align 4
  br label %31

31:                                               ; preds = %29, %18
  %32 = load %struct.tree*, %struct.tree** %1, align 8
  ret %struct.tree* %32
}

declare dso_local i32 @PARSE_INIT(i32) #1

declare dso_local i32 @PARSE_TRY_PES(i32) #1

declare dso_local i64 @LEX_CHAR(i8 signext) #1

declare dso_local i32 @EXPECT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
