; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_expression_join.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_expression_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_compiler = type { i32 }
%struct.tl_expression = type { %struct.tl_token*, i32, %struct.tl_token* }
%struct.tl_token = type { i32, %struct.tl_token* }
%struct.tl_buffer = type { i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"#%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tl_expression_join(%struct.tl_compiler* %0, %struct.tl_expression* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tl_compiler*, align 8
  %6 = alloca %struct.tl_expression*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tl_token*, align 8
  %9 = alloca %struct.tl_buffer, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.tl_compiler* %0, %struct.tl_compiler** %5, align 8
  store %struct.tl_expression* %1, %struct.tl_expression** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = call i32 @tl_string_buffer_init(%struct.tl_buffer* %9)
  %13 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %14 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %13, i32 0, i32 2
  %15 = load %struct.tl_token*, %struct.tl_token** %14, align 8
  store %struct.tl_token* %15, %struct.tl_token** %8, align 8
  br label %16

16:                                               ; preds = %44, %3
  %17 = load %struct.tl_token*, %struct.tl_token** %8, align 8
  %18 = icmp ne %struct.tl_token* %17, null
  br i1 %18, label %19, label %48

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.tl_buffer, %struct.tl_buffer* %9, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %9, i8 signext 32)
  br label %25

25:                                               ; preds = %23, %19
  %26 = load %struct.tl_token*, %struct.tl_token** %8, align 8
  %27 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @tl_string_buffer_append_cstr(%struct.tl_buffer* %9, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load %struct.tl_token*, %struct.tl_token** %8, align 8
  %34 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %35 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %34, i32 0, i32 2
  %36 = load %struct.tl_token*, %struct.tl_token** %35, align 8
  %37 = icmp eq %struct.tl_token* %33, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %40 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @tl_string_buffer_printf(%struct.tl_buffer* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %38, %32, %25
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.tl_token*, %struct.tl_token** %8, align 8
  %46 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %45, i32 0, i32 1
  %47 = load %struct.tl_token*, %struct.tl_token** %46, align 8
  store %struct.tl_token* %47, %struct.tl_token** %8, align 8
  br label %16

48:                                               ; preds = %16
  %49 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %50 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %49, i32 0, i32 0
  %51 = load %struct.tl_token*, %struct.tl_token** %50, align 8
  %52 = icmp ne %struct.tl_token* %51, null
  br i1 %52, label %53, label %73

53:                                               ; preds = %48
  %54 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %9, i8 signext 32)
  %55 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %9, i8 signext 61)
  %56 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %57 = getelementptr inbounds %struct.tl_expression, %struct.tl_expression* %56, i32 0, i32 0
  %58 = load %struct.tl_token*, %struct.tl_token** %57, align 8
  store %struct.tl_token* %58, %struct.tl_token** %8, align 8
  br label %59

59:                                               ; preds = %68, %53
  %60 = load %struct.tl_token*, %struct.tl_token** %8, align 8
  %61 = icmp ne %struct.tl_token* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %9, i8 signext 32)
  %64 = load %struct.tl_token*, %struct.tl_token** %8, align 8
  %65 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @tl_string_buffer_append_cstr(%struct.tl_buffer* %9, i32 %66)
  br label %68

68:                                               ; preds = %62
  %69 = load %struct.tl_token*, %struct.tl_token** %8, align 8
  %70 = getelementptr inbounds %struct.tl_token, %struct.tl_token* %69, i32 0, i32 1
  %71 = load %struct.tl_token*, %struct.tl_token** %70, align 8
  store %struct.tl_token* %71, %struct.tl_token** %8, align 8
  br label %59

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %48
  %74 = call i32 @tl_string_buffer_append_char(%struct.tl_buffer* %9, i8 signext 0)
  %75 = load %struct.tl_compiler*, %struct.tl_compiler** %5, align 8
  %76 = load %struct.tl_expression*, %struct.tl_expression** %6, align 8
  %77 = getelementptr inbounds %struct.tl_buffer, %struct.tl_buffer* %9, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @tl_expression_remove_sugar(%struct.tl_compiler* %75, %struct.tl_expression* %76, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = call i32 @tl_string_buffer_free(%struct.tl_buffer* %9)
  store i8* null, i8** %4, align 8
  br label %90

84:                                               ; preds = %73
  %85 = getelementptr inbounds %struct.tl_buffer, %struct.tl_buffer* %9, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i8* @cstr_dup(i32 %86)
  store i8* %87, i8** %11, align 8
  %88 = call i32 @tl_string_buffer_free(%struct.tl_buffer* %9)
  %89 = load i8*, i8** %11, align 8
  store i8* %89, i8** %4, align 8
  br label %90

90:                                               ; preds = %84, %82
  %91 = load i8*, i8** %4, align 8
  ret i8* %91
}

declare dso_local i32 @tl_string_buffer_init(%struct.tl_buffer*) #1

declare dso_local i32 @tl_string_buffer_append_char(%struct.tl_buffer*, i8 signext) #1

declare dso_local i32 @tl_string_buffer_append_cstr(%struct.tl_buffer*, i32) #1

declare dso_local i32 @tl_string_buffer_printf(%struct.tl_buffer*, i8*, i32) #1

declare dso_local i32 @tl_expression_remove_sugar(%struct.tl_compiler*, %struct.tl_expression*, i32) #1

declare dso_local i32 @tl_string_buffer_free(%struct.tl_buffer*) #1

declare dso_local i8* @cstr_dup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
