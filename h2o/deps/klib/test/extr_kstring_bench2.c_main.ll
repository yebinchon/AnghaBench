; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/test/extr_kstring_bench2.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/test/extr_kstring_bench2.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str_len = common dso_local global i32 0, align 4
@alphabet = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Generate data in %.3f sec\0A\00", align 1
@CLOCKS_PER_SEC = common dso_local global float 0.000000e+00, align 4
@repeat = common dso_local global i32 0, align 4
@pat_len = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Search patterns in %.3f sec\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %9 = call i64 (...) @clock()
  store i64 %9, i64* %4, align 8
  %10 = load i32, i32* @str_len, align 4
  %11 = load i32, i32* @alphabet, align 4
  %12 = call i8* @gen_data(i32 %10, i32 %11)
  store i8* %12, i8** %2, align 8
  %13 = load i32, i32* @stderr, align 4
  %14 = call i64 (...) @clock()
  %15 = load i64, i64* %4, align 8
  %16 = sub nsw i64 %14, %15
  %17 = sitofp i64 %16 to float
  %18 = load float, float* @CLOCKS_PER_SEC, align 4
  %19 = fdiv float %17, %18
  %20 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), float %19)
  %21 = call i64 (...) @clock()
  store i64 %21, i64* %4, align 8
  %22 = call i32 @srand48(i32 1331)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %41, %0
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @repeat, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = call i32 (...) @lrand48()
  %29 = load i32, i32* @str_len, align 4
  %30 = load i32, i32* @pat_len, align 4
  %31 = sub nsw i32 %29, %30
  %32 = srem i32 %28, %31
  store i32 %32, i32* %5, align 4
  %33 = load i8*, i8** %2, align 8
  %34 = load i32, i32* @str_len, align 4
  %35 = load i8*, i8** %2, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i32, i32* @pat_len, align 4
  %40 = call i8* @kmemmem(i8* %33, i32 %34, i8* %38, i32 %39, i32 0)
  store i8* %40, i8** %6, align 8
  br label %41

41:                                               ; preds = %27
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %23

44:                                               ; preds = %23
  %45 = load i32, i32* @stderr, align 4
  %46 = call i64 (...) @clock()
  %47 = load i64, i64* %4, align 8
  %48 = sub nsw i64 %46, %47
  %49 = sitofp i64 %48 to float
  %50 = load float, float* @CLOCKS_PER_SEC, align 4
  %51 = fdiv float %49, %50
  %52 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), float %51)
  %53 = call i64 (...) @clock()
  store i64 %53, i64* %4, align 8
  %54 = call i32 @srand48(i32 1331)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %73, %44
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @repeat, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %55
  %60 = call i32 (...) @lrand48()
  %61 = load i32, i32* @str_len, align 4
  %62 = load i32, i32* @pat_len, align 4
  %63 = sub nsw i32 %61, %62
  %64 = srem i32 %60, %63
  store i32 %64, i32* %7, align 4
  %65 = load i8*, i8** %2, align 8
  %66 = load i32, i32* @str_len, align 4
  %67 = load i8*, i8** %2, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i32, i32* @pat_len, align 4
  %72 = call i8* @BoyerMoore(i8* %65, i32 %66, i8* %70, i32 %71)
  store i8* %72, i8** %8, align 8
  br label %73

73:                                               ; preds = %59
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %55

76:                                               ; preds = %55
  %77 = load i32, i32* @stderr, align 4
  %78 = call i64 (...) @clock()
  %79 = load i64, i64* %4, align 8
  %80 = sub nsw i64 %78, %79
  %81 = sitofp i64 %80 to float
  %82 = load float, float* @CLOCKS_PER_SEC, align 4
  %83 = fdiv float %81, %82
  %84 = call i32 @fprintf(i32 %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), float %83)
  ret i32 0
}

declare dso_local i64 @clock(...) #1

declare dso_local i8* @gen_data(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, float) #1

declare dso_local i32 @srand48(i32) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local i8* @kmemmem(i8*, i32, i8*, i32, i32) #1

declare dso_local i8* @BoyerMoore(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
