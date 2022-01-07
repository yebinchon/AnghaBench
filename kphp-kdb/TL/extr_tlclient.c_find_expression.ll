; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tlclient.c_find_expression.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tlclient.c_find_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_expression = type { i32 }

@rl_line_buffer = common dso_local global i8* null, align 8
@compiler = common dso_local global i32 0, align 4
@TL_SECTION_TYPES = common dso_local global i32 0, align 4
@TL_SECTION_FUNCTIONS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_expression* @find_expression(i32 %0) #0 {
  %2 = alloca %struct.tl_expression*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tl_expression*, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %50, %1
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load i8*, i8** @rl_line_buffer, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 40
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 0
  br label %24

24:                                               ; preds = %21, %13
  %25 = phi i1 [ true, %13 ], [ %23, %21 ]
  br label %26

26:                                               ; preds = %24, %10
  %27 = phi i1 [ false, %10 ], [ %25, %24 ]
  br i1 %27, label %28, label %53

28:                                               ; preds = %26
  %29 = load i8*, i8** @rl_line_buffer, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 40
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %36, %28
  %40 = load i8*, i8** @rl_line_buffer, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 41
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %39
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %5, align 4
  br label %10

53:                                               ; preds = %26
  %54 = load i32, i32* %5, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %97

56:                                               ; preds = %53
  %57 = load i8*, i8** @rl_line_buffer, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 40
  br i1 %63, label %64, label %97

64:                                               ; preds = %56
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %76, %64
  %68 = load i8*, i8** @rl_line_buffer, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = call i32 @isspace(i8 signext %72)
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %67

79:                                               ; preds = %67
  %80 = load i8*, i8** @rl_line_buffer, align 8
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  %83 = load i32, i32* %6, align 4
  %84 = call i8* @cstr_substr(i8* %80, i32 %82, i32 %83)
  store i8* %84, i8** %7, align 8
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i32, i32* @TL_SECTION_TYPES, align 4
  br label %91

89:                                               ; preds = %79
  %90 = load i32, i32* @TL_SECTION_FUNCTIONS, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = load i8*, i8** %7, align 8
  %94 = call %struct.tl_expression* @tl_list_expressions_find_by_combinator_name(i32* @compiler, i32 %92, i8* %93, i32* null)
  store %struct.tl_expression* %94, %struct.tl_expression** %8, align 8
  %95 = call i32 @cstr_free(i8** %7)
  %96 = load %struct.tl_expression*, %struct.tl_expression** %8, align 8
  store %struct.tl_expression* %96, %struct.tl_expression** %2, align 8
  br label %98

97:                                               ; preds = %56, %53
  store %struct.tl_expression* null, %struct.tl_expression** %2, align 8
  br label %98

98:                                               ; preds = %97, %91
  %99 = load %struct.tl_expression*, %struct.tl_expression** %2, align 8
  ret %struct.tl_expression* %99
}

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i8* @cstr_substr(i8*, i32, i32) #1

declare dso_local %struct.tl_expression* @tl_list_expressions_find_by_combinator_name(i32*, i32, i8*, i32*) #1

declare dso_local i32 @cstr_free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
