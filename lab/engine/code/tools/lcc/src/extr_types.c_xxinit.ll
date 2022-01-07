; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_types.c_xxinit.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_types.c_xxinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__, i32, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }

@types = common dso_local global i32 0, align 4
@GLOBAL = common dso_local global i32 0, align 4
@PERM = common dso_local global i32 0, align 4
@FLT_MAX = common dso_local global i32 0, align 4
@DBL_MAX = common dso_local global i32 0, align 4
@LDBL_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (i32, i8*, i64, i32)* @xxinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @xxinit(i32 %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_19__, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  store i64 %2, i64* %11, align 4
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  store i32 %3, i32* %12, align 4
  %13 = bitcast %struct.TYPE_19__* %5 to i8*
  %14 = bitcast { i64, i32 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 12, i1 false)
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @string(i8* %15)
  %17 = load i32, i32* @GLOBAL, align 4
  %18 = load i32, i32* @PERM, align 4
  %19 = call %struct.TYPE_18__* @install(i32 %16, i32* @types, i32 %17, i32 %18)
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %26 = call %struct.TYPE_17__* @type(i32 %20, i32 0, i32 %22, i32 %24, %struct.TYPE_18__* %25)
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %10, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = srem i32 %34, %37
  %39 = icmp eq i32 %38, 0
  br label %40

40:                                               ; preds = %31, %4
  %41 = phi i1 [ true, %4 ], [ %39, %31 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 2
  store %struct.TYPE_17__* %44, %struct.TYPE_17__** %46, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %142 [
    i32 129, label %54
    i32 128, label %79
    i32 130, label %95
  ]

54:                                               ; preds = %40
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 8, %57
  %59 = call i32 @ones(i32 %58)
  %60 = ashr i32 %59, 1
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  store i32 %60, i32* %65, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 0, %71
  %73 = sub nsw i32 %72, 1
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  store i32 %73, i32* %78, align 4
  br label %144

79:                                               ; preds = %40
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 8, %82
  %84 = call i32 @ones(i32 %83)
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  store i32 %84, i32* %89, align 4
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  store i32 0, i32* %94, align 4
  br label %144

95:                                               ; preds = %40
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = icmp eq i64 %99, 4
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = load i32, i32* @FLT_MAX, align 4
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 2
  store i32 %102, i32* %107, align 8
  br label %129

108:                                              ; preds = %95
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = icmp eq i64 %112, 8
  br i1 %113, label %114, label %121

114:                                              ; preds = %108
  %115 = load i32, i32* @DBL_MAX, align 4
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 2
  store i32 %115, i32* %120, align 8
  br label %128

121:                                              ; preds = %108
  %122 = load i32, i32* @LDBL_MAX, align 4
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 2
  store i32 %122, i32* %127, align 8
  br label %128

128:                                              ; preds = %121, %114
  br label %129

129:                                              ; preds = %128, %101
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = sub nsw i32 0, %135
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  store i32 %136, i32* %141, align 4
  br label %144

142:                                              ; preds = %40
  %143 = call i32 @assert(i32 0)
  br label %144

144:                                              ; preds = %142, %129, %79, %54
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  ret %struct.TYPE_17__* %145
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_18__* @install(i32, i32*, i32, i32) #2

declare dso_local i32 @string(i8*) #2

declare dso_local %struct.TYPE_17__* @type(i32, i32, i32, i32, %struct.TYPE_18__*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @ones(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
