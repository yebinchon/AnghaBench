; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_keys.c_Key_KeynumToString.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_keys.c_Key_KeynumToString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@Key_KeynumToString.tinystr = internal global [5 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [16 x i8] c"<KEY NOT FOUND>\00", align 1
@MAX_KEYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"<OUT OF RANGE>\00", align 1
@keynames = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Key_KeynumToString(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %83

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @MAX_KEYS, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %10
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %83

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = icmp sgt i32 %19, 32
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %22, 127
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 34
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 59
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Key_KeynumToString.tinystr, i64 0, i64 0), align 1
  store i8 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Key_KeynumToString.tinystr, i64 0, i64 1), align 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Key_KeynumToString.tinystr, i64 0, i64 0), i8** %2, align 8
  br label %83

33:                                               ; preds = %27, %24, %21, %18
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @keynames, align 8
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %4, align 8
  br label %35

35:                                               ; preds = %51, %33
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %2, align 8
  br label %83

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 1
  store %struct.TYPE_3__* %53, %struct.TYPE_3__** %4, align 8
  br label %35

54:                                               ; preds = %35
  %55 = load i32, i32* %3, align 4
  %56 = ashr i32 %55, 4
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %3, align 4
  %58 = and i32 %57, 15
  store i32 %58, i32* %6, align 4
  store i8 48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Key_KeynumToString.tinystr, i64 0, i64 0), align 1
  store i8 120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Key_KeynumToString.tinystr, i64 0, i64 1), align 1
  %59 = load i32, i32* %5, align 4
  %60 = icmp sgt i32 %59, 9
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* %5, align 4
  %63 = sub nsw i32 %62, 10
  %64 = add nsw i32 %63, 97
  br label %68

65:                                               ; preds = %54
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 48
  br label %68

68:                                               ; preds = %65, %61
  %69 = phi i32 [ %64, %61 ], [ %67, %65 ]
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Key_KeynumToString.tinystr, i64 0, i64 2), align 1
  %71 = load i32, i32* %6, align 4
  %72 = icmp sgt i32 %71, 9
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* %6, align 4
  %75 = sub nsw i32 %74, 10
  %76 = add nsw i32 %75, 97
  br label %80

77:                                               ; preds = %68
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 48
  br label %80

80:                                               ; preds = %77, %73
  %81 = phi i32 [ %76, %73 ], [ %79, %77 ]
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Key_KeynumToString.tinystr, i64 0, i64 3), align 1
  store i8 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Key_KeynumToString.tinystr, i64 0, i64 4), align 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @Key_KeynumToString.tinystr, i64 0, i64 0), i8** %2, align 8
  br label %83

83:                                               ; preds = %80, %46, %30, %17, %9
  %84 = load i8*, i8** %2, align 8
  ret i8* %84
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
