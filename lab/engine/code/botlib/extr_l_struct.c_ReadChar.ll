; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_l_struct.c_ReadChar.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_l_struct.c_ReadChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8* }

@TT_LITERAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ReadChar(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @PC_ExpectAnyToken(i32* %9, %struct.TYPE_3__* %8)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TT_LITERAL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @StripSingleQuotes(i8* %20)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = load i8*, i8** %7, align 8
  store i8 %25, i8* %26, align 1
  br label %37

27:                                               ; preds = %13
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @PC_UnreadLastToken(i32* %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @ReadNumber(i32* %30, i32* %31, i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %38

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %18
  store i32 1, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %35, %12
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @PC_ExpectAnyToken(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @StripSingleQuotes(i8*) #1

declare dso_local i32 @PC_UnreadLastToken(i32*) #1

declare dso_local i32 @ReadNumber(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
