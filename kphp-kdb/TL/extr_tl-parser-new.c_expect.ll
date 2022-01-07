; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_expect.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_expect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i64, i64 }

@parse = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@lex_error = common dso_local global i64 0, align 8
@lex_none = common dso_local global i64 0, align 8
@expect.buf = internal global [1000 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [12 x i8] c"Expected %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @expect(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @parse, i32 0, i32 0, i32 0), align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %28

6:                                                ; preds = %1
  %7 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @parse, i32 0, i32 0, i32 0), align 8
  %8 = icmp eq i8* %7, inttoptr (i64 -1 to i8*)
  br i1 %8, label %28, label %9

9:                                                ; preds = %6
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @parse, i32 0, i32 0, i32 1), align 8
  %11 = load i64, i64* @lex_error, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %28, label %13

13:                                               ; preds = %9
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @parse, i32 0, i32 0, i32 1), align 8
  %15 = load i64, i64* @lex_none, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @parse, i32 0, i32 0, i32 2), align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i64 @strlen(i8* %19)
  %21 = icmp ne i64 %18, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %3, align 8
  %24 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @parse, i32 0, i32 0, i32 0), align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @parse, i32 0, i32 0, i32 2), align 8
  %26 = call i64 @memcmp(i8* %23, i8* %24, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22, %17, %13, %9, %6, %1
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @sprintf(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expect.buf, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = call i32 @parse_error(i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @expect.buf, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %35

32:                                               ; preds = %22
  %33 = call i32 (...) @parse_lex()
  br label %34

34:                                               ; preds = %32
  store i32 1, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @parse_error(i8*) #1

declare dso_local i32 @parse_lex(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
