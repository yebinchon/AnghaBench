; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_sym.c_constant.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_sym.c_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.entry**, %struct.TYPE_28__* }
%struct.entry = type { %struct.TYPE_28__, %struct.entry* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_28__*, %struct.TYPE_23__, i32, %struct.TYPE_27__*, i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_28__*)* }

@HASHSIZE = common dso_local global i32 0, align 4
@constants = common dso_local global %struct.TYPE_20__* null, align 8
@i = common dso_local global %struct.entry* null, align 8
@u = common dso_local global %struct.entry* null, align 8
@d = common dso_local global %struct.entry* null, align 8
@g = common dso_local global %struct.entry* null, align 8
@PERM = common dso_local global i32 0, align 4
@CONSTANTS = common dso_local global i32 0, align 4
@STATIC = common dso_local global i32 0, align 4
@IR = common dso_local global %struct.TYPE_21__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_28__* @constant(%struct.TYPE_27__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_28__*, align 8
  %4 = alloca %struct.TYPE_26__, align 4
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.entry*, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %4, i32 0, i32 0
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %4, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @HASHSIZE, align 4
  %12 = sub nsw i32 %11, 1
  %13 = and i32 %10, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %15 = call %struct.TYPE_27__* @unqual(%struct.TYPE_27__* %14)
  store %struct.TYPE_27__* %15, %struct.TYPE_27__** %5, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** @constants, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = load %struct.entry**, %struct.entry*** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.entry*, %struct.entry** %18, i64 %20
  %22 = load %struct.entry*, %struct.entry** %21, align 8
  store %struct.entry* %22, %struct.entry** %6, align 8
  br label %23

23:                                               ; preds = %82, %2
  %24 = load %struct.entry*, %struct.entry** %6, align 8
  %25 = icmp ne %struct.entry* %24, null
  br i1 %25, label %26, label %86

26:                                               ; preds = %23
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %28 = load %struct.entry*, %struct.entry** %6, align 8
  %29 = getelementptr inbounds %struct.entry, %struct.entry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %30, align 8
  %32 = call i64 @eqtype(%struct.TYPE_27__* %27, %struct.TYPE_27__* %31, i32 1)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %81

34:                                               ; preds = %26
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %78 [
    i32 130, label %38
    i32 128, label %46
    i32 132, label %54
    i32 131, label %62
    i32 133, label %70
    i32 129, label %70
  ]

38:                                               ; preds = %34
  %39 = load %struct.entry*, %struct.entry** @i, align 8
  %40 = call i32 @equalp(%struct.entry* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.entry*, %struct.entry** %6, align 8
  %44 = getelementptr inbounds %struct.entry, %struct.entry* %43, i32 0, i32 0
  store %struct.TYPE_28__* %44, %struct.TYPE_28__** %3, align 8
  br label %168

45:                                               ; preds = %38
  br label %80

46:                                               ; preds = %34
  %47 = load %struct.entry*, %struct.entry** @u, align 8
  %48 = call i32 @equalp(%struct.entry* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.entry*, %struct.entry** %6, align 8
  %52 = getelementptr inbounds %struct.entry, %struct.entry* %51, i32 0, i32 0
  store %struct.TYPE_28__* %52, %struct.TYPE_28__** %3, align 8
  br label %168

53:                                               ; preds = %46
  br label %80

54:                                               ; preds = %34
  %55 = load %struct.entry*, %struct.entry** @d, align 8
  %56 = call i32 @equalp(%struct.entry* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load %struct.entry*, %struct.entry** %6, align 8
  %60 = getelementptr inbounds %struct.entry, %struct.entry* %59, i32 0, i32 0
  store %struct.TYPE_28__* %60, %struct.TYPE_28__** %3, align 8
  br label %168

61:                                               ; preds = %54
  br label %80

62:                                               ; preds = %34
  %63 = load %struct.entry*, %struct.entry** @g, align 8
  %64 = call i32 @equalp(%struct.entry* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load %struct.entry*, %struct.entry** %6, align 8
  %68 = getelementptr inbounds %struct.entry, %struct.entry* %67, i32 0, i32 0
  store %struct.TYPE_28__* %68, %struct.TYPE_28__** %3, align 8
  br label %168

69:                                               ; preds = %62
  br label %80

70:                                               ; preds = %34, %34
  %71 = load %struct.entry*, %struct.entry** %6, align 8
  %72 = call i32 @equalp(%struct.entry* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load %struct.entry*, %struct.entry** %6, align 8
  %76 = getelementptr inbounds %struct.entry, %struct.entry* %75, i32 0, i32 0
  store %struct.TYPE_28__* %76, %struct.TYPE_28__** %3, align 8
  br label %168

77:                                               ; preds = %70
  br label %80

78:                                               ; preds = %34
  %79 = call i32 @assert(i32 0)
  br label %80

80:                                               ; preds = %78, %77, %69, %61, %53, %45
  br label %81

81:                                               ; preds = %80, %26
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.entry*, %struct.entry** %6, align 8
  %84 = getelementptr inbounds %struct.entry, %struct.entry* %83, i32 0, i32 1
  %85 = load %struct.entry*, %struct.entry** %84, align 8
  store %struct.entry* %85, %struct.entry** %6, align 8
  br label %23

86:                                               ; preds = %23
  %87 = load %struct.entry*, %struct.entry** %6, align 8
  %88 = load i32, i32* @PERM, align 4
  %89 = call i32 @NEW0(%struct.entry* %87, i32 %88)
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %4, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @vtoa(%struct.TYPE_27__* %90, i32 %92)
  %94 = load %struct.entry*, %struct.entry** %6, align 8
  %95 = getelementptr inbounds %struct.entry, %struct.entry* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %95, i32 0, i32 6
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* @CONSTANTS, align 4
  %98 = load %struct.entry*, %struct.entry** %6, align 8
  %99 = getelementptr inbounds %struct.entry, %struct.entry* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 5
  store i32 %97, i32* %100, align 8
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %102 = load %struct.entry*, %struct.entry** %6, align 8
  %103 = getelementptr inbounds %struct.entry, %struct.entry* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 4
  store %struct.TYPE_27__* %101, %struct.TYPE_27__** %104, align 8
  %105 = load i32, i32* @STATIC, align 4
  %106 = load %struct.entry*, %struct.entry** %6, align 8
  %107 = getelementptr inbounds %struct.entry, %struct.entry* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %107, i32 0, i32 3
  store i32 %105, i32* %108, align 4
  %109 = load %struct.entry*, %struct.entry** %6, align 8
  %110 = getelementptr inbounds %struct.entry, %struct.entry* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 0
  %114 = bitcast %struct.TYPE_26__* %113 to i8*
  %115 = bitcast %struct.TYPE_26__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %114, i8* align 4 %115, i64 4, i1 false)
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** @constants, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = load %struct.entry**, %struct.entry*** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.entry*, %struct.entry** %118, i64 %120
  %122 = load %struct.entry*, %struct.entry** %121, align 8
  %123 = load %struct.entry*, %struct.entry** %6, align 8
  %124 = getelementptr inbounds %struct.entry, %struct.entry* %123, i32 0, i32 1
  store %struct.entry* %122, %struct.entry** %124, align 8
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** @constants, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %126, align 8
  %128 = load %struct.entry*, %struct.entry** %6, align 8
  %129 = getelementptr inbounds %struct.entry, %struct.entry* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %129, i32 0, i32 1
  store %struct.TYPE_28__* %127, %struct.TYPE_28__** %130, align 8
  %131 = load %struct.entry*, %struct.entry** %6, align 8
  %132 = getelementptr inbounds %struct.entry, %struct.entry* %131, i32 0, i32 0
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** @constants, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 1
  store %struct.TYPE_28__* %132, %struct.TYPE_28__** %134, align 8
  %135 = load %struct.entry*, %struct.entry** %6, align 8
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** @constants, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  %138 = load %struct.entry**, %struct.entry*** %137, align 8
  %139 = load i32, i32* %7, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.entry*, %struct.entry** %138, i64 %140
  store %struct.entry* %135, %struct.entry** %141, align 8
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %144, align 8
  %146 = icmp ne %struct.TYPE_24__* %145, null
  br i1 %146, label %147, label %162

147:                                              ; preds = %86
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %147
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** @IR, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 0
  %158 = load i32 (%struct.TYPE_28__*)*, i32 (%struct.TYPE_28__*)** %157, align 8
  %159 = load %struct.entry*, %struct.entry** %6, align 8
  %160 = getelementptr inbounds %struct.entry, %struct.entry* %159, i32 0, i32 0
  %161 = call i32 %158(%struct.TYPE_28__* %160)
  br label %162

162:                                              ; preds = %155, %147, %86
  %163 = load %struct.entry*, %struct.entry** %6, align 8
  %164 = getelementptr inbounds %struct.entry, %struct.entry* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %164, i32 0, i32 0
  store i32 1, i32* %165, align 8
  %166 = load %struct.entry*, %struct.entry** %6, align 8
  %167 = getelementptr inbounds %struct.entry, %struct.entry* %166, i32 0, i32 0
  store %struct.TYPE_28__* %167, %struct.TYPE_28__** %3, align 8
  br label %168

168:                                              ; preds = %162, %74, %66, %58, %50, %42
  %169 = load %struct.TYPE_28__*, %struct.TYPE_28__** %3, align 8
  ret %struct.TYPE_28__* %169
}

declare dso_local %struct.TYPE_27__* @unqual(%struct.TYPE_27__*) #1

declare dso_local i64 @eqtype(%struct.TYPE_27__*, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @equalp(%struct.entry*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @NEW0(%struct.entry*, i32) #1

declare dso_local i32 @vtoa(%struct.TYPE_27__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
