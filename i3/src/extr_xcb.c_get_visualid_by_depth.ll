; ModuleID = '/home/carl/AnghaBench/i3/src/extr_xcb.c_get_visualid_by_depth.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_xcb.c_get_visualid_by_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }

@root_screen = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_visualid_by_depth(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__, align 8
  %5 = alloca %struct.TYPE_10__, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i32, i32* @root_screen, align 4
  %9 = call { %struct.TYPE_11__*, i64 } @xcb_screen_allowed_depths_iterator(i32 %8)
  %10 = bitcast %struct.TYPE_10__* %5 to { %struct.TYPE_11__*, i64 }*
  %11 = getelementptr inbounds { %struct.TYPE_11__*, i64 }, { %struct.TYPE_11__*, i64 }* %10, i32 0, i32 0
  %12 = extractvalue { %struct.TYPE_11__*, i64 } %9, 0
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %11, align 8
  %13 = getelementptr inbounds { %struct.TYPE_11__*, i64 }, { %struct.TYPE_11__*, i64 }* %10, i32 0, i32 1
  %14 = extractvalue { %struct.TYPE_11__*, i64 } %9, 1
  store i64 %14, i64* %13, align 8
  %15 = bitcast %struct.TYPE_10__* %4 to i8*
  %16 = bitcast %struct.TYPE_10__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 16, i1 false)
  br label %17

17:                                               ; preds = %49, %1
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %3, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %49

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = call { %struct.TYPE_8__*, i32 } @xcb_depth_visuals_iterator(%struct.TYPE_11__* %31)
  %33 = bitcast %struct.TYPE_9__* %7 to { %struct.TYPE_8__*, i32 }*
  %34 = getelementptr inbounds { %struct.TYPE_8__*, i32 }, { %struct.TYPE_8__*, i32 }* %33, i32 0, i32 0
  %35 = extractvalue { %struct.TYPE_8__*, i32 } %32, 0
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds { %struct.TYPE_8__*, i32 }, { %struct.TYPE_8__*, i32 }* %33, i32 0, i32 1
  %37 = extractvalue { %struct.TYPE_8__*, i32 } %32, 1
  store i32 %37, i32* %36, align 8
  %38 = bitcast %struct.TYPE_9__* %6 to i8*
  %39 = bitcast %struct.TYPE_9__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 16, i1 false)
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %29
  br label %49

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %2, align 4
  br label %52

49:                                               ; preds = %43, %28
  %50 = call i32 @xcb_depth_next(%struct.TYPE_10__* %4)
  br label %17

51:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %44
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local { %struct.TYPE_11__*, i64 } @xcb_screen_allowed_depths_iterator(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { %struct.TYPE_8__*, i32 } @xcb_depth_visuals_iterator(%struct.TYPE_11__*) #1

declare dso_local i32 @xcb_depth_next(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
