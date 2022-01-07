; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_aix.c_uv_cpu_info.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_aix.c_uv_cpu_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@UV_ENOSYS = common dso_local global i32 0, align 4
@UV_ENOMEM = common dso_local global i32 0, align 4
@FIRST_CPU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_cpu_info(%struct.TYPE_12__** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_14__, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_13__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_12__** %0, %struct.TYPE_12__*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %12, align 4
  %13 = call i32 @perfstat_cpu_total(i32* null, %struct.TYPE_14__* %7, i32 8, i32 1)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @UV_ENOSYS, align 4
  store i32 %17, i32* %3, align 4
  br label %130

18:                                               ; preds = %2
  %19 = call i32 @perfstat_cpu(%struct.TYPE_13__* null, %struct.TYPE_15__* null, i32 16, i32 0)
  store i32 %19, i32* %10, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @UV_ENOSYS, align 4
  store i32 %23, i32* %3, align 4
  br label %130

24:                                               ; preds = %18
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 16
  %28 = trunc i64 %27 to i32
  %29 = call i64 @uv__malloc(i32 %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %8, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %32 = icmp ne %struct.TYPE_15__* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %34, i32* %3, align 4
  br label %130

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @FIRST_CPU, align 4
  %39 = call i32 @uv__strscpy(i32 %37, i32 %38, i32 4)
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @perfstat_cpu(%struct.TYPE_13__* %9, %struct.TYPE_15__* %40, i32 16, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %47 = call i32 @uv__free(%struct.TYPE_15__* %46)
  %48 = load i32, i32* @UV_ENOSYS, align 4
  store i32 %48, i32* %3, align 4
  br label %130

49:                                               ; preds = %35
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 40
  %53 = trunc i64 %52 to i32
  %54 = call i64 @uv__malloc(i32 %53)
  %55 = inttoptr i64 %54 to %struct.TYPE_12__*
  %56 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %56, align 8
  %57 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = icmp ne %struct.TYPE_12__* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %49
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %62 = call i32 @uv__free(%struct.TYPE_15__* %61)
  %63 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %63, i32* %3, align 4
  br label %130

64:                                               ; preds = %49
  %65 = load i32, i32* %11, align 4
  %66 = load i32*, i32** %5, align 8
  store i32 %65, i32* %66, align 4
  %67 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %4, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  store %struct.TYPE_12__* %68, %struct.TYPE_12__** %6, align 8
  br label %69

69:                                               ; preds = %73, %64
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %127

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sdiv i32 %75, 1000000
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @uv__strdup(i32 %80)
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 4
  store i32 %89, i32* %92, align 4
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 3
  store i32 %98, i32* %101, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 2
  store i32 %107, i32* %110, align 4
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  store i64 0, i64* %122, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 1
  store %struct.TYPE_12__* %124, %struct.TYPE_12__** %6, align 8
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %12, align 4
  br label %69

127:                                              ; preds = %69
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %129 = call i32 @uv__free(%struct.TYPE_15__* %128)
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %127, %60, %45, %33, %22, %16
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @perfstat_cpu_total(i32*, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @perfstat_cpu(%struct.TYPE_13__*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @uv__malloc(i32) #1

declare dso_local i32 @uv__strscpy(i32, i32, i32) #1

declare dso_local i32 @uv__free(%struct.TYPE_15__*) #1

declare dso_local i32 @uv__strdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
