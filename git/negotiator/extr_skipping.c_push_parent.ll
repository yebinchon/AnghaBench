; ModuleID = '/home/carl/AnghaBench/git/negotiator/extr_skipping.c_push_parent.c'
source_filename = "/home/carl/AnghaBench/git/negotiator/extr_skipping.c_push_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.entry* }
%struct.entry = type { i64, i32, %struct.commit* }
%struct.commit = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@SEEN = common dso_local global i32 0, align 4
@POPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"missing parent in priority queue\00", align 1
@COMMON = common dso_local global i32 0, align 4
@ADVERTISED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.data*, %struct.entry*, %struct.commit*)* @push_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_parent(%struct.data* %0, %struct.entry* %1, %struct.commit* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.data*, align 8
  %6 = alloca %struct.entry*, align 8
  %7 = alloca %struct.commit*, align 8
  %8 = alloca %struct.entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.data* %0, %struct.data** %5, align 8
  store %struct.entry* %1, %struct.entry** %6, align 8
  store %struct.commit* %2, %struct.commit** %7, align 8
  %12 = load %struct.commit*, %struct.commit** %7, align 8
  %13 = getelementptr inbounds %struct.commit, %struct.commit* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SEEN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %59

19:                                               ; preds = %3
  %20 = load %struct.commit*, %struct.commit** %7, align 8
  %21 = getelementptr inbounds %struct.commit, %struct.commit* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @POPPED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %127

28:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %53, %28
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.data*, %struct.data** %5, align 8
  %32 = getelementptr inbounds %struct.data, %struct.data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %29
  %37 = load %struct.data*, %struct.data** %5, align 8
  %38 = getelementptr inbounds %struct.data, %struct.data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.entry*, %struct.entry** %44, align 8
  store %struct.entry* %45, %struct.entry** %8, align 8
  %46 = load %struct.entry*, %struct.entry** %8, align 8
  %47 = getelementptr inbounds %struct.entry, %struct.entry* %46, i32 0, i32 2
  %48 = load %struct.commit*, %struct.commit** %47, align 8
  %49 = load %struct.commit*, %struct.commit** %7, align 8
  %50 = icmp eq %struct.commit* %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %36
  br label %58

52:                                               ; preds = %36
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %29

56:                                               ; preds = %29
  %57 = call i32 @BUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %51
  br label %63

59:                                               ; preds = %3
  %60 = load %struct.data*, %struct.data** %5, align 8
  %61 = load %struct.commit*, %struct.commit** %7, align 8
  %62 = call %struct.entry* @rev_list_push(%struct.data* %60, %struct.commit* %61, i32 0)
  store %struct.entry* %62, %struct.entry** %8, align 8
  br label %63

63:                                               ; preds = %59, %58
  %64 = load %struct.entry*, %struct.entry** %6, align 8
  %65 = getelementptr inbounds %struct.entry, %struct.entry* %64, i32 0, i32 2
  %66 = load %struct.commit*, %struct.commit** %65, align 8
  %67 = getelementptr inbounds %struct.commit, %struct.commit* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @COMMON, align 4
  %71 = load i32, i32* @ADVERTISED, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %63
  %76 = load %struct.data*, %struct.data** %5, align 8
  %77 = load %struct.commit*, %struct.commit** %7, align 8
  %78 = call i32 @mark_common(%struct.data* %76, %struct.commit* %77)
  br label %126

79:                                               ; preds = %63
  %80 = load %struct.entry*, %struct.entry** %6, align 8
  %81 = getelementptr inbounds %struct.entry, %struct.entry* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.entry*, %struct.entry** %6, align 8
  %86 = getelementptr inbounds %struct.entry, %struct.entry* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  br label %95

88:                                               ; preds = %79
  %89 = load %struct.entry*, %struct.entry** %6, align 8
  %90 = getelementptr inbounds %struct.entry, %struct.entry* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = mul nsw i32 %91, 3
  %93 = sdiv i32 %92, 2
  %94 = add nsw i32 %93, 1
  br label %95

95:                                               ; preds = %88, %84
  %96 = phi i32 [ %87, %84 ], [ %94, %88 ]
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %10, align 8
  %98 = load %struct.entry*, %struct.entry** %6, align 8
  %99 = getelementptr inbounds %struct.entry, %struct.entry* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load %struct.entry*, %struct.entry** %6, align 8
  %104 = getelementptr inbounds %struct.entry, %struct.entry* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = sub nsw i64 %105, 1
  br label %109

107:                                              ; preds = %95
  %108 = load i64, i64* %10, align 8
  br label %109

109:                                              ; preds = %107, %102
  %110 = phi i64 [ %106, %102 ], [ %108, %107 ]
  store i64 %110, i64* %11, align 8
  %111 = load %struct.entry*, %struct.entry** %8, align 8
  %112 = getelementptr inbounds %struct.entry, %struct.entry* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* %10, align 8
  %116 = icmp slt i64 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %109
  %118 = load i64, i64* %10, align 8
  %119 = trunc i64 %118 to i32
  %120 = load %struct.entry*, %struct.entry** %8, align 8
  %121 = getelementptr inbounds %struct.entry, %struct.entry* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 8
  %122 = load i64, i64* %11, align 8
  %123 = load %struct.entry*, %struct.entry** %8, align 8
  %124 = getelementptr inbounds %struct.entry, %struct.entry* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %117, %109
  br label %126

126:                                              ; preds = %125, %75
  store i32 1, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %27
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local %struct.entry* @rev_list_push(%struct.data*, %struct.commit*, i32) #1

declare dso_local i32 @mark_common(%struct.data*, %struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
