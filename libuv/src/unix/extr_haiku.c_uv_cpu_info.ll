; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_haiku.c_uv_cpu_info.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_haiku.c_uv_cpu_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@UV_EINVAL = common dso_local global i32 0, align 4
@B_OK = common dso_local global i64 0, align 8
@UV_ENOMEM = common dso_local global i32 0, align 4
@B_TOPOLOGY_CORE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_cpu_info(%struct.TYPE_14__** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_15__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__** %0, %struct.TYPE_14__*** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  %14 = icmp eq %struct.TYPE_14__** %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %2
  %19 = load i32, i32* @UV_EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %121

20:                                               ; preds = %15
  %21 = call i64 @get_cpu_topology_info(%struct.TYPE_16__* null, i32* %10)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @B_OK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @UV__ERR(i64 %26)
  store i32 %27, i32* %3, align 4
  br label %121

28:                                               ; preds = %20
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 16
  %32 = trunc i64 %31 to i32
  %33 = call %struct.TYPE_16__* @uv__malloc(i32 %32)
  store %struct.TYPE_16__* %33, %struct.TYPE_16__** %6, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = icmp eq %struct.TYPE_16__* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %37, i32* %3, align 4
  br label %121

38:                                               ; preds = %28
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %40 = call i64 @get_cpu_topology_info(%struct.TYPE_16__* %39, i32* %10)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @B_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %46 = call i32 @uv__free(%struct.TYPE_16__* %45)
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @UV__ERR(i64 %47)
  store i32 %48, i32* %3, align 4
  br label %121

49:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %73, %49
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %50
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @B_TOPOLOGY_CORE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %54
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %11, align 4
  br label %76

72:                                               ; preds = %54
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %50

76:                                               ; preds = %63, %50
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %78 = call i32 @uv__free(%struct.TYPE_16__* %77)
  %79 = call i64 @get_system_info(%struct.TYPE_15__* %9)
  store i64 %79, i64* %8, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load i64, i64* @B_OK, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @UV__ERR(i64 %84)
  store i32 %85, i32* %3, align 4
  br label %121

86:                                               ; preds = %76
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call %struct.TYPE_14__* @uv__calloc(i32 %88, i32 8)
  %90 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  store %struct.TYPE_14__* %89, %struct.TYPE_14__** %90, align 8
  %91 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = icmp eq %struct.TYPE_14__* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %95, i32* %3, align 4
  br label %121

96:                                               ; preds = %86
  %97 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %4, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  store %struct.TYPE_14__* %98, %struct.TYPE_14__** %12, align 8
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %114, %96
  %100 = load i32, i32* %7, align 4
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %99
  %105 = call i32 @uv__strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %11, align 4
  %109 = sdiv i32 %108, 1000000
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 1
  store %struct.TYPE_14__* %113, %struct.TYPE_14__** %12, align 8
  br label %114

114:                                              ; preds = %104
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %99

117:                                              ; preds = %99
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %5, align 8
  store i32 %119, i32* %120, align 4
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %117, %94, %83, %44, %36, %25, %18
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i64 @get_cpu_topology_info(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @UV__ERR(i64) #1

declare dso_local %struct.TYPE_16__* @uv__malloc(i32) #1

declare dso_local i32 @uv__free(%struct.TYPE_16__*) #1

declare dso_local i64 @get_system_info(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @uv__calloc(i32, i32) #1

declare dso_local i32 @uv__strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
