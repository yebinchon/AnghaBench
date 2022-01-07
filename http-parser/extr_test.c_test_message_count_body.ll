; ModuleID = '/home/carl/AnghaBench/http-parser/extr_test.c_test_message_count_body.c'
source_filename = "/home/carl/AnghaBench/http-parser/extr_test.c_test_message_count_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i8*, i32*, i32 }

@num_messages = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"\0A*** num_messages != 1 after testing '%s' ***\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_message_count_body(%struct.message* %0) #0 {
  %2 = alloca %struct.message*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.message* %0, %struct.message** %2, align 8
  %8 = load %struct.message*, %struct.message** %2, align 8
  %9 = getelementptr inbounds %struct.message, %struct.message* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @parser_init(i32 %10)
  %12 = load %struct.message*, %struct.message** %2, align 8
  %13 = getelementptr inbounds %struct.message, %struct.message* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i64 @strlen(i32* %14)
  store i64 %15, i64* %4, align 8
  store i64 4024, i64* %7, align 8
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %44, %1
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %16
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = sub i64 %21, %22
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @MIN(i64 %23, i64 %24)
  store i64 %25, i64* %6, align 8
  %26 = load %struct.message*, %struct.message** %2, align 8
  %27 = getelementptr inbounds %struct.message, %struct.message* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @parse_count_body(i32* %30, i64 %31)
  store i64 %32, i64* %3, align 8
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %20
  %37 = load %struct.message*, %struct.message** %2, align 8
  %38 = getelementptr inbounds %struct.message, %struct.message* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @print_error(i32* %39, i64 %40)
  %42 = call i32 (...) @abort() #3
  unreachable

43:                                               ; preds = %20
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %5, align 8
  br label %16

48:                                               ; preds = %16
  %49 = call i64 @parse_count_body(i32* null, i64 0)
  store i64 %49, i64* %3, align 8
  %50 = load i64, i64* %3, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load %struct.message*, %struct.message** %2, align 8
  %54 = getelementptr inbounds %struct.message, %struct.message* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %3, align 8
  %57 = call i32 @print_error(i32* %55, i64 %56)
  %58 = call i32 (...) @abort() #3
  unreachable

59:                                               ; preds = %48
  %60 = load i32, i32* @num_messages, align 4
  %61 = icmp ne i32 %60, 1
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load %struct.message*, %struct.message** %2, align 8
  %64 = getelementptr inbounds %struct.message, %struct.message* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %65)
  %67 = call i32 (...) @abort() #3
  unreachable

68:                                               ; preds = %59
  %69 = load %struct.message*, %struct.message** %2, align 8
  %70 = call i32 @message_eq(i32 0, i32 0, %struct.message* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = call i32 (...) @abort() #3
  unreachable

74:                                               ; preds = %68
  ret void
}

declare dso_local i32 @parser_init(i32) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @parse_count_body(i32*, i64) #1

declare dso_local i32 @print_error(i32*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @message_eq(i32, i32, %struct.message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
