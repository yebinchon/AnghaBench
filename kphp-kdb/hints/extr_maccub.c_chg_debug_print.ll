; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_maccub.c_chg_debug_print.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_maccub.c_chg_debug_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c" [1] : %+ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"[%d] :\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" [%d] :\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" %+d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chg_debug_print(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = ptrtoint i32* %7 to i64
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = ptrtoint i32* %11 to i64
  %13 = sub nsw i64 0, %12
  store i64 %13, i64* %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = sdiv i64 %15, 2
  %17 = load i64, i64* %5, align 8
  %18 = and i64 %17, 1
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 -1
  %22 = sext i32 %21 to i64
  %23 = mul nsw i64 %16, %22
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %23)
  br label %86

25:                                               ; preds = %2
  %26 = load i32*, i32** %3, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %85

28:                                               ; preds = %25
  %29 = load i32*, i32** %3, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = bitcast i32* %39 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @trp_debug_print(i32 %42, i32* %43)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 (i32*, i8*, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %84

47:                                               ; preds = %28
  %48 = load i32*, i32** %4, align 8
  %49 = load i32*, i32** %3, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32*, i8*, ...) @fprintf(i32* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  store i32 1, i32* %6, align 4
  br label %53

53:                                               ; preds = %78, %47
  %54 = load i32, i32* %6, align 4
  %55 = load i32*, i32** %3, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sle i32 %54, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %53
  %60 = load i32*, i32** %4, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = sdiv i32 %65, 2
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 1
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 1, i32 -1
  %76 = mul nsw i32 %66, %75
  %77 = call i32 (i32*, i8*, ...) @fprintf(i32* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %59
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %53

81:                                               ; preds = %53
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 (i32*, i8*, ...) @fprintf(i32* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %33
  br label %85

85:                                               ; preds = %84, %25
  br label %86

86:                                               ; preds = %85, %10
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @trp_debug_print(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
