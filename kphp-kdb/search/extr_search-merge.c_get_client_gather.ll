; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_get_client_gather.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_get_client_gather.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gather_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.connection = type { i64, i32, %struct.TYPE_2__*, %struct.gather_data*, i64 }

@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"connection %d: orphaned by master connection %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.gather_data* @get_client_gather(%struct.connection* %0) #0 {
  %2 = alloca %struct.gather_data*, align 8
  %3 = alloca %struct.connection*, align 8
  store %struct.connection* %0, %struct.connection** %3, align 8
  %4 = load %struct.connection*, %struct.connection** %3, align 8
  %5 = getelementptr inbounds %struct.connection, %struct.connection* %4, i32 0, i32 4
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %42

8:                                                ; preds = %1
  %9 = load %struct.connection*, %struct.connection** %3, align 8
  %10 = getelementptr inbounds %struct.connection, %struct.connection* %9, i32 0, i32 3
  %11 = load %struct.gather_data*, %struct.gather_data** %10, align 8
  %12 = icmp ne %struct.gather_data* %11, null
  br i1 %12, label %13, label %42

13:                                               ; preds = %8
  %14 = load %struct.connection*, %struct.connection** %3, align 8
  %15 = getelementptr inbounds %struct.connection, %struct.connection* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %18, label %42

18:                                               ; preds = %13
  %19 = load %struct.connection*, %struct.connection** %3, align 8
  %20 = getelementptr inbounds %struct.connection, %struct.connection* %19, i32 0, i32 3
  %21 = load %struct.gather_data*, %struct.gather_data** %20, align 8
  %22 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load %struct.connection*, %struct.connection** %3, align 8
  %25 = getelementptr inbounds %struct.connection, %struct.connection* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp eq %struct.TYPE_2__* %23, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %18
  %29 = load %struct.connection*, %struct.connection** %3, align 8
  %30 = getelementptr inbounds %struct.connection, %struct.connection* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.connection*, %struct.connection** %3, align 8
  %35 = getelementptr inbounds %struct.connection, %struct.connection* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load %struct.connection*, %struct.connection** %3, align 8
  %40 = getelementptr inbounds %struct.connection, %struct.connection* %39, i32 0, i32 3
  %41 = load %struct.gather_data*, %struct.gather_data** %40, align 8
  store %struct.gather_data* %41, %struct.gather_data** %2, align 8
  br label %81

42:                                               ; preds = %28, %18, %13, %8, %1
  %43 = load i64, i64* @verbosity, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %74

45:                                               ; preds = %42
  %46 = load %struct.connection*, %struct.connection** %3, align 8
  %47 = getelementptr inbounds %struct.connection, %struct.connection* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %45
  %51 = load %struct.connection*, %struct.connection** %3, align 8
  %52 = getelementptr inbounds %struct.connection, %struct.connection* %51, i32 0, i32 3
  %53 = load %struct.gather_data*, %struct.gather_data** %52, align 8
  %54 = icmp ne %struct.gather_data* %53, null
  br i1 %54, label %55, label %74

55:                                               ; preds = %50
  %56 = load i32, i32* @stderr, align 4
  %57 = load %struct.connection*, %struct.connection** %3, align 8
  %58 = getelementptr inbounds %struct.connection, %struct.connection* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.connection*, %struct.connection** %3, align 8
  %61 = getelementptr inbounds %struct.connection, %struct.connection* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = icmp ne %struct.TYPE_2__* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = load %struct.connection*, %struct.connection** %3, align 8
  %66 = getelementptr inbounds %struct.connection, %struct.connection* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  br label %71

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %64
  %72 = phi i32 [ %69, %64 ], [ -1, %70 ]
  %73 = call i32 @fprintf(i32 %56, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %72)
  br label %74

74:                                               ; preds = %71, %50, %45, %42
  %75 = load %struct.connection*, %struct.connection** %3, align 8
  %76 = getelementptr inbounds %struct.connection, %struct.connection* %75, i32 0, i32 3
  store %struct.gather_data* null, %struct.gather_data** %76, align 8
  %77 = load %struct.connection*, %struct.connection** %3, align 8
  %78 = getelementptr inbounds %struct.connection, %struct.connection* %77, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %78, align 8
  %79 = load %struct.connection*, %struct.connection** %3, align 8
  %80 = getelementptr inbounds %struct.connection, %struct.connection* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  store %struct.gather_data* null, %struct.gather_data** %2, align 8
  br label %81

81:                                               ; preds = %74, %38
  %82 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  ret %struct.gather_data* %82
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
