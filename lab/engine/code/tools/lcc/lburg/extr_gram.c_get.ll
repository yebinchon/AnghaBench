; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/lburg/extr_gram.c_get.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/lburg/extr_gram.c_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bp = common dso_local global i64* null, align 8
@buf = common dso_local global i8* null, align 8
@infp = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@yylineno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unterminated %{...%}\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%}\0A\00", align 1
@outfp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get() #0 {
  %1 = alloca i32, align 4
  %2 = load i64*, i64** @bp, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %69

5:                                                ; preds = %0
  %6 = load i8*, i8** @buf, align 8
  %7 = bitcast i8* %6 to i64*
  store i64* %7, i64** @bp, align 8
  %8 = load i64*, i64** @bp, align 8
  store i64 0, i64* %8, align 8
  %9 = load i8*, i8** @buf, align 8
  %10 = load i32, i32* @infp, align 4
  %11 = call i32* @fgets(i8* %9, i32 8, i32 %10)
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = load i32, i32* @EOF, align 4
  store i32 %14, i32* %1, align 4
  br label %74

15:                                               ; preds = %5
  %16 = load i32, i32* @yylineno, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @yylineno, align 4
  br label %18

18:                                               ; preds = %65, %15
  %19 = load i8*, i8** @buf, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 37
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load i8*, i8** @buf, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 123
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i8*, i8** @buf, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 10
  br label %36

36:                                               ; preds = %30, %24, %18
  %37 = phi i1 [ false, %24 ], [ false, %18 ], [ %35, %30 ]
  br i1 %37, label %38, label %68

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %54, %38
  %40 = load i8*, i8** @buf, align 8
  %41 = load i32, i32* @infp, align 4
  %42 = call i32* @fgets(i8* %40, i32 8, i32 %41)
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = call i32 @yywarn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EOF, align 4
  store i32 %46, i32* %1, align 4
  br label %74

47:                                               ; preds = %39
  %48 = load i32, i32* @yylineno, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @yylineno, align 4
  %50 = load i8*, i8** @buf, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %58

54:                                               ; preds = %47
  %55 = load i8*, i8** @buf, align 8
  %56 = load i32, i32* @outfp, align 4
  %57 = call i32 @fputs(i8* %55, i32 %56)
  br label %39

58:                                               ; preds = %53
  %59 = load i8*, i8** @buf, align 8
  %60 = load i32, i32* @infp, align 4
  %61 = call i32* @fgets(i8* %59, i32 8, i32 %60)
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @EOF, align 4
  store i32 %64, i32* %1, align 4
  br label %74

65:                                               ; preds = %58
  %66 = load i32, i32* @yylineno, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @yylineno, align 4
  br label %18

68:                                               ; preds = %36
  br label %69

69:                                               ; preds = %68, %0
  %70 = load i64*, i64** @bp, align 8
  %71 = getelementptr inbounds i64, i64* %70, i32 1
  store i64* %71, i64** @bp, align 8
  %72 = load i64, i64* %70, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %1, align 4
  br label %74

74:                                               ; preds = %69, %63, %44, %13
  %75 = load i32, i32* %1, align 4
  ret i32 %75
}

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i32 @yywarn(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
