; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_find_running_transactions.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-data.c_find_running_transactions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_13__*, %struct.TYPE_13__* }

@HASH_MASK = common dso_local global i32 0, align 4
@H = common dso_local global %struct.TYPE_13__** null, align 8
@ts_running = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"tlist_insert (&auto_running_list, %p)\0A\00", align 1
@auto_running_list = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"tlist_insert (&auto_terminated_list, %p)\0A\00", align 1
@cmp_transaction = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"find_running_transactions: call transaction_finish_execution\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"found %d terminated transaction(s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_running_transactions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_13__**, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %7 = call i32 @tlist_clear(%struct.TYPE_13__* %4)
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %52, %0
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @HASH_MASK, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %55

12:                                               ; preds = %8
  %13 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @H, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %13, i64 %15
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %5, align 8
  br label %18

18:                                               ; preds = %47, %12
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = icmp ne %struct.TYPE_13__* %19, null
  br i1 %20, label %21, label %51

21:                                               ; preds = %18
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ts_running, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %21
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = call i64 @check_is_running(%struct.TYPE_13__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %32)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = call i32 @tlist_insert(%struct.TYPE_13__* @auto_running_list, %struct.TYPE_13__* %34)
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %2, align 4
  br label %45

38:                                               ; preds = %27
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %40 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_13__* %39)
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = call i32 @tlist_insert(%struct.TYPE_13__* %4, %struct.TYPE_13__* %41)
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %38, %31
  br label %46

46:                                               ; preds = %45, %21
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  store %struct.TYPE_13__* %50, %struct.TYPE_13__** %5, align 8
  br label %18

51:                                               ; preds = %18
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %1, align 4
  br label %8

55:                                               ; preds = %8
  %56 = load i32, i32* %3, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %106

58:                                               ; preds = %55
  %59 = load i32, i32* %3, align 4
  %60 = call %struct.TYPE_13__** @calloc(i32 %59, i32 8)
  store %struct.TYPE_13__** %60, %struct.TYPE_13__*** %6, align 8
  %61 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %62 = icmp ne %struct.TYPE_13__** %61, null
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 1
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  store %struct.TYPE_13__* %66, %struct.TYPE_13__** %5, align 8
  store i32 0, i32* %1, align 4
  br label %67

67:                                               ; preds = %77, %58
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %69 = icmp ne %struct.TYPE_13__* %68, %4
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %72 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %73 = load i32, i32* %1, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %1, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %72, i64 %75
  store %struct.TYPE_13__* %71, %struct.TYPE_13__** %76, align 8
  br label %77

77:                                               ; preds = %70
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  store %struct.TYPE_13__* %80, %struct.TYPE_13__** %5, align 8
  br label %67

81:                                               ; preds = %67
  %82 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @cmp_transaction, align 4
  %85 = call i32 @qsort(%struct.TYPE_13__** %82, i32 %83, i32 8, i32 %84)
  store i32 0, i32* %1, align 4
  br label %86

86:                                               ; preds = %98, %81
  %87 = load i32, i32* %1, align 4
  %88 = load i32, i32* %3, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %86
  %91 = call i32 (i32, i8*, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %92 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %93 = load i32, i32* %1, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %92, i64 %94
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %95, align 8
  %97 = call i32 @transaction_finish_execution(%struct.TYPE_13__* %96, i32 0)
  br label %98

98:                                               ; preds = %90
  %99 = load i32, i32* %1, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %1, align 4
  br label %86

101:                                              ; preds = %86
  %102 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %6, align 8
  %103 = call i32 @free(%struct.TYPE_13__** %102)
  %104 = load i32, i32* %3, align 4
  %105 = call i32 (i32, i8*, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %101, %55
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @tlist_clear(%struct.TYPE_13__*) #1

declare dso_local i64 @check_is_running(%struct.TYPE_13__*) #1

declare dso_local i32 @vkprintf(i32, i8*, ...) #1

declare dso_local i32 @tlist_insert(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__** @calloc(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @qsort(%struct.TYPE_13__**, i32, i32, i32) #1

declare dso_local i32 @transaction_finish_execution(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_13__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
