; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_status.c_status_get_guess_mod.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_status.c_status_get_guess_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_14__*, %struct.TYPE_9__*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@ATTACK_MODE_STRAIGHT = common dso_local global i64 0, align 8
@ATTACK_MODE_COMBI = common dso_local global i64 0, align 8
@COMBINATOR_MODE_BASE_LEFT = common dso_local global i64 0, align 8
@ATTACK_MODE_BF = common dso_local global i64 0, align 8
@ATTACK_MODE_HYBRID1 = common dso_local global i64 0, align 8
@ATTACK_MODE_HYBRID2 = common dso_local global i64 0, align 8
@OPTI_TYPE_OPTIMIZED_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @status_get_guess_mod(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %4, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %5, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ATTACK_MODE_STRAIGHT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = call i8* @status_get_rules_file(%struct.TYPE_13__* %22)
  store i8* %23, i8** %2, align 8
  br label %100

24:                                               ; preds = %1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ATTACK_MODE_COMBI, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %24
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %6, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @COMBINATOR_MODE_BASE_LEFT, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @strdup(i32 %42)
  store i8* %43, i8** %2, align 8
  br label %100

44:                                               ; preds = %30
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @strdup(i32 %47)
  store i8* %48, i8** %2, align 8
  br label %100

49:                                               ; preds = %24
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ATTACK_MODE_BF, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %49
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ATTACK_MODE_HYBRID1, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %7, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @strdup(i32 %68)
  store i8* %69, i8** %2, align 8
  br label %100

70:                                               ; preds = %56
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ATTACK_MODE_HYBRID2, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %99

76:                                               ; preds = %70
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @OPTI_TYPE_OPTIMIZED_KERNEL, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  store %struct.TYPE_10__* %86, %struct.TYPE_10__** %8, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @strdup(i32 %89)
  store i8* %90, i8** %2, align 8
  br label %100

91:                                               ; preds = %76
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  store %struct.TYPE_11__* %94, %struct.TYPE_11__** %9, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @strdup(i32 %97)
  store i8* %98, i8** %2, align 8
  br label %100

99:                                               ; preds = %70
  store i8* null, i8** %2, align 8
  br label %100

100:                                              ; preds = %99, %91, %83, %62, %44, %39, %21
  %101 = load i8*, i8** %2, align 8
  ret i8* %101
}

declare dso_local i8* @status_get_rules_file(%struct.TYPE_13__*) #1

declare dso_local i8* @strdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
