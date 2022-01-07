; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_status.c_status_get_guess_mod_offset.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_status.c_status_get_guess_mod_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@ATTACK_MODE_STRAIGHT = common dso_local global i64 0, align 8
@ATTACK_MODE_COMBI = common dso_local global i64 0, align 8
@ATTACK_MODE_BF = common dso_local global i64 0, align 8
@ATTACK_MODE_HYBRID1 = common dso_local global i64 0, align 8
@ATTACK_MODE_HYBRID2 = common dso_local global i64 0, align 8
@OPTI_TYPE_OPTIMIZED_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @status_get_guess_mod_offset(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %4, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %5, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ATTACK_MODE_STRAIGHT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %79

21:                                               ; preds = %1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ATTACK_MODE_COMBI, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %79

28:                                               ; preds = %21
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ATTACK_MODE_BF, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %79

35:                                               ; preds = %28
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ATTACK_MODE_HYBRID1, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  store %struct.TYPE_9__* %44, %struct.TYPE_9__** %6, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %2, align 4
  br label %79

49:                                               ; preds = %35
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ATTACK_MODE_HYBRID2, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %49
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @OPTI_TYPE_OPTIMIZED_KERNEL, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  store %struct.TYPE_8__* %65, %struct.TYPE_8__** %7, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %2, align 4
  br label %79

70:                                               ; preds = %55
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  store %struct.TYPE_9__* %73, %struct.TYPE_9__** %8, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %2, align 4
  br label %79

78:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %70, %62, %41, %34, %27, %20
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
