; ModuleID = '/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-data.c_black_list_add.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/bayes/extr_bayes-data.c_black_list_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8*, %struct.TYPE_5__* }
%struct.lev_bayes_black_list = type { i64, i32, i32 }

@bl_head = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @black_list_add(%struct.lev_bayes_black_list* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lev_bayes_black_list*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  store %struct.lev_bayes_black_list* %0, %struct.lev_bayes_black_list** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bl_head, align 8
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %4, align 8
  br label %6

6:                                                ; preds = %36, %1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %34

11:                                               ; preds = %6
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.lev_bayes_black_list*, %struct.lev_bayes_black_list** %3, align 8
  %18 = getelementptr inbounds %struct.lev_bayes_black_list, %struct.lev_bayes_black_list* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %32, label %21

21:                                               ; preds = %11
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.lev_bayes_black_list*, %struct.lev_bayes_black_list** %3, align 8
  %28 = getelementptr inbounds %struct.lev_bayes_black_list, %struct.lev_bayes_black_list* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @strcmp(i8* %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %21, %11
  %33 = phi i1 [ true, %11 ], [ %31, %21 ]
  br label %34

34:                                               ; preds = %32, %6
  %35 = phi i1 [ false, %6 ], [ %33, %32 ]
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %4, align 8
  br label %6

40:                                               ; preds = %34
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = icmp ne %struct.TYPE_5__* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load %struct.lev_bayes_black_list*, %struct.lev_bayes_black_list** %3, align 8
  %47 = getelementptr inbounds %struct.lev_bayes_black_list, %struct.lev_bayes_black_list* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = call i32 @black_list_do_delete(%struct.TYPE_5__* %52)
  store i32 1, i32* %2, align 4
  br label %102

54:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %102

55:                                               ; preds = %40
  %56 = load %struct.lev_bayes_black_list*, %struct.lev_bayes_black_list** %3, align 8
  %57 = getelementptr inbounds %struct.lev_bayes_black_list, %struct.lev_bayes_black_list* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %102

62:                                               ; preds = %55
  %63 = call i8* @qmalloc(i32 24)
  %64 = bitcast i8* %63 to %struct.TYPE_5__*
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  store %struct.TYPE_5__* %64, %struct.TYPE_5__** %66, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = call i32 @black_list_init(%struct.TYPE_5__* %69)
  %71 = load %struct.lev_bayes_black_list*, %struct.lev_bayes_black_list** %3, align 8
  %72 = getelementptr inbounds %struct.lev_bayes_black_list, %struct.lev_bayes_black_list* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i64 %73, i64* %77, align 8
  %78 = load %struct.lev_bayes_black_list*, %struct.lev_bayes_black_list** %3, align 8
  %79 = getelementptr inbounds %struct.lev_bayes_black_list, %struct.lev_bayes_black_list* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 1
  %82 = trunc i64 %81 to i32
  %83 = call i8* @qmalloc(i32 %82)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  store i8* %83, i8** %87, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.lev_bayes_black_list*, %struct.lev_bayes_black_list** %3, align 8
  %94 = getelementptr inbounds %struct.lev_bayes_black_list, %struct.lev_bayes_black_list* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.lev_bayes_black_list*, %struct.lev_bayes_black_list** %3, align 8
  %97 = getelementptr inbounds %struct.lev_bayes_black_list, %struct.lev_bayes_black_list* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 1
  %100 = trunc i64 %99 to i32
  %101 = call i32 @memcpy(i8* %92, i32 %95, i32 %100)
  store i32 1, i32* %2, align 4
  br label %102

102:                                              ; preds = %62, %61, %54, %51
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @black_list_do_delete(%struct.TYPE_5__*) #1

declare dso_local i8* @qmalloc(i32) #1

declare dso_local i32 @black_list_init(%struct.TYPE_5__*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
