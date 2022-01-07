; ModuleID = '/home/carl/AnghaBench/i3/libi3/extr_get_visualtype.c_get_visualtype.c'
source_filename = "/home/carl/AnghaBench/i3/libi3/extr_get_visualtype.c_get_visualtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @get_visualtype(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__, align 8
  %5 = alloca %struct.TYPE_15__, align 8
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %9 = call { i32, i64 } @xcb_screen_allowed_depths_iterator(%struct.TYPE_14__* %8)
  %10 = bitcast %struct.TYPE_15__* %5 to { i32, i64 }*
  %11 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %10, i32 0, i32 0
  %12 = extractvalue { i32, i64 } %9, 0
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %10, i32 0, i32 1
  %14 = extractvalue { i32, i64 } %9, 1
  store i64 %14, i64* %13, align 8
  %15 = bitcast %struct.TYPE_15__* %4 to i8*
  %16 = bitcast %struct.TYPE_15__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 16, i1 false)
  br label %17

17:                                               ; preds = %52, %1
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call { %struct.TYPE_12__*, i64 } @xcb_depth_visuals_iterator(i32 %23)
  %25 = bitcast %struct.TYPE_13__* %7 to { %struct.TYPE_12__*, i64 }*
  %26 = getelementptr inbounds { %struct.TYPE_12__*, i64 }, { %struct.TYPE_12__*, i64 }* %25, i32 0, i32 0
  %27 = extractvalue { %struct.TYPE_12__*, i64 } %24, 0
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds { %struct.TYPE_12__*, i64 }, { %struct.TYPE_12__*, i64 }* %25, i32 0, i32 1
  %29 = extractvalue { %struct.TYPE_12__*, i64 } %24, 1
  store i64 %29, i64* %28, align 8
  %30 = bitcast %struct.TYPE_13__* %6 to i8*
  %31 = bitcast %struct.TYPE_13__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false)
  br label %32

32:                                               ; preds = %49, %21
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %39, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  store %struct.TYPE_12__* %47, %struct.TYPE_12__** %2, align 8
  br label %55

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48
  %50 = call i32 @xcb_visualtype_next(%struct.TYPE_13__* %6)
  br label %32

51:                                               ; preds = %32
  br label %52

52:                                               ; preds = %51
  %53 = call i32 @xcb_depth_next(%struct.TYPE_15__* %4)
  br label %17

54:                                               ; preds = %17
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %2, align 8
  br label %55

55:                                               ; preds = %54, %45
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  ret %struct.TYPE_12__* %56
}

declare dso_local { i32, i64 } @xcb_screen_allowed_depths_iterator(%struct.TYPE_14__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { %struct.TYPE_12__*, i64 } @xcb_depth_visuals_iterator(i32) #1

declare dso_local i32 @xcb_visualtype_next(%struct.TYPE_13__*) #1

declare dso_local i32 @xcb_depth_next(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
