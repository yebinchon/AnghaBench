; ModuleID = '/home/carl/AnghaBench/http-parser/extr_test.c_test_message_connect.c'
source_filename = "/home/carl/AnghaBench/http-parser/extr_test.c_test_message_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i8*, i32, i64 }

@num_messages = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"\0A*** num_messages != 1 after testing '%s' ***\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_message_connect(%struct.message* %0) #0 {
  %2 = alloca %struct.message*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.message* %0, %struct.message** %2, align 8
  %5 = load %struct.message*, %struct.message** %2, align 8
  %6 = getelementptr inbounds %struct.message, %struct.message* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i8*
  store i8* %8, i8** %3, align 8
  %9 = load %struct.message*, %struct.message** %2, align 8
  %10 = getelementptr inbounds %struct.message, %struct.message* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @strlen(i64 %11)
  store i64 %12, i64* %4, align 8
  %13 = load %struct.message*, %struct.message** %2, align 8
  %14 = getelementptr inbounds %struct.message, %struct.message* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @parser_init(i32 %15)
  %17 = load i8*, i8** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @parse_connect(i8* %17, i64 %18)
  %20 = load i32, i32* @num_messages, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.message*, %struct.message** %2, align 8
  %24 = getelementptr inbounds %struct.message, %struct.message* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = call i32 (...) @abort() #3
  unreachable

28:                                               ; preds = %1
  %29 = load %struct.message*, %struct.message** %2, align 8
  %30 = call i32 @message_eq(i32 0, i32 1, %struct.message* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = call i32 (...) @abort() #3
  unreachable

34:                                               ; preds = %28
  ret void
}

declare dso_local i64 @strlen(i64) #1

declare dso_local i32 @parser_init(i32) #1

declare dso_local i32 @parse_connect(i8*, i64) #1

declare dso_local i32 @printf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @message_eq(i32, i32, %struct.message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
