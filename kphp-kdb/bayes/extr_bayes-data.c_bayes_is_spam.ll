; ModuleID = '/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-data.c_bayes_is_spam.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-data.c_bayes_is_spam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"bayes_is_spam\0A%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"CHECK: <%s>\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"RES: %.9lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@BAYES_SPAM_LIMIT = common dso_local global double 0.000000e+00, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"spam\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"ham\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bayes_is_spam(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @msg_verify(%struct.TYPE_5__* %7, i32 %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %45

12:                                               ; preds = %2
  %13 = load i32, i32* @verbosity, align 4
  %14 = icmp sgt i32 %13, 2
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i32, i32* @stderr, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %15, %12
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i8*, ...) @debugp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call double @bayes_is_spam_prob(%struct.TYPE_5__* %26, i32 %27)
  store double %28, double* %6, align 8
  %29 = load double, double* %6, align 8
  %30 = call i32 (i8*, ...) @debugp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), double %29)
  %31 = load double, double* %6, align 8
  %32 = load double, double* @BAYES_SPAM_LIMIT, align 8
  %33 = fcmp ogt double %31, %32
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %36 = call i32 (i8*, ...) @debugp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  %37 = load double, double* %6, align 8
  %38 = fcmp olt double %37, -1.999990e+00
  br i1 %38, label %39, label %40

39:                                               ; preds = %21
  store i32 -2, i32* %3, align 4
  br label %45

40:                                               ; preds = %21
  %41 = load double, double* %6, align 8
  %42 = load double, double* @BAYES_SPAM_LIMIT, align 8
  %43 = fcmp ogt double %41, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %40, %39, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @msg_verify(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @debugp(i8*, ...) #1

declare dso_local double @bayes_is_spam_prob(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
