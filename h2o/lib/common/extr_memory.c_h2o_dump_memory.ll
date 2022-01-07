; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_memory.c_h2o_dump_memory.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_memory.c_h2o_dump_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%08zx\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_dump_memory(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %84, %3
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %87

14:                                               ; preds = %10
  %15 = load i32*, i32** %4, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %16)
  store i64 0, i64* %8, align 8
  br label %18

18:                                               ; preds = %41, %14
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 16
  br i1 %20, label %21, label %44

21:                                               ; preds = %18
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = add i64 %22, %23
  %25 = load i64, i64* %6, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load i32*, i32** %4, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %30, %31
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %40

37:                                               ; preds = %21
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 (i32*, i8*, ...) @fprintf(i32* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %27
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %8, align 8
  br label %18

44:                                               ; preds = %18
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 (i32*, i8*, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %47

47:                                               ; preds = %78, %44
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %48, 16
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = add i64 %51, %52
  %54 = load i64, i64* %6, align 8
  %55 = icmp ult i64 %53, %54
  br label %56

56:                                               ; preds = %50, %47
  %57 = phi i1 [ false, %47 ], [ %55, %50 ]
  br i1 %57, label %58, label %81

58:                                               ; preds = %56
  %59 = load i8*, i8** %5, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %8, align 8
  %62 = add i64 %60, %61
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp sle i32 32, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %58
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 127
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  br label %74

73:                                               ; preds = %68, %58
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ 46, %73 ]
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @fputc(i32 %75, i32* %76)
  br label %78

78:                                               ; preds = %74
  %79 = load i64, i64* %8, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %8, align 8
  br label %47

81:                                               ; preds = %56
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 (i32*, i8*, ...) @fprintf(i32* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81
  %85 = load i64, i64* %7, align 8
  %86 = add i64 %85, 16
  store i64 %86, i64* %7, align 8
  br label %10

87:                                               ; preds = %10
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fputc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
