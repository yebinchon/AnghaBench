; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_parse_subexpr.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_parse_subexpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32 }

@type_subexpr = common dso_local global i32 0, align 4
@parse_nat_const = common dso_local global i32 0, align 4
@S = common dso_local global i64 0, align 8
@T = common dso_local global i32 0, align 4
@parse_term = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"+\00", align 1
@PARSE_FAIL = common dso_local global i32 0, align 4
@PARSE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tree* @parse_subexpr() #0 {
  %1 = alloca %struct.tree*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @type_subexpr, align 4
  %5 = call i32 @PARSE_INIT(i32 %4)
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %0, %36
  %7 = load i32, i32* @parse_nat_const, align 4
  %8 = call i32 @PARSE_TRY(i32 %7)
  %9 = load i64, i64* @S, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load i32, i32* @T, align 4
  %13 = load i64, i64* @S, align 8
  %14 = call i32 @tree_add_child(i32 %12, i64 %13)
  br label %30

15:                                               ; preds = %6
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  %19 = load i32, i32* @parse_term, align 4
  %20 = call i32 @PARSE_TRY(i32 %19)
  %21 = load i64, i64* @S, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @T, align 4
  %25 = load i64, i64* @S, align 8
  %26 = call i32 @tree_add_child(i32 %24, i64 %25)
  br label %28

27:                                               ; preds = %18
  br label %38

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28, %15
  br label %30

30:                                               ; preds = %29, %11
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  %33 = call i32 @LEX_CHAR(i8 signext 43)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %38

36:                                               ; preds = %30
  %37 = call i32 @EXPECT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %6

38:                                               ; preds = %35, %27
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @PARSE_FAIL, align 4
  br label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @PARSE_OK, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = load %struct.tree*, %struct.tree** %1, align 8
  ret %struct.tree* %46
}

declare dso_local i32 @PARSE_INIT(i32) #1

declare dso_local i32 @PARSE_TRY(i32) #1

declare dso_local i32 @tree_add_child(i32, i64) #1

declare dso_local i32 @LEX_CHAR(i8 signext) #1

declare dso_local i32 @EXPECT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
