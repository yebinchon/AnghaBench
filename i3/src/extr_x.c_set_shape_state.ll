; ModuleID = '/home/carl/AnghaBench/i3/src/extr_x.c_set_shape_state.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_x.c_set_shape_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__*, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.con_state = type { i64 }

@shape_supported = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"window state for con %p not found\0A\00", align 1
@XCB_SHAPE_SK_BOUNDING = common dso_local global i32 0, align 4
@XCB_SHAPE_SK_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32)* @set_shape_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_shape_state(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.con_state*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @shape_supported, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = icmp eq %struct.TYPE_9__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %2
  br label %86

14:                                               ; preds = %8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.con_state* @state_for_frame(i32 %18)
  store %struct.con_state* %19, %struct.con_state** %5, align 8
  %20 = icmp eq %struct.con_state* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = call i32 @ELOG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.TYPE_11__* %22)
  br label %86

24:                                               ; preds = %14
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %24
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = call i64 @con_is_floating(%struct.TYPE_11__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %27
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = load i32, i32* @XCB_SHAPE_SK_BOUNDING, align 4
  %41 = call i32 @x_shape_frame(%struct.TYPE_11__* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %31
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %51 = load i32, i32* @XCB_SHAPE_SK_INPUT, align 4
  %52 = call i32 @x_shape_frame(%struct.TYPE_11__* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %42
  br label %54

54:                                               ; preds = %53, %27, %24
  %55 = load %struct.con_state*, %struct.con_state** %5, align 8
  %56 = getelementptr inbounds %struct.con_state, %struct.con_state* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %86

59:                                               ; preds = %54
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %61 = call i64 @con_is_floating(%struct.TYPE_11__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %86, label %63

63:                                               ; preds = %59
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %72 = load i32, i32* @XCB_SHAPE_SK_BOUNDING, align 4
  %73 = call i32 @x_unshape_frame(%struct.TYPE_11__* %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %63
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %83 = load i32, i32* @XCB_SHAPE_SK_INPUT, align 4
  %84 = call i32 @x_unshape_frame(%struct.TYPE_11__* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %74
  br label %86

86:                                               ; preds = %13, %21, %85, %59, %54
  ret void
}

declare dso_local %struct.con_state* @state_for_frame(i32) #1

declare dso_local i32 @ELOG(i8*, %struct.TYPE_11__*) #1

declare dso_local i64 @con_is_floating(%struct.TYPE_11__*) #1

declare dso_local i32 @x_shape_frame(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @x_unshape_frame(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
