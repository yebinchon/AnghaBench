; ModuleID = '/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-db.c_antispam_del_unsafe.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-db.c_antispam_del_unsafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, i64, %struct.TYPE_8__*, i32, %struct.TYPE_8__* }

@triple_to_pattern = common dso_local global i32 0, align 4
@id_to_pattern = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_9__*)* @antispam_del_unsafe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @antispam_del_unsafe(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_8__**, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %5, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = call i32 @HASH_PATTERN(%struct.TYPE_8__* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @triple_to_pattern, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i64* @triple_to_patterns_find(i32 %23, i32 %24)
  store i64* %25, i64** %7, align 8
  %26 = load i64*, i64** %7, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load i64*, i64** %7, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = call i64 @list_pattern_delete(i64* %29, %struct.TYPE_9__* %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %28, %2
  %34 = phi i1 [ false, %2 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i64*, i64** %7, align 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load i32, i32* @triple_to_pattern, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @triple_to_patterns_delete(i32 %41, i32 %42)
  %44 = call i32 @assert(i32 %43)
  br label %45

45:                                               ; preds = %40, %33
  %46 = load i32, i32* @id_to_pattern, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @id_to_pattern_delete(i32 %46, i32 %47)
  %49 = call i32 @assert(i32 %48)
  br label %50

50:                                               ; preds = %109, %45
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 5
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = icmp ne %struct.TYPE_8__* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br label %65

65:                                               ; preds = %60, %55, %50
  %66 = phi i1 [ false, %55 ], [ false, %50 ], [ %64, %60 ]
  br i1 %66, label %67, label %113

67:                                               ; preds = %65
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 5
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %8, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i64* @get_not_null(%struct.TYPE_8__* %71, i32 %74)
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, -1
  store i64 %79, i64* %77, align 8
  %80 = icmp eq i64 %79, 1
  br i1 %80, label %81, label %109

81:                                               ; preds = %67
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = bitcast %struct.TYPE_8__* %84 to %struct.TYPE_8__**
  store %struct.TYPE_8__** %85, %struct.TYPE_8__*** %10, align 8
  store i64 0, i64* %11, align 8
  br label %86

86:                                               ; preds = %91, %81
  %87 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = icmp ne %struct.TYPE_8__* %88, null
  %90 = xor i1 %89, true
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %92, i32 1
  store %struct.TYPE_8__** %93, %struct.TYPE_8__*** %10, align 8
  %94 = load i64, i64* %11, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %11, align 8
  br label %86

96:                                               ; preds = %86
  %97 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %10, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  store %struct.TYPE_8__* %98, %struct.TYPE_8__** %9, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = call i32 @zfree(%struct.TYPE_8__* %101, i32 2048)
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 3
  store %struct.TYPE_8__* %103, %struct.TYPE_8__** %105, align 8
  %106 = load i64, i64* %11, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %96, %67
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %111 = call i32 @zfree(%struct.TYPE_8__* %110, i32 48)
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %112, %struct.TYPE_8__** %5, align 8
  br label %50

113:                                              ; preds = %65
  ret void
}

declare dso_local i32 @HASH_PATTERN(%struct.TYPE_8__*) #1

declare dso_local i64* @triple_to_patterns_find(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @list_pattern_delete(i64*, %struct.TYPE_9__*) #1

declare dso_local i32 @triple_to_patterns_delete(i32, i32) #1

declare dso_local i32 @id_to_pattern_delete(i32, i32) #1

declare dso_local i64* @get_not_null(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @zfree(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
