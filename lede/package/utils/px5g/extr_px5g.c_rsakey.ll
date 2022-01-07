; ModuleID = '/home/carl/AnghaBench/lede/package/utils/px5g/extr_px5g.c_rsakey.c'
source_filename = "/home/carl/AnghaBench/lede/package/utils/px5g/extr_px5g.c_rsakey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"-out\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-3\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"-der\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsakey(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  store i32 512, i32* %4, align 4
  store i32 65537, i32* %5, align 4
  store i8* null, i8** %6, align 8
  store i32 1, i32* %7, align 4
  br label %8

8:                                                ; preds = %50, %1
  %9 = load i8**, i8*** %2, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i8**, i8*** %2, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 45
  br label %18

18:                                               ; preds = %12, %8
  %19 = phi i1 [ false, %8 ], [ %17, %12 ]
  br i1 %19, label %20, label %53

20:                                               ; preds = %18
  %21 = load i8**, i8*** %2, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %20
  %26 = load i8**, i8*** %2, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i8**, i8*** %2, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %6, align 8
  %34 = load i8**, i8*** %2, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i32 1
  store i8** %35, i8*** %2, align 8
  br label %50

36:                                               ; preds = %25, %20
  %37 = load i8**, i8*** %2, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i32 3, i32* %5, align 4
  br label %49

42:                                               ; preds = %36
  %43 = load i8**, i8*** %2, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %47, %42
  br label %49

49:                                               ; preds = %48, %41
  br label %50

50:                                               ; preds = %49, %30
  %51 = load i8**, i8*** %2, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i32 1
  store i8** %52, i8*** %2, align 8
  br label %8

53:                                               ; preds = %18
  %54 = load i8**, i8*** %2, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i8**, i8*** %2, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @atoi(i8* %59)
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %57, %53
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @gen_key(i32* %3, i32 %63, i32 %64, i32 %65)
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @write_key(i32* %3, i8* %67, i32 %68)
  %70 = call i32 @mbedtls_pk_free(i32* %3)
  ret i32 0
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @gen_key(i32*, i32, i32, i32) #1

declare dso_local i32 @write_key(i32*, i8*, i32) #1

declare dso_local i32 @mbedtls_pk_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
