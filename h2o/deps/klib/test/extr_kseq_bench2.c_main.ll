; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/test/extr_kseq_bench2.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/test/extr_kseq_bench2.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Usage: %s <in.txt>\0A\00", align 1
@BUF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"[fgets] %.2f sec\0A\00", align 1
@CLOCKS_PER_SEC = common dso_local global float 0.000000e+00, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"[kstream] %.2f sec\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_3__, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %19)
  store i32 1, i32* %3, align 4
  br label %81

21:                                               ; preds = %2
  %22 = call i64 (...) @clock()
  store i64 %22, i64* %6, align 8
  %23 = load i32, i32* @BUF_SIZE, align 4
  %24 = call i8* @malloc(i32 %23)
  store i8* %24, i8** %8, align 8
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32* @fopen(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %28, i32** %7, align 8
  br label %29

29:                                               ; preds = %35, %21
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* @BUF_SIZE, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = call i64 @fgets(i8* %30, i32 %31, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %29

36:                                               ; preds = %29
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @fclose(i32* %37)
  %39 = load i32, i32* @stderr, align 4
  %40 = call i64 (...) @clock()
  %41 = load i64, i64* %6, align 8
  %42 = sub nsw i64 %40, %41
  %43 = sitofp i64 %42 to float
  %44 = load float, float* @CLOCKS_PER_SEC, align 4
  %45 = fdiv float %43, %44
  %46 = fpext float %45 to double
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), double %46)
  %48 = call i64 (...) @clock()
  store i64 %48, i64* %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* @O_RDONLY, align 4
  %56 = call i32 @open(i8* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32* @ks_init(i32 %57)
  store i32* %58, i32** %11, align 8
  br label %59

59:                                               ; preds = %63, %36
  %60 = load i32*, i32** %11, align 8
  %61 = call i64 @ks_getuntil(i32* %60, i8 signext 10, %struct.TYPE_3__* %12, i32* %10)
  %62 = icmp sge i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %59

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @free(i64 %66)
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @ks_destroy(i32* %68)
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @close(i32 %70)
  %72 = load i32, i32* @stderr, align 4
  %73 = call i64 (...) @clock()
  %74 = load i64, i64* %6, align 8
  %75 = sub nsw i64 %73, %74
  %76 = sitofp i64 %75 to float
  %77 = load float, float* @CLOCKS_PER_SEC, align 4
  %78 = fdiv float %76, %77
  %79 = fpext float %78 to double
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), double %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %64, %15
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @clock(...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32* @ks_init(i32) #1

declare dso_local i64 @ks_getuntil(i32*, i8 signext, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @free(i64) #1

declare dso_local i32 @ks_destroy(i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
