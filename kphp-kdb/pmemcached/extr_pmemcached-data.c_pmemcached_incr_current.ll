; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_pmemcached_incr_current.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-data.c_pmemcached_incr_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_5__ = type { i32, i8*, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@current_cache = common dso_local global %struct.TYPE_6__* null, align 8
@pmct_set = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"new value is %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmemcached_incr_current(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [30 x i8], align 16
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_cache, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %136

15:                                               ; preds = %1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_cache, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_cache, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @on_value_change(i32 %18, i32 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_cache, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, -2
  br i1 %27, label %28, label %50

28:                                               ; preds = %15
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_cache, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i64, i64* %3, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_cache, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, %34
  store i64 %40, i64* %38, align 8
  br label %49

41:                                               ; preds = %28
  %42 = load i32, i32* @pmct_set, align 4
  %43 = call i32 @pmemcached_store_current(i32 %42, i8* null, i32 -2, i32 0, i32 -1)
  %44 = load i64, i64* %3, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_cache, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i64 %44, i64* %48, align 8
  br label %49

49:                                               ; preds = %41, %33
  store i32 0, i32* %2, align 4
  br label %136

50:                                               ; preds = %15
  store i64 0, i64* %4, align 8
  store i32 1, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %101, %50
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_cache, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %58, %51
  %62 = phi i1 [ false, %51 ], [ %60, %58 ]
  br i1 %62, label %63, label %104

63:                                               ; preds = %61
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_cache, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp sle i32 48, %72
  br i1 %73, label %74, label %99

74:                                               ; preds = %63
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_cache, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp sle i32 %83, 57
  br i1 %84, label %85, label %99

85:                                               ; preds = %74
  %86 = load i64, i64* %4, align 8
  %87 = mul i64 %86, 10
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_cache, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i64
  %97 = add i64 %87, %96
  %98 = sub i64 %97, 48
  store i64 %98, i64* %4, align 8
  br label %100

99:                                               ; preds = %74, %63
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %99, %85
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %51

104:                                              ; preds = %61
  %105 = load i32, i32* %6, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i64 0, i64* %4, align 8
  br label %108

108:                                              ; preds = %107, %104
  %109 = load i64, i64* %3, align 8
  %110 = load i64, i64* %4, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %4, align 8
  %112 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %113 = load i64, i64* %4, align 8
  %114 = call i32 @sprintf(i8* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %113)
  %115 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %116 = call i32 @strlen(i8* %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* @verbosity, align 4
  %118 = icmp sge i32 %117, 4
  br i1 %118, label %119, label %123

119:                                              ; preds = %108
  %120 = load i32, i32* @stderr, align 4
  %121 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %122 = call i32 @fprintf(i32 %120, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %121)
  br label %123

123:                                              ; preds = %119, %108
  %124 = load i32, i32* @pmct_set, align 4
  %125 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_cache, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current_cache, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @pmemcached_store_current(i32 %124, i8* %125, i32 %126, i32 %130, i32 %134)
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %123, %49, %14
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @on_value_change(i32, i32) #1

declare dso_local i32 @pmemcached_store_current(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
