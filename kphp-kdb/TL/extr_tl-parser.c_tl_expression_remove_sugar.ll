; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_expression_remove_sugar.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_expression_remove_sugar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_compiler = type { i32 }
%struct.tl_expression = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"tl_expression_remove_sugar (\22%s\22)\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"tl_expression_remove_sugar: too many '>', expr: %s\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"tl_expression_remove_sugar: too many '<', expr: %s\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"after removing sugar: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_expression_remove_sugar(%struct.tl_compiler* %0, %struct.tl_expression* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tl_compiler*, align 8
  %6 = alloca %struct.tl_expression*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.tl_compiler* %0, %struct.tl_compiler** %5, align 8
  store %struct.tl_expression* %1, %struct.tl_expression** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  store i8* %12, i8** %8, align 8
  br label %13

13:                                               ; preds = %57, %3
  %14 = load i8*, i8** %8, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %60

17:                                               ; preds = %13
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 60
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i8*, i8** %8, align 8
  store i8 32, i8* %23, align 1
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %9, align 4
  br label %56

26:                                               ; preds = %17
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 62
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load i8*, i8** %8, align 8
  store i8 32, i8* %32, align 1
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.tl_compiler*, %struct.tl_compiler** %5, align 8
  %38 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %39 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @tl_failf(%struct.tl_compiler* %37, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  store i32 %41, i32* %4, align 4
  br label %74

42:                                               ; preds = %31
  br label %55

43:                                               ; preds = %26
  %44 = load i8*, i8** %8, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 44
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32, i32* %9, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i8*, i8** %8, align 8
  store i8 32, i8* %52, align 1
  br label %53

53:                                               ; preds = %51, %48
  br label %54

54:                                               ; preds = %53, %43
  br label %55

55:                                               ; preds = %54, %42
  br label %56

56:                                               ; preds = %55, %22
  br label %57

57:                                               ; preds = %56
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %8, align 8
  br label %13

60:                                               ; preds = %13
  %61 = load i32, i32* %9, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.tl_compiler*, %struct.tl_compiler** %5, align 8
  %65 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %66 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @tl_failf(%struct.tl_compiler* %64, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  store i32 %68, i32* %4, align 4
  br label %74

69:                                               ; preds = %60
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @cstr_remove_extra_spaces(i8* %70)
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %72)
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %69, %63, %36
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @vkprintf(i32, i8*, i8*) #1

declare dso_local i32 @tl_failf(%struct.tl_compiler*, i8*, i32) #1

declare dso_local i32 @cstr_remove_extra_spaces(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
