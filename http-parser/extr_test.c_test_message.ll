; ModuleID = '/home/carl/AnghaBench/http-parser/extr_test.c_test_message.c'
source_filename = "/home/carl/AnghaBench/http-parser/extr_test.c_test_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.message = type { i8*, i8*, i64, i32 }

@num_messages = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@messages = common dso_local global %struct.TYPE_4__* null, align 8
@parser = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [48 x i8] c"\0A*** num_messages != 1 after testing '%s' ***\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_message(%struct.message* %0) #0 {
  %2 = alloca %struct.message*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.message* %0, %struct.message** %2, align 8
  %9 = load %struct.message*, %struct.message** %2, align 8
  %10 = getelementptr inbounds %struct.message, %struct.message* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i64 @strlen(i8* %11)
  store i64 %12, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %13

13:                                               ; preds = %153, %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %156

17:                                               ; preds = %13
  %18 = load %struct.message*, %struct.message** %2, align 8
  %19 = getelementptr inbounds %struct.message, %struct.message* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @parser_init(i32 %20)
  %22 = load %struct.message*, %struct.message** %2, align 8
  %23 = getelementptr inbounds %struct.message, %struct.message* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8* %27, i8** %7, align 8
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* %4, align 8
  %30 = sub i64 %28, %29
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %95

33:                                               ; preds = %17
  %34 = load i32, i32* @num_messages, align 4
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* @FALSE, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @messages, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %4, align 8
  %44 = call i64 @parse(i8* %42, i64 %43)
  store i64 %44, i64* %5, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @messages, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %33
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @parser, i32 0, i32 0), align 8
  %52 = load i64, i64* %5, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @parser, i32 0, i32 0), align 8
  %56 = load i64, i64* %5, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load i8*, i8** %6, align 8
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @print_error(i8* %60, i64 %61)
  %63 = call i32 (...) @abort() #3
  unreachable

64:                                               ; preds = %50, %33
  %65 = load %struct.message*, %struct.message** %2, align 8
  %66 = getelementptr inbounds %struct.message, %struct.message* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %64
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @parser, i32 0, i32 1), align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load i32, i32* @num_messages, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load i8*, i8** %6, align 8
  %77 = load i64, i64* %5, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @messages, align 8
  %80 = load i32, i32* @num_messages, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i8* %78, i8** %84, align 8
  br label %137

85:                                               ; preds = %72, %69, %64
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* %4, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = load i8*, i8** %6, align 8
  %91 = load i64, i64* %5, align 8
  %92 = call i32 @print_error(i8* %90, i64 %91)
  %93 = call i32 (...) @abort() #3
  unreachable

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %17
  %96 = load i8*, i8** %7, align 8
  %97 = load i64, i64* %8, align 8
  %98 = call i64 @parse(i8* %96, i64 %97)
  store i64 %98, i64* %5, align 8
  %99 = load %struct.message*, %struct.message** %2, align 8
  %100 = getelementptr inbounds %struct.message, %struct.message* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %95
  %104 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @parser, i32 0, i32 1), align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %103
  %107 = load i8*, i8** %7, align 8
  %108 = load i64, i64* %5, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** @messages, align 8
  %111 = load i32, i32* @num_messages, align 4
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i8* %109, i8** %115, align 8
  br label %137

116:                                              ; preds = %103, %95
  %117 = load i64, i64* %5, align 8
  %118 = load i64, i64* %8, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load i8*, i8** %7, align 8
  %122 = load i64, i64* %5, align 8
  %123 = call i32 @print_error(i8* %121, i64 %122)
  %124 = call i32 (...) @abort() #3
  unreachable

125:                                              ; preds = %116
  %126 = call i64 @parse(i8* null, i64 0)
  store i64 %126, i64* %5, align 8
  %127 = load i64, i64* %5, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %125
  %130 = load %struct.message*, %struct.message** %2, align 8
  %131 = getelementptr inbounds %struct.message, %struct.message* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = load i64, i64* %5, align 8
  %134 = call i32 @print_error(i8* %132, i64 %133)
  %135 = call i32 (...) @abort() #3
  unreachable

136:                                              ; preds = %125
  br label %137

137:                                              ; preds = %136, %106, %75
  %138 = load i32, i32* @num_messages, align 4
  %139 = icmp ne i32 %138, 1
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = load %struct.message*, %struct.message** %2, align 8
  %142 = getelementptr inbounds %struct.message, %struct.message* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %143)
  %145 = call i32 (...) @abort() #3
  unreachable

146:                                              ; preds = %137
  %147 = load %struct.message*, %struct.message** %2, align 8
  %148 = call i32 @message_eq(i32 0, i32 0, %struct.message* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %146
  %151 = call i32 (...) @abort() #3
  unreachable

152:                                              ; preds = %146
  br label %153

153:                                              ; preds = %152
  %154 = load i64, i64* %4, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %4, align 8
  br label %13

156:                                              ; preds = %13
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @parser_init(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @parse(i8*, i64) #1

declare dso_local i32 @print_error(i8*, i64) #1

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
