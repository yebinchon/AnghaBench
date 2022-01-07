; ModuleID = '/home/carl/AnghaBench/http-parser/extr_test.c_test_message_pause.c'
source_filename = "/home/carl/AnghaBench/http-parser/extr_test.c_test_message_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.message = type { i8*, i64, i32, i64 }

@messages = common dso_local global %struct.TYPE_6__* null, align 8
@parser = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@HPE_STRICT = common dso_local global i64 0, align 8
@HPE_PAUSED = common dso_local global i64 0, align 8
@num_messages = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"\0A*** num_messages != 1 after testing '%s' ***\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_message_pause(%struct.message* %0) #0 {
  %2 = alloca %struct.message*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.message* %0, %struct.message** %2, align 8
  %6 = load %struct.message*, %struct.message** %2, align 8
  %7 = getelementptr inbounds %struct.message, %struct.message* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  store i8* %9, i8** %3, align 8
  %10 = load %struct.message*, %struct.message** %2, align 8
  %11 = getelementptr inbounds %struct.message, %struct.message* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @strlen(i64 %12)
  store i64 %13, i64* %4, align 8
  %14 = load %struct.message*, %struct.message** %2, align 8
  %15 = getelementptr inbounds %struct.message, %struct.message* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @parser_init(i32 %16)
  br label %18

18:                                               ; preds = %65, %1
  %19 = load i8*, i8** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @parse_pause(i8* %19, i64 %20)
  store i64 %21, i64* %5, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @messages, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %18
  %28 = load %struct.message*, %struct.message** %2, align 8
  %29 = getelementptr inbounds %struct.message, %struct.message* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @parser, i32 0, i32 0), align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i8*, i8** %3, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @messages, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  br label %74

42:                                               ; preds = %32, %27, %18
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %4, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = call i64 @HTTP_PARSER_ERRNO(%struct.TYPE_5__* @parser)
  %48 = load i64, i64* @HPE_STRICT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %89

51:                                               ; preds = %46
  %52 = call i64 @HTTP_PARSER_ERRNO(%struct.TYPE_5__* @parser)
  %53 = load i64, i64* @HPE_PAUSED, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  br label %57

57:                                               ; preds = %51, %42
  %58 = load i64, i64* %5, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 %58
  store i8* %60, i8** %3, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* %4, align 8
  %63 = sub i64 %62, %61
  store i64 %63, i64* %4, align 8
  %64 = call i32 @http_parser_pause(%struct.TYPE_5__* @parser, i32 0)
  br label %65

65:                                               ; preds = %57
  %66 = load i64, i64* %4, align 8
  %67 = icmp ugt i64 %66, 0
  br i1 %67, label %18, label %68

68:                                               ; preds = %65
  %69 = call i64 @parse_pause(i8* null, i64 0)
  store i64 %69, i64* %5, align 8
  %70 = load i64, i64* %5, align 8
  %71 = icmp eq i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  br label %74

74:                                               ; preds = %68, %35
  %75 = load i32, i32* @num_messages, align 4
  %76 = icmp ne i32 %75, 1
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load %struct.message*, %struct.message** %2, align 8
  %79 = getelementptr inbounds %struct.message, %struct.message* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %80)
  %82 = call i32 (...) @abort() #3
  unreachable

83:                                               ; preds = %74
  %84 = load %struct.message*, %struct.message** %2, align 8
  %85 = call i32 @message_eq(i32 0, i32 0, %struct.message* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %83
  %88 = call i32 (...) @abort() #3
  unreachable

89:                                               ; preds = %50, %83
  ret void
}

declare dso_local i64 @strlen(i64) #1

declare dso_local i32 @parser_init(i32) #1

declare dso_local i64 @parse_pause(i8*, i64) #1

declare dso_local i64 @HTTP_PARSER_ERRNO(%struct.TYPE_5__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @http_parser_pause(%struct.TYPE_5__*, i32) #1

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
