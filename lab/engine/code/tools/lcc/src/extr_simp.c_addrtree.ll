; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_simp.c_addrtree.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_simp.c_addrtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 (%struct.TYPE_27__*, %struct.TYPE_27__*, i64)* }
%struct.TYPE_27__ = type { i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_25__*, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_25__* }
%struct.TYPE_26__ = type { %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_27__* }
%struct.TYPE_28__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, %struct.TYPE_27__*, %struct.TYPE_27__* }

@GLOBAL = common dso_local global i64 0, align 8
@STATIC = common dso_local global i64 0, align 8
@EXTERN = common dso_local global i64 0, align 8
@PERM = common dso_local global i32 0, align 4
@FUNC = common dso_local global i32 0, align 4
@AUTO = common dso_local global i64 0, align 8
@IR = common dso_local global %struct.TYPE_22__* null, align 8
@Address = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_26__* (%struct.TYPE_26__*, i64, %struct.TYPE_25__*)* @addrtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_26__* @addrtree(%struct.TYPE_26__* %0, i64 %1, %struct.TYPE_25__* %2) #0 {
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %6, align 8
  %10 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  store %struct.TYPE_27__* %13, %struct.TYPE_27__** %7, align 8
  %14 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @GLOBAL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %3
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @STATIC, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @EXTERN, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25, %19, %3
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %33 = load i32, i32* @PERM, align 4
  %34 = call i32 @NEW0(%struct.TYPE_27__* %32, i32 %33)
  br label %39

35:                                               ; preds = %25
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %37 = load i32, i32* @FUNC, align 4
  %38 = call i32 @NEW0(%struct.TYPE_27__* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %31
  %40 = call i32 @genlabel(i32 1)
  %41 = call i32 @stringd(i32 %40)
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 9
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %55 = call i64 @isptr(%struct.TYPE_25__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %39
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %59 = call i64 @isarray(%struct.TYPE_25__* %58)
  %60 = icmp ne i64 %59, 0
  br label %61

61:                                               ; preds = %57, %39
  %62 = phi i1 [ true, %39 ], [ %60, %57 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %66 = call i64 @isptr(%struct.TYPE_25__* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %70, align 8
  br label %74

72:                                               ; preds = %61
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  br label %74

74:                                               ; preds = %72, %68
  %75 = phi %struct.TYPE_25__* [ %71, %68 ], [ %73, %72 ]
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 8
  store %struct.TYPE_25__* %75, %struct.TYPE_25__** %77, align 8
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 2
  store i32 1, i32* %94, align 8
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %95, i32 0, i32 3
  store i32 1, i32* %96, align 4
  %97 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 4
  store i32 1, i32* %98, align 8
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @GLOBAL, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %116, label %104

104:                                              ; preds = %74
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @STATIC, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %116, label %110

110:                                              ; preds = %104
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @EXTERN, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %134

116:                                              ; preds = %110, %104, %74
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @AUTO, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load i64, i64* @STATIC, align 8
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  br label %126

126:                                              ; preds = %122, %116
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** @IR, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  %129 = load i32 (%struct.TYPE_27__*, %struct.TYPE_27__*, i64)*, i32 (%struct.TYPE_27__*, %struct.TYPE_27__*, i64)** %128, align 8
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %131 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %132 = load i64, i64* %5, align 8
  %133 = call i32 %129(%struct.TYPE_27__* %130, %struct.TYPE_27__* %131, i64 %132)
  br label %154

134:                                              ; preds = %110
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %136 = call i32 @addlocal(%struct.TYPE_27__* %135)
  %137 = load i32, i32* @Address, align 4
  %138 = call %struct.TYPE_28__* @code(i32 %137)
  store %struct.TYPE_28__* %138, %struct.TYPE_28__** %9, align 8
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 2
  store %struct.TYPE_27__* %139, %struct.TYPE_27__** %143, align 8
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 1
  store %struct.TYPE_27__* %144, %struct.TYPE_27__** %148, align 8
  %149 = load i64, i64* %5, align 8
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 0
  store i64 %149, i64* %153, align 8
  br label %154

154:                                              ; preds = %134, %126
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %159 = call %struct.TYPE_26__* @tree(i32 %157, %struct.TYPE_25__* %158, i32* null, i32* null)
  store %struct.TYPE_26__* %159, %struct.TYPE_26__** %4, align 8
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 0
  store %struct.TYPE_27__* %160, %struct.TYPE_27__** %163, align 8
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  ret %struct.TYPE_26__* %164
}

declare dso_local i32 @NEW0(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @stringd(i32) #1

declare dso_local i32 @genlabel(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @isptr(%struct.TYPE_25__*) #1

declare dso_local i64 @isarray(%struct.TYPE_25__*) #1

declare dso_local i32 @addlocal(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_28__* @code(i32) #1

declare dso_local %struct.TYPE_26__* @tree(i32, %struct.TYPE_25__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
