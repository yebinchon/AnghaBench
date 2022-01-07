; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-buffers.c_free_unused_buffers.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-buffers.c_free_unused_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i32, %struct.TYPE_4__*, %struct.TYPE_4__* }

@NB_MAGIC_HEAD = common dso_local global i64 0, align 8
@NB_MAGIC_BUSYHEAD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_unused_buffers(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 6
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @NB_MAGIC_HEAD, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NB_MAGIC_BUSYHEAD, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %13, %1
  %20 = phi i1 [ true, %1 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %19
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i64 %33, i64* %37, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 4
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %42, %30
  br label %49

49:                                               ; preds = %48, %19
  br label %50

50:                                               ; preds = %64, %49
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %53 = icmp ne %struct.TYPE_4__* %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br label %62

62:                                               ; preds = %54, %50
  %63 = phi i1 [ false, %50 ], [ %61, %54 ]
  br i1 %63, label %64, label %86

64:                                               ; preds = %62
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 6
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  store %struct.TYPE_4__* %67, %struct.TYPE_4__** %4, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 6
  store %struct.TYPE_4__* %67, %struct.TYPE_4__** %69, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 7
  store %struct.TYPE_4__* %70, %struct.TYPE_4__** %72, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = icmp sgt i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %80 = call i32 @free_buffer(%struct.TYPE_4__* %79)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %82, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %85, %struct.TYPE_4__** %3, align 8
  br label %50

86:                                               ; preds = %62
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %89 = icmp eq %struct.TYPE_4__* %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  br label %148

98:                                               ; preds = %86
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 7
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  store %struct.TYPE_4__* %101, %struct.TYPE_4__** %3, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %104 = icmp ne %struct.TYPE_4__* %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  br label %107

107:                                              ; preds = %129, %98
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %110, %113
  br i1 %114, label %115, label %148

115:                                              ; preds = %107
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 7
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  store %struct.TYPE_4__* %118, %struct.TYPE_4__** %4, align 8
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 7
  store %struct.TYPE_4__* %118, %struct.TYPE_4__** %120, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %123 = icmp ne %struct.TYPE_4__* %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %115
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = icmp sgt i32 %127, 1
  br label %129

129:                                              ; preds = %124, %115
  %130 = phi i1 [ false, %115 ], [ %128, %124 ]
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 6
  store %struct.TYPE_4__* %133, %struct.TYPE_4__** %135, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %137 = call i32 @free_buffer(%struct.TYPE_4__* %136)
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %139, align 8
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %142, %struct.TYPE_4__** %3, align 8
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %145 = icmp ne %struct.TYPE_4__* %143, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  br label %107

148:                                              ; preds = %90, %107
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free_buffer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
