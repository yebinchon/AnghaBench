; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_q_shared.c_Com_HexStrToInt.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_q_shared.c_Com_HexStrToInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Com_HexStrToInt(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %84

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 48
  br i1 %16, label %17, label %83

17:                                               ; preds = %11
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 120
  br i1 %22, label %23, label %83

23:                                               ; preds = %17
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 2
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %83

29:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @strlen(i8* %30)
  store i32 %31, i32* %6, align 4
  store i32 2, i32* %4, align 4
  br label %32

32:                                               ; preds = %78, %29
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %81

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = mul nsw i32 %37, 16
  store i32 %38, i32* %5, align 4
  %39 = load i8*, i8** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = call signext i8 @tolower(i8 signext %43)
  store i8 %44, i8* %7, align 1
  %45 = load i8, i8* %7, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp sge i32 %46, 48
  br i1 %47, label %48, label %57

48:                                               ; preds = %36
  %49 = load i8, i8* %7, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sle i32 %50, 57
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i8, i8* %7, align 1
  %54 = sext i8 %53 to i32
  %55 = sub nsw i32 %54, 48
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %7, align 1
  br label %73

57:                                               ; preds = %48, %36
  %58 = load i8, i8* %7, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp sge i32 %59, 97
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load i8, i8* %7, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp sle i32 %63, 102
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i8, i8* %7, align 1
  %67 = sext i8 %66 to i32
  %68 = sub nsw i32 %67, 97
  %69 = add nsw i32 %68, 10
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %7, align 1
  br label %72

71:                                               ; preds = %61, %57
  store i32 -1, i32* %2, align 4
  br label %84

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %52
  %74 = load i8, i8* %7, align 1
  %75 = sext i8 %74 to i32
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %32

81:                                               ; preds = %32
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %84

83:                                               ; preds = %23, %17, %11
  store i32 -1, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %81, %71, %10
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local signext i8 @tolower(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
