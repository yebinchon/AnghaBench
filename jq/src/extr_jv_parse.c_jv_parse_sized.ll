; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_parse.c_jv_parse_sized.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_parse.c_jv_parse_sized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jv_parser = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Unexpected extra JSON values\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Expected JSON value\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%s (while parsing '%s')\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jv_parse_sized(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jv_parser, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 @parser_init(%struct.jv_parser* %5, i32 0)
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @jv_parser_set_buf(%struct.jv_parser* %5, i8* %10, i32 %11, i32 0)
  %13 = call i32 @jv_parser_next(%struct.jv_parser* %5)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @jv_is_valid(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %2
  %18 = call i32 @jv_parser_next(%struct.jv_parser* %5)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @jv_is_valid(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @jv_free(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @jv_free(i32 %25)
  %27 = call i32 @jv_string(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @jv_invalid_with_msg(i32 %27)
  store i32 %28, i32* %6, align 4
  br label %42

29:                                               ; preds = %17
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @jv_copy(i32 %30)
  %32 = call i64 @jv_invalid_has_msg(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @jv_free(i32 %35)
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %6, align 4
  br label %41

38:                                               ; preds = %29
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @jv_free(i32 %39)
  br label %41

41:                                               ; preds = %38, %34
  br label %42

42:                                               ; preds = %41, %22
  br label %55

43:                                               ; preds = %2
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @jv_copy(i32 %44)
  %46 = call i64 @jv_invalid_has_msg(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %54

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @jv_free(i32 %50)
  %52 = call i32 @jv_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %53 = call i32 @jv_invalid_with_msg(i32 %52)
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %49, %48
  br label %55

55:                                               ; preds = %54, %42
  %56 = call i32 @parser_free(%struct.jv_parser* %5)
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @jv_is_valid(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @jv_copy(i32 %61)
  %63 = call i64 @jv_invalid_has_msg(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @jv_invalid_get_msg(i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @jv_string_value(i32 %68)
  %70 = load i8*, i8** %3, align 8
  %71 = call i32 @jv_string_fmt(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %69, i8* %70)
  %72 = call i32 @jv_invalid_with_msg(i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @jv_free(i32 %73)
  br label %75

75:                                               ; preds = %65, %60, %55
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @parser_init(%struct.jv_parser*, i32) #1

declare dso_local i32 @jv_parser_set_buf(%struct.jv_parser*, i8*, i32, i32) #1

declare dso_local i32 @jv_parser_next(%struct.jv_parser*) #1

declare dso_local i64 @jv_is_valid(i32) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @jv_invalid_with_msg(i32) #1

declare dso_local i32 @jv_string(i8*) #1

declare dso_local i64 @jv_invalid_has_msg(i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i32 @parser_free(%struct.jv_parser*) #1

declare dso_local i32 @jv_invalid_get_msg(i32) #1

declare dso_local i32 @jv_string_fmt(i8*, i32, i8*) #1

declare dso_local i32 @jv_string_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
