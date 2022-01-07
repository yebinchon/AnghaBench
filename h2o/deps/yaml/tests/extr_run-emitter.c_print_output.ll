; ModuleID = '/home/carl/AnghaBench/h2o/deps/yaml/tests/extr_run-emitter.c_print_output.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/yaml/tests/extr_run-emitter.c_print_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"FAILED (at the event #%d)\0ASOURCE:\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"#### (length: %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"OUTPUT:\0A%s#### (length: %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @print_output(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* @BUFFER_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  store i64 1, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %20, %4
  %25 = load i8*, i8** %5, align 8
  %26 = call i32* @fopen(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = ptrtoint i32* %27 to i32
  %29 = call i32 @assert(i32 %28)
  br label %30

30:                                               ; preds = %61, %24
  %31 = load i64, i64* %12, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %30
  %34 = load i32, i32* @BUFFER_SIZE, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = call i64 @fread(i8* %17, i32 1, i32 %34, i32* %35)
  store i64 %36, i64* %12, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @ferror(i32* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i64, i64* %12, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %33
  br label %62

46:                                               ; preds = %33
  %47 = load i64, i64* %12, align 8
  %48 = load i32, i32* @stdout, align 4
  %49 = call i64 @fwrite(i8* %17, i32 1, i64 %47, i32 %48)
  %50 = load i64, i64* %12, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %13, align 8
  %56 = add i64 %55, %54
  store i64 %56, i64* %13, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i64 @feof(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  br label %62

61:                                               ; preds = %46
  br label %30

62:                                               ; preds = %60, %45, %30
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @fclose(i32* %63)
  %65 = load i64, i64* %13, align 8
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %65)
  %67 = load i8*, i8** %6, align 8
  %68 = load i64, i64* %7, align 8
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %67, i64 %68)
  %70 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %70)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @fread(i8*, i32, i32, i32*) #2

declare dso_local i32 @ferror(i32*) #2

declare dso_local i64 @fwrite(i8*, i32, i64, i32) #2

declare dso_local i64 @feof(i32*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
