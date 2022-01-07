; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_update_counters.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_update_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@NODE_TYPE_PLUS = common dso_local global i32 0, align 4
@NODE_TYPE_UNSURE = common dso_local global i32 0, align 4
@NODE_TYPE_MINUS = common dso_local global i32 0, align 4
@NODE_TYPE_ZERO = common dso_local global i32 0, align 4
@NODE_TYPE_SURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_counters(%struct.item* %0) #0 {
  %2 = alloca %struct.item*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.item* %0, %struct.item** %2, align 8
  %5 = load %struct.item*, %struct.item** %2, align 8
  %6 = icmp ne %struct.item* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %164

8:                                                ; preds = %1
  %9 = load %struct.item*, %struct.item** %2, align 8
  %10 = getelementptr inbounds %struct.item, %struct.item* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.item*, %struct.item** %2, align 8
  %12 = call i32 @NODE_TYPE_T(%struct.item* %11)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.item*, %struct.item** %2, align 8
  %14 = call i32 @NODE_TYPE_S(%struct.item* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @NODE_TYPE_PLUS, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %8
  %19 = load %struct.item*, %struct.item** %2, align 8
  %20 = getelementptr inbounds %struct.item, %struct.item* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @NODE_TYPE_UNSURE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.item*, %struct.item** %2, align 8
  %26 = getelementptr inbounds %struct.item, %struct.item* %25, i32 0, i32 2
  store i32 1, i32* %26, align 8
  br label %27

27:                                               ; preds = %24, %18
  %28 = load %struct.item*, %struct.item** %2, align 8
  %29 = getelementptr inbounds %struct.item, %struct.item* %28, i32 0, i32 3
  store i32 0, i32* %29, align 4
  br label %64

30:                                               ; preds = %8
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @NODE_TYPE_MINUS, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load %struct.item*, %struct.item** %2, align 8
  %36 = getelementptr inbounds %struct.item, %struct.item* %35, i32 0, i32 1
  store i32 -1, i32* %36, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @NODE_TYPE_UNSURE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.item*, %struct.item** %2, align 8
  %42 = getelementptr inbounds %struct.item, %struct.item* %41, i32 0, i32 3
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %34
  %44 = load %struct.item*, %struct.item** %2, align 8
  %45 = getelementptr inbounds %struct.item, %struct.item* %44, i32 0, i32 2
  store i32 0, i32* %45, align 8
  br label %63

46:                                               ; preds = %30
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @NODE_TYPE_ZERO, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.item*, %struct.item** %2, align 8
  %53 = getelementptr inbounds %struct.item, %struct.item* %52, i32 0, i32 1
  store i32 0, i32* %53, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @NODE_TYPE_SURE, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.item*, %struct.item** %2, align 8
  %60 = getelementptr inbounds %struct.item, %struct.item* %59, i32 0, i32 3
  store i32 0, i32* %60, align 4
  %61 = load %struct.item*, %struct.item** %2, align 8
  %62 = getelementptr inbounds %struct.item, %struct.item* %61, i32 0, i32 2
  store i32 0, i32* %62, align 8
  br label %63

63:                                               ; preds = %46, %43
  br label %64

64:                                               ; preds = %63, %27
  %65 = load %struct.item*, %struct.item** %2, align 8
  %66 = getelementptr inbounds %struct.item, %struct.item* %65, i32 0, i32 5
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = icmp ne %struct.TYPE_3__* %67, null
  br i1 %68, label %69, label %114

69:                                               ; preds = %64
  %70 = load %struct.item*, %struct.item** %2, align 8
  %71 = getelementptr inbounds %struct.item, %struct.item* %70, i32 0, i32 5
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.item*, %struct.item** %2, align 8
  %76 = getelementptr inbounds %struct.item, %struct.item* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %74
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 8
  %81 = load %struct.item*, %struct.item** %2, align 8
  %82 = getelementptr inbounds %struct.item, %struct.item* %81, i32 0, i32 5
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.item*, %struct.item** %2, align 8
  %87 = getelementptr inbounds %struct.item, %struct.item* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %85
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %87, align 4
  %92 = load %struct.item*, %struct.item** %2, align 8
  %93 = getelementptr inbounds %struct.item, %struct.item* %92, i32 0, i32 5
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.item*, %struct.item** %2, align 8
  %98 = getelementptr inbounds %struct.item, %struct.item* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %96
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %98, align 4
  %103 = load %struct.item*, %struct.item** %2, align 8
  %104 = getelementptr inbounds %struct.item, %struct.item* %103, i32 0, i32 5
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.item*, %struct.item** %2, align 8
  %109 = getelementptr inbounds %struct.item, %struct.item* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %111, %107
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %109, align 8
  br label %114

114:                                              ; preds = %69, %64
  %115 = load %struct.item*, %struct.item** %2, align 8
  %116 = getelementptr inbounds %struct.item, %struct.item* %115, i32 0, i32 4
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = icmp ne %struct.TYPE_4__* %117, null
  br i1 %118, label %119, label %164

119:                                              ; preds = %114
  %120 = load %struct.item*, %struct.item** %2, align 8
  %121 = getelementptr inbounds %struct.item, %struct.item* %120, i32 0, i32 4
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.item*, %struct.item** %2, align 8
  %126 = getelementptr inbounds %struct.item, %struct.item* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %124
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %126, align 8
  %131 = load %struct.item*, %struct.item** %2, align 8
  %132 = getelementptr inbounds %struct.item, %struct.item* %131, i32 0, i32 4
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.item*, %struct.item** %2, align 8
  %137 = getelementptr inbounds %struct.item, %struct.item* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %139, %135
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %137, align 4
  %142 = load %struct.item*, %struct.item** %2, align 8
  %143 = getelementptr inbounds %struct.item, %struct.item* %142, i32 0, i32 4
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.item*, %struct.item** %2, align 8
  %148 = getelementptr inbounds %struct.item, %struct.item* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %150, %146
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %148, align 4
  %153 = load %struct.item*, %struct.item** %2, align 8
  %154 = getelementptr inbounds %struct.item, %struct.item* %153, i32 0, i32 4
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.item*, %struct.item** %2, align 8
  %159 = getelementptr inbounds %struct.item, %struct.item* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %161, %157
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %159, align 8
  br label %164

164:                                              ; preds = %7, %119, %114
  ret void
}

declare dso_local i32 @NODE_TYPE_T(%struct.item*) #1

declare dso_local i32 @NODE_TYPE_S(%struct.item*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
