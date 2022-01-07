; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_simp.c_intexpr.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_simp.c_intexpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@needconst = common dso_local global i32 0, align 4
@CNST = common dso_local global i64 0, align 8
@I = common dso_local global i64 0, align 8
@U = common dso_local global i64 0, align 8
@inttype = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"integer expression must be constant\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intexpr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.TYPE_9__* @constexpr(i32 %6)
  store %struct.TYPE_9__* %7, %struct.TYPE_9__** %5, align 8
  %8 = load i32, i32* @needconst, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @needconst, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CNST, align 8
  %14 = load i64, i64* @I, align 8
  %15 = add nsw i64 %13, %14
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CNST, align 8
  %22 = load i64, i64* @U, align 8
  %23 = add nsw i64 %21, %22
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %17, %2
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = load i32, i32* @inttype, align 4
  %28 = call %struct.TYPE_10__* @cast(%struct.TYPE_9__* %26, i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %4, align 4
  br label %35

33:                                               ; preds = %17
  %34 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %25
  %36 = load i32, i32* @needconst, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* @needconst, align 4
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.TYPE_9__* @constexpr(i32) #1

declare dso_local %struct.TYPE_10__* @cast(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
