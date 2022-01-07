; ModuleID = '/home/carl/AnghaBench/i3/src/extr_resize.c_resize_find_tiling_participants.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_resize.c_resize_find_tiling_participants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_9__* }

@.str = private unnamed_addr constant [65 x i8] c"Find two participants for resizing container=%p in direction=%i\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Current container is NULL, aborting.\0A\00", align 1
@D_UP = common dso_local global i64 0, align 8
@D_LEFT = common dso_local global i64 0, align 8
@CT_WORKSPACE = common dso_local global i64 0, align 8
@CT_FLOATING_CON = common dso_local global i64 0, align 8
@L_STACKED = common dso_local global i64 0, align 8
@L_TABBED = common dso_local global i64 0, align 8
@nodes_head = common dso_local global i32 0, align 4
@nodes = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [87 x i8] c"No second container in this direction found, trying to look further up in the tree...\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Found participants: first=%p and second=%p.\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"Could not find two participants for this resize request.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resize_find_tiling_participants(%struct.TYPE_9__** %0, %struct.TYPE_9__** %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__**, align 8
  %7 = alloca %struct.TYPE_9__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %6, align 8
  store %struct.TYPE_9__** %1, %struct.TYPE_9__*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__** %14, i64 %15)
  %17 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %11, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %20 = icmp eq %struct.TYPE_9__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %138

23:                                               ; preds = %4
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @orientation_from_direction(i64 %24)
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @D_UP, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @D_LEFT, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %29, %23
  %34 = phi i1 [ true, %23 ], [ %32, %29 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %13, align 4
  br label %36

36:                                               ; preds = %121, %76, %33
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CT_WORKSPACE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CT_FLOATING_CON, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %50 = icmp eq %struct.TYPE_9__* %49, null
  br label %51

51:                                               ; preds = %48, %42, %36
  %52 = phi i1 [ false, %42 ], [ false, %36 ], [ %50, %48 ]
  br i1 %52, label %53, label %122

53:                                               ; preds = %51
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = call i64 @con_orientation(%struct.TYPE_9__* %56)
  %58 = load i64, i64* %12, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %76, label %60

60:                                               ; preds = %53
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @L_STACKED, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %60
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @L_TABBED, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %68, %60, %53
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  store %struct.TYPE_9__* %79, %struct.TYPE_9__** %10, align 8
  br label %36

80:                                               ; preds = %68
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %98

83:                                               ; preds = %80
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %85 = load i32, i32* @nodes_head, align 4
  %86 = load i32, i32* @nodes, align 4
  %87 = call %struct.TYPE_9__* @TAILQ_PREV(%struct.TYPE_9__* %84, i32 %85, i32 %86)
  store %struct.TYPE_9__* %87, %struct.TYPE_9__** %11, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %89 = icmp eq %struct.TYPE_9__* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %83
  %91 = load i32, i32* %9, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %95 = load i32, i32* @nodes, align 4
  %96 = call %struct.TYPE_9__* @TAILQ_NEXT(%struct.TYPE_9__* %94, i32 %95)
  store %struct.TYPE_9__* %96, %struct.TYPE_9__** %11, align 8
  br label %97

97:                                               ; preds = %93, %90, %83
  br label %113

98:                                               ; preds = %80
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %100 = load i32, i32* @nodes, align 4
  %101 = call %struct.TYPE_9__* @TAILQ_NEXT(%struct.TYPE_9__* %99, i32 %100)
  store %struct.TYPE_9__* %101, %struct.TYPE_9__** %11, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %103 = icmp eq %struct.TYPE_9__* %102, null
  br i1 %103, label %104, label %112

104:                                              ; preds = %98
  %105 = load i32, i32* %9, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %109 = load i32, i32* @nodes_head, align 4
  %110 = load i32, i32* @nodes, align 4
  %111 = call %struct.TYPE_9__* @TAILQ_PREV(%struct.TYPE_9__* %108, i32 %109, i32 %110)
  store %struct.TYPE_9__* %111, %struct.TYPE_9__** %11, align 8
  br label %112

112:                                              ; preds = %107, %104, %98
  br label %113

113:                                              ; preds = %112, %97
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %115 = icmp eq %struct.TYPE_9__* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0))
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  store %struct.TYPE_9__* %120, %struct.TYPE_9__** %10, align 8
  br label %121

121:                                              ; preds = %116, %113
  br label %36

122:                                              ; preds = %51
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %125 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_9__* %123, %struct.TYPE_9__* %124)
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %127 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  store %struct.TYPE_9__* %126, %struct.TYPE_9__** %127, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %129 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_9__* %128, %struct.TYPE_9__** %129, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %131 = icmp eq %struct.TYPE_9__* %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %122
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %134 = icmp eq %struct.TYPE_9__* %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %132, %122
  %136 = call i32 (i8*, ...) @DLOG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %138

137:                                              ; preds = %132
  store i32 1, i32* %5, align 4
  br label %138

138:                                              ; preds = %137, %135, %21
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @DLOG(i8*, ...) #1

declare dso_local i64 @orientation_from_direction(i64) #1

declare dso_local i64 @con_orientation(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @TAILQ_PREV(%struct.TYPE_9__*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @TAILQ_NEXT(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
