; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_error.c_uv_fatal_error.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_error.c_uv_fatal_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FORMAT_MESSAGE_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_IGNORE_INSERTS = common dso_local global i32 0, align 4
@LANG_NEUTRAL = common dso_local global i32 0, align 4
@SUBLANG_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"%s: (%d) %s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"(%d) %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uv_fatal_error(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %7 = load i32, i32* @FORMAT_MESSAGE_ALLOCATE_BUFFER, align 4
  %8 = load i32, i32* @FORMAT_MESSAGE_FROM_SYSTEM, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @FORMAT_MESSAGE_IGNORE_INSERTS, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @LANG_NEUTRAL, align 4
  %14 = load i32, i32* @SUBLANG_DEFAULT, align 4
  %15 = call i32 @MAKELANGID(i32 %13, i32 %14)
  %16 = ptrtoint i8** %5 to i32
  %17 = call i32 @FormatMessageA(i32 %11, i32* null, i32 %12, i32 %15, i32 %16, i32 0, i32* null)
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  store i8* %21, i8** %6, align 8
  br label %23

22:                                               ; preds = %2
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %23

23:                                               ; preds = %22, %20
  %24 = load i8*, i8** %4, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* @stderr, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %28, i32 %29, i8* %30)
  br label %37

32:                                               ; preds = %23
  %33 = load i32, i32* @stderr, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %34, i8* %35)
  br label %37

37:                                               ; preds = %32, %26
  %38 = load i8*, i8** %5, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @LocalFree(i8* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = call i32 (...) @DebugBreak()
  %45 = call i32 (...) @abort() #3
  unreachable
}

declare dso_local i32 @FormatMessageA(i32, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @MAKELANGID(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @LocalFree(i8*) #1

declare dso_local i32 @DebugBreak(...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
