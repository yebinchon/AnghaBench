; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_gen.c_genspill.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_gen.c_genspill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_27__, %struct.TYPE_25__ }
%struct.TYPE_27__ = type { i32 (i32)* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_29__* }
%struct.TYPE_28__ = type { %struct.TYPE_23__, i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"(spilling %s to local %s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"(genspill: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@FUNC = common dso_local global i32 0, align 4
@REGISTER = common dso_local global i32 0, align 4
@ADDRL = common dso_local global i64 0, align 8
@P = common dso_local global i64 0, align 8
@IR = common dso_local global %struct.TYPE_24__* null, align 8
@INDIR = common dso_local global i64 0, align 8
@ASGN = common dso_local global i64 0, align 8
@NeedsReg = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_28__*, %struct.TYPE_29__*, %struct.TYPE_28__*)* @genspill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @genspill(%struct.TYPE_28__* %0, %struct.TYPE_29__* %1, %struct.TYPE_28__* %2) #0 {
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %5, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %6, align 8
  %11 = load i32, i32* @stderr, align 4
  %12 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32, i8*, ...) @fprint(i32 %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19)
  %21 = call i32 @debug(i32 %20)
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 (i32, i8*, ...) @fprint(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @debug(i32 %23)
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %26 = call i32 @dumptree(%struct.TYPE_29__* %25)
  %27 = call i32 @debug(i32 %26)
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 (i32, i8*, ...) @fprint(i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %30 = call i32 @debug(i32 %29)
  %31 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @opkind(i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %36 = load i32, i32* @FUNC, align 4
  %37 = call i32 @NEW0(%struct.TYPE_28__* %35, i32 %36)
  %38 = load i32, i32* @REGISTER, align 4
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %48, i32 0, i32 1
  store i32 %44, i32* %49, align 4
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  %57 = load i64, i64* @ADDRL, align 8
  %58 = load i64, i64* @P, align 8
  %59 = add nsw i64 %57, %58
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** @IR, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @sizeop(i32 %63)
  %65 = add nsw i64 %59, %64
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %67 = call %struct.TYPE_29__* @newnode(i64 %65, %struct.TYPE_29__* null, %struct.TYPE_29__* null, %struct.TYPE_28__* %66)
  store %struct.TYPE_29__* %67, %struct.TYPE_29__** %8, align 8
  %68 = load i64, i64* @INDIR, align 8
  %69 = load i32, i32* %10, align 4
  %70 = zext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %73 = call %struct.TYPE_29__* @newnode(i64 %71, %struct.TYPE_29__* %72, %struct.TYPE_29__* null, %struct.TYPE_28__* null)
  store %struct.TYPE_29__* %73, %struct.TYPE_29__** %8, align 8
  %74 = load i64, i64* @ADDRL, align 8
  %75 = load i64, i64* @P, align 8
  %76 = add nsw i64 %74, %75
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** @IR, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @sizeop(i32 %80)
  %82 = add nsw i64 %76, %81
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %84 = call %struct.TYPE_29__* @newnode(i64 %82, %struct.TYPE_29__* null, %struct.TYPE_29__* null, %struct.TYPE_28__* %83)
  store %struct.TYPE_29__* %84, %struct.TYPE_29__** %7, align 8
  %85 = load i64, i64* @ASGN, align 8
  %86 = load i32, i32* %10, align 4
  %87 = zext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %90 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %91 = call %struct.TYPE_29__* @newnode(i64 %88, %struct.TYPE_29__* %89, %struct.TYPE_29__* %90, %struct.TYPE_28__* null)
  store %struct.TYPE_29__* %91, %struct.TYPE_29__** %7, align 8
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %96 = call i32 @rewrite(%struct.TYPE_29__* %95)
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %98 = call i32 @prune(%struct.TYPE_29__* %97, %struct.TYPE_29__** %8)
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %101, align 8
  store %struct.TYPE_29__* %102, %struct.TYPE_29__** %8, align 8
  %103 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %105 = call i32 @linearize(%struct.TYPE_29__* %103, %struct.TYPE_29__* %104)
  %106 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %108, align 8
  store %struct.TYPE_29__* %109, %struct.TYPE_29__** %7, align 8
  br label %110

110:                                              ; preds = %147, %3
  %111 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %113 = icmp ne %struct.TYPE_29__* %111, %112
  br i1 %113, label %114, label %152

114:                                              ; preds = %110
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %116 = call i32 @ralloc(%struct.TYPE_29__* %115)
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %143

122:                                              ; preds = %114
  %123 = load i32*, i32** @NeedsReg, align 8
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @opindex(i32 %126)
  %128 = getelementptr inbounds i32, i32* %123, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %122
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** @IR, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 0
  %135 = load i32 (i32)*, i32 (i32)** %134, align 8
  %136 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @opkind(i32 %138)
  %140 = call i32 %135(i32 %139)
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  br label %143

143:                                              ; preds = %131, %122, %114
  %144 = phi i1 [ true, %122 ], [ true, %114 ], [ %142, %131 ]
  %145 = zext i1 %144 to i32
  %146 = call i32 @assert(i32 %145)
  br label %147

147:                                              ; preds = %143
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_29__*, %struct.TYPE_29__** %150, align 8
  store %struct.TYPE_29__* %151, %struct.TYPE_29__** %7, align 8
  br label %110

152:                                              ; preds = %110
  ret void
}

declare dso_local i32 @debug(i32) #1

declare dso_local i32 @fprint(i32, i8*, ...) #1

declare dso_local i32 @dumptree(%struct.TYPE_29__*) #1

declare dso_local i32 @opkind(i32) #1

declare dso_local i32 @NEW0(%struct.TYPE_28__*, i32) #1

declare dso_local %struct.TYPE_29__* @newnode(i64, %struct.TYPE_29__*, %struct.TYPE_29__*, %struct.TYPE_28__*) #1

declare dso_local i64 @sizeop(i32) #1

declare dso_local i32 @rewrite(%struct.TYPE_29__*) #1

declare dso_local i32 @prune(%struct.TYPE_29__*, %struct.TYPE_29__**) #1

declare dso_local i32 @linearize(%struct.TYPE_29__*, %struct.TYPE_29__*) #1

declare dso_local i32 @ralloc(%struct.TYPE_29__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @opindex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
