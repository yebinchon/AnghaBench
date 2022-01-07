; ModuleID = '/home/carl/AnghaBench/hashcat/deps/zlib/examples/extr_zpipe.c_main.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/zlib/examples/extr_zpipe.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@Z_DEFAULT_COMPRESSION = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"zpipe usage: zpipe [-d] < source > dest\0A\00", align 1
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* @stdin, align 4
  %8 = call i32 @SET_BINARY_MODE(i32 %7)
  %9 = load i32, i32* @stdout, align 4
  %10 = call i32 @SET_BINARY_MODE(i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load i32, i32* @stdin, align 4
  %15 = load i32, i32* @stdout, align 4
  %16 = load i32, i32* @Z_DEFAULT_COMPRESSION, align 4
  %17 = call i32 @def(i32 %14, i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @Z_OK, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @zerr(i32 %22)
  br label %24

24:                                               ; preds = %21, %13
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %50

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load i32, i32* @stdin, align 4
  %37 = load i32, i32* @stdout, align 4
  %38 = call i32 @inf(i32 %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @Z_OK, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @zerr(i32 %43)
  br label %45

45:                                               ; preds = %42, %35
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %50

47:                                               ; preds = %29, %26
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 @fputs(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  store i32 1, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %45, %24
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @SET_BINARY_MODE(i32) #1

declare dso_local i32 @def(i32, i32, i32) #1

declare dso_local i32 @zerr(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @inf(i32, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
