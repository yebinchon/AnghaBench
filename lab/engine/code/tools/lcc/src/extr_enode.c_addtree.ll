; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_enode.c_addtree.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_enode.c_addtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i64, %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_34__ = type { i32, %struct.TYPE_35__* }

@inttype = common dso_local global %struct.TYPE_33__* null, align 8
@ADD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unknown size for type `%t'\0A\00", align 1
@MUL = common dso_local global i32 0, align 4
@signedptr = common dso_local global i32 0, align 4
@YYcheck = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_34__* (i32, %struct.TYPE_34__*, %struct.TYPE_34__*)* @addtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_34__* @addtree(i32 %0, %struct.TYPE_34__* %1, %struct.TYPE_34__* %2) #0 {
  %4 = alloca %struct.TYPE_34__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_34__*, align 8
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %6, align 8
  store %struct.TYPE_34__* %2, %struct.TYPE_34__** %7, align 8
  %10 = load %struct.TYPE_33__*, %struct.TYPE_33__** @inttype, align 8
  store %struct.TYPE_33__* %10, %struct.TYPE_33__** %8, align 8
  %11 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %14 = call i64 @isarith(%struct.TYPE_35__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %3
  %17 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_35__*, %struct.TYPE_35__** %18, align 8
  %20 = call i64 @isarith(%struct.TYPE_35__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_35__*, %struct.TYPE_35__** %24, align 8
  %26 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_35__*, %struct.TYPE_35__** %27, align 8
  %29 = call %struct.TYPE_33__* @binary(%struct.TYPE_35__* %25, %struct.TYPE_35__* %28)
  store %struct.TYPE_33__* %29, %struct.TYPE_33__** %8, align 8
  %30 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %31 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %32 = call %struct.TYPE_34__* @cast(%struct.TYPE_34__* %30, %struct.TYPE_33__* %31)
  store %struct.TYPE_34__* %32, %struct.TYPE_34__** %6, align 8
  %33 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %34 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %35 = call %struct.TYPE_34__* @cast(%struct.TYPE_34__* %33, %struct.TYPE_33__* %34)
  store %struct.TYPE_34__* %35, %struct.TYPE_34__** %7, align 8
  br label %135

36:                                               ; preds = %16, %3
  %37 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_35__*, %struct.TYPE_35__** %38, align 8
  %40 = call i64 @isptr(%struct.TYPE_35__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_35__*, %struct.TYPE_35__** %44, align 8
  %46 = call i64 @isint(%struct.TYPE_35__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i32, i32* @ADD, align 4
  %50 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %51 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %52 = call %struct.TYPE_34__* @addtree(i32 %49, %struct.TYPE_34__* %50, %struct.TYPE_34__* %51)
  store %struct.TYPE_34__* %52, %struct.TYPE_34__** %4, align 8
  br label %141

53:                                               ; preds = %42, %36
  %54 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_35__*, %struct.TYPE_35__** %55, align 8
  %57 = call i64 @isptr(%struct.TYPE_35__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %128

59:                                               ; preds = %53
  %60 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_35__*, %struct.TYPE_35__** %61, align 8
  %63 = call i64 @isint(%struct.TYPE_35__* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %128

65:                                               ; preds = %59
  %66 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_35__*, %struct.TYPE_35__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @isfunc(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %128, label %73

73:                                               ; preds = %65
  %74 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_35__*, %struct.TYPE_35__** %75, align 8
  %77 = call %struct.TYPE_33__* @unqual(%struct.TYPE_35__* %76)
  store %struct.TYPE_33__* %77, %struct.TYPE_33__** %8, align 8
  %78 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_35__*, %struct.TYPE_35__** %79, align 8
  %81 = call %struct.TYPE_33__* @unqual(%struct.TYPE_35__* %80)
  %82 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %9, align 8
  %84 = load i64, i64* %9, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %73
  %87 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_35__*, %struct.TYPE_35__** %88, align 8
  %90 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.TYPE_35__* %89)
  br label %91

91:                                               ; preds = %86, %73
  %92 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %93 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_35__*, %struct.TYPE_35__** %94, align 8
  %96 = call %struct.TYPE_33__* @promote(%struct.TYPE_35__* %95)
  %97 = call %struct.TYPE_34__* @cast(%struct.TYPE_34__* %92, %struct.TYPE_33__* %96)
  store %struct.TYPE_34__* %97, %struct.TYPE_34__** %6, align 8
  %98 = load i64, i64* %9, align 8
  %99 = icmp sgt i64 %98, 1
  br i1 %99, label %100, label %107

100:                                              ; preds = %91
  %101 = load i32, i32* @MUL, align 4
  %102 = load i32, i32* @signedptr, align 4
  %103 = load i64, i64* %9, align 8
  %104 = call i32 @cnsttree(i32 %102, i64 %103)
  %105 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %106 = call %struct.TYPE_34__* @multree(i32 %101, i32 %104, %struct.TYPE_34__* %105)
  store %struct.TYPE_34__* %106, %struct.TYPE_34__** %6, align 8
  br label %107

107:                                              ; preds = %100, %91
  %108 = load i64, i64* @YYcheck, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %107
  %111 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @isaddrop(i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %110
  %117 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %118 = load i64, i64* @YYcheck, align 8
  %119 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %120 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %121 = call %struct.TYPE_34__* @nullcall(%struct.TYPE_33__* %117, i64 %118, %struct.TYPE_34__* %119, %struct.TYPE_34__* %120)
  store %struct.TYPE_34__* %121, %struct.TYPE_34__** %4, align 8
  br label %141

122:                                              ; preds = %110, %107
  %123 = load i32, i32* @ADD, align 4
  %124 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %125 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %126 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %127 = call %struct.TYPE_34__* @simplify(i32 %123, %struct.TYPE_33__* %124, %struct.TYPE_34__* %125, %struct.TYPE_34__* %126)
  store %struct.TYPE_34__* %127, %struct.TYPE_34__** %4, align 8
  br label %141

128:                                              ; preds = %65, %59, %53
  %129 = load i32, i32* %5, align 4
  %130 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %131 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %132 = call i32 @typeerror(i32 %129, %struct.TYPE_34__* %130, %struct.TYPE_34__* %131)
  br label %133

133:                                              ; preds = %128
  br label %134

134:                                              ; preds = %133
  br label %135

135:                                              ; preds = %134, %22
  %136 = load i32, i32* %5, align 4
  %137 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %138 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %139 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %140 = call %struct.TYPE_34__* @simplify(i32 %136, %struct.TYPE_33__* %137, %struct.TYPE_34__* %138, %struct.TYPE_34__* %139)
  store %struct.TYPE_34__* %140, %struct.TYPE_34__** %4, align 8
  br label %141

141:                                              ; preds = %135, %122, %116, %48
  %142 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  ret %struct.TYPE_34__* %142
}

declare dso_local i64 @isarith(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_33__* @binary(%struct.TYPE_35__*, %struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_34__* @cast(%struct.TYPE_34__*, %struct.TYPE_33__*) #1

declare dso_local i64 @isptr(%struct.TYPE_35__*) #1

declare dso_local i64 @isint(%struct.TYPE_35__*) #1

declare dso_local i32 @isfunc(i32) #1

declare dso_local %struct.TYPE_33__* @unqual(%struct.TYPE_35__*) #1

declare dso_local i32 @error(i8*, %struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_33__* @promote(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_34__* @multree(i32, i32, %struct.TYPE_34__*) #1

declare dso_local i32 @cnsttree(i32, i64) #1

declare dso_local i32 @isaddrop(i32) #1

declare dso_local %struct.TYPE_34__* @nullcall(%struct.TYPE_33__*, i64, %struct.TYPE_34__*, %struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_34__* @simplify(i32, %struct.TYPE_33__*, %struct.TYPE_34__*, %struct.TYPE_34__*) #1

declare dso_local i32 @typeerror(i32, %struct.TYPE_34__*, %struct.TYPE_34__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
