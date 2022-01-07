; ModuleID = '/home/carl/AnghaBench/http-parser/extr_test.c_test_multiple3.c'
source_filename = "/home/carl/AnghaBench/http-parser/extr_test.c_test_multiple3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.message = type { i8*, i32 }

@parser = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@num_messages = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"\0A\0A*** Parser didn't see 3 messages only %d *** \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_multiple3(%struct.message* %0, %struct.message* %1, %struct.message* %2) #0 {
  %4 = alloca %struct.message*, align 8
  %5 = alloca %struct.message*, align 8
  %6 = alloca %struct.message*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.message* %0, %struct.message** %4, align 8
  store %struct.message* %1, %struct.message** %5, align 8
  store %struct.message* %2, %struct.message** %6, align 8
  %11 = load %struct.message*, %struct.message** %4, align 8
  %12 = load %struct.message*, %struct.message** %5, align 8
  %13 = load %struct.message*, %struct.message** %6, align 8
  %14 = call i32 @count_parsed_messages(i32 3, %struct.message* %11, %struct.message* %12, %struct.message* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.message*, %struct.message** %4, align 8
  %16 = getelementptr inbounds %struct.message, %struct.message* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strlen(i8* %17)
  %19 = load %struct.message*, %struct.message** %5, align 8
  %20 = getelementptr inbounds %struct.message, %struct.message* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = add i64 %18, %22
  %24 = load %struct.message*, %struct.message** %6, align 8
  %25 = getelementptr inbounds %struct.message, %struct.message* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = add i64 %23, %27
  %29 = add i64 %28, 1
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %8, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %9, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  store i8 0, i8* %32, align 16
  %33 = load %struct.message*, %struct.message** %4, align 8
  %34 = getelementptr inbounds %struct.message, %struct.message* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strcat(i8* %31, i8* %35)
  %37 = load %struct.message*, %struct.message** %5, align 8
  %38 = getelementptr inbounds %struct.message, %struct.message* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strcat(i8* %31, i8* %39)
  %41 = load %struct.message*, %struct.message** %6, align 8
  %42 = getelementptr inbounds %struct.message, %struct.message* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strcat(i8* %31, i8* %43)
  %45 = load %struct.message*, %struct.message** %4, align 8
  %46 = getelementptr inbounds %struct.message, %struct.message* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @parser_init(i32 %47)
  %49 = call i64 @strlen(i8* %31)
  %50 = call i64 @parse(i8* %31, i64 %49)
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @parser, i32 0, i32 0), align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %3
  %54 = load i64, i64* %10, align 8
  %55 = load %struct.message*, %struct.message** %4, align 8
  %56 = load %struct.message*, %struct.message** %5, align 8
  %57 = load %struct.message*, %struct.message** %6, align 8
  %58 = call i32 @upgrade_message_fix(i8* %31, i64 %54, i32 3, %struct.message* %55, %struct.message* %56, %struct.message* %57)
  br label %76

59:                                               ; preds = %3
  %60 = load i64, i64* %10, align 8
  %61 = call i64 @strlen(i8* %31)
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @print_error(i8* %31, i64 %64)
  %66 = call i32 (...) @abort() #4
  unreachable

67:                                               ; preds = %59
  %68 = call i64 @parse(i8* null, i64 0)
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %10, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i64, i64* %10, align 8
  %73 = call i32 @print_error(i8* %31, i64 %72)
  %74 = call i32 (...) @abort() #4
  unreachable

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %53
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @num_messages, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i32, i32* @stderr, align 4
  %82 = load i32, i32* @num_messages, align 4
  %83 = call i32 @fprintf(i32 %81, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = call i32 (...) @abort() #4
  unreachable

85:                                               ; preds = %76
  %86 = load %struct.message*, %struct.message** %4, align 8
  %87 = call i32 @message_eq(i32 0, i32 0, %struct.message* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = call i32 (...) @abort() #4
  unreachable

91:                                               ; preds = %85
  %92 = load i32, i32* %7, align 4
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load %struct.message*, %struct.message** %5, align 8
  %96 = call i32 @message_eq(i32 1, i32 0, %struct.message* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = call i32 (...) @abort() #4
  unreachable

100:                                              ; preds = %94, %91
  %101 = load i32, i32* %7, align 4
  %102 = icmp sgt i32 %101, 2
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load %struct.message*, %struct.message** %6, align 8
  %105 = call i32 @message_eq(i32 2, i32 0, %struct.message* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = call i32 (...) @abort() #4
  unreachable

109:                                              ; preds = %103, %100
  %110 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %110)
  ret void
}

declare dso_local i32 @count_parsed_messages(i32, %struct.message*, %struct.message*, %struct.message*) #1

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @parser_init(i32) #1

declare dso_local i64 @parse(i8*, i64) #1

declare dso_local i32 @upgrade_message_fix(i8*, i64, i32, %struct.message*, %struct.message*, %struct.message*) #1

declare dso_local i32 @print_error(i8*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @message_eq(i32, i32, %struct.message*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
