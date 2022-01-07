; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/asm/extr_q3asm.c_ExtractLine.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/asm/extr_q3asm.c_ExtractLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@currentFileLine = common dso_local global i32 0, align 4
@lineParseOffset = common dso_local global i64 0, align 8
@token = common dso_local global i64* null, align 8
@lineBuffer = common dso_local global i64* null, align 8
@MAX_LINE_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"MAX_LINE_LENGTH\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @ExtractLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ExtractLine(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i32, i32* @currentFileLine, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @currentFileLine, align 4
  store i64 0, i64* @lineParseOffset, align 8
  %8 = load i64*, i64** @token, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  store i64 0, i64* %9, align 8
  %10 = load i64*, i64** @lineBuffer, align 8
  store i64 0, i64* %10, align 8
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %5, align 8
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %73

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %31, %16
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 10
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i1 [ true, %17 ], [ %26, %22 ]
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %30
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %4, align 8
  br label %17

34:                                               ; preds = %27
  %35 = load i8*, i8** %4, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = load i32, i32* @MAX_LINE_LENGTH, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp sge i64 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %34
  %44 = call i32 @CodeError(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %45 = load i8*, i8** %3, align 8
  store i8* %45, i8** %2, align 8
  br label %73

46:                                               ; preds = %34
  %47 = load i64*, i64** @lineBuffer, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = trunc i64 %53 to i32
  %55 = call i32 @memcpy(i64* %47, i8* %48, i32 %54)
  %56 = load i64*, i64** @lineBuffer, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = load i8*, i8** %3, align 8
  %59 = ptrtoint i8* %57 to i64
  %60 = ptrtoint i8* %58 to i64
  %61 = sub i64 %59, %60
  %62 = getelementptr inbounds i64, i64* %56, i64 %61
  store i64 0, i64* %62, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 10
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 0
  %69 = load i8*, i8** %4, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8* %71, i8** %4, align 8
  %72 = load i8*, i8** %4, align 8
  store i8* %72, i8** %2, align 8
  br label %73

73:                                               ; preds = %46, %43, %15
  %74 = load i8*, i8** %2, align 8
  ret i8* %74
}

declare dso_local i32 @CodeError(i8*) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
