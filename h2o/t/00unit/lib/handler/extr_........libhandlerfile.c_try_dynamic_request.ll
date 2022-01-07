; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfile.c_try_dynamic_request.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_........libhandlerfile.c_try_dynamic_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_17__, %struct.TYPE_16__, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i64 }
%struct.stat = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i64 }

@.str = private unnamed_addr constant [39 x i8] c"unknown h2o_miemmap_type_t::type (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_19__*, i8*, i64)* @try_dynamic_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_dynamic_request(%struct.TYPE_22__* %0, %struct.TYPE_19__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stat, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_21__, align 8
  %14 = alloca %struct.TYPE_21__, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %11, align 8
  br label %19

19:                                               ; preds = %4, %53
  %20 = load i64, i64* %11, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %11, align 8
  br label %22

22:                                               ; preds = %36, %19
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 -1, i32* %5, align 4
  br label %118

27:                                               ; preds = %22
  %28 = load i8*, i8** %8, align 8
  %29 = load i64, i64* %11, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 47
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %39

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %11, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %11, align 8
  br label %22

39:                                               ; preds = %34
  %40 = load i8*, i8** %8, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8 0, i8* %42, align 1
  %43 = load i8*, i8** %8, align 8
  %44 = call i64 @stat(i8* %43, %struct.stat* %10)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 -1, i32* %5, align 4
  br label %118

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @S_ISDIR(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %57

53:                                               ; preds = %47
  %54 = load i8*, i8** %8, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8 47, i8* %56, align 1
  br label %19

57:                                               ; preds = %52
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @h2o_get_filext(i8* %61, i64 %62)
  %64 = call %struct.TYPE_20__* @h2o_mimemap_get_type_by_extension(i32 %60, i32 %63)
  store %struct.TYPE_20__* %64, %struct.TYPE_20__** %12, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %113 [
    i32 128, label %68
    i32 129, label %69
  ]

68:                                               ; preds = %57
  store i32 -1, i32* %5, align 4
  br label %118

69:                                               ; preds = %57
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %78, %79
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub i64 %80, %84
  %86 = call i64 @h2o_iovec_init(i64 %73, i64 %85)
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  store i64 %86, i64* %87, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %91, %93
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %98, %100
  %102 = call i64 @h2o_iovec_init(i64 %94, i64 %101)
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  store i64 %102, i64* %103, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = load i64, i64* %11, align 8
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @delegate_dynamic_request(%struct.TYPE_19__* %104, i64 %109, i64 %111, i8* %105, i64 %106, %struct.TYPE_20__* %107)
  store i32 %112, i32* %5, align 4
  br label %118

113:                                              ; preds = %57
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @h2o_fatal(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %113, %69, %68, %46, %26
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local %struct.TYPE_20__* @h2o_mimemap_get_type_by_extension(i32, i32) #1

declare dso_local i32 @h2o_get_filext(i8*, i64) #1

declare dso_local i64 @h2o_iovec_init(i64, i64) #1

declare dso_local i32 @delegate_dynamic_request(%struct.TYPE_19__*, i64, i64, i8*, i64, %struct.TYPE_20__*) #1

declare dso_local i32 @h2o_fatal(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
