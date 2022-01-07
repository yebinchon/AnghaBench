; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_RoQ_init.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_cin.c_RoQ_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }

@cinTable = common dso_local global %struct.TYPE_3__* null, align 8
@currentHandle = common dso_local global i64 0, align 8
@cin = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @RoQ_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RoQ_init() #0 {
  %1 = call i32 (...) @CL_ScaledMilliseconds()
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %3 = load i64, i64* @currentHandle, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i64 %3
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 6
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %7 = load i64, i64* @currentHandle, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 7
  store i32 %1, i32* %9, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %11 = load i64, i64* @currentHandle, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 24, i32* %13, align 4
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 0), align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 6
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 0), align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 7
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %19, 256
  %21 = add nsw i32 %16, %20
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %23 = load i64, i64* @currentHandle, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %27 = load i64, i64* @currentHandle, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %34 = load i64, i64* @currentHandle, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32 30, i32* %36, align 4
  br label %37

37:                                               ; preds = %32, %0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %39 = load i64, i64* @currentHandle, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  store i32 -1, i32* %41, align 4
  %42 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 0), align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 8
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 0), align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 9
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %47, 256
  %49 = add nsw i32 %44, %48
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %51 = load i64, i64* @currentHandle, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  store i32 %49, i32* %53, align 4
  %54 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 0), align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 10
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 0), align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 11
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %59, 256
  %61 = add nsw i32 %56, %60
  %62 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 0), align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 12
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %64, 65536
  %66 = add nsw i32 %61, %65
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %68 = load i64, i64* @currentHandle, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 4
  store i32 %66, i32* %70, align 4
  %71 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 0), align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 14
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cin, i32 0, i32 0), align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 15
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %76, 256
  %78 = add nsw i32 %73, %77
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %80 = load i64, i64* @currentHandle, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 5
  store i32 %78, i32* %82, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %84 = load i64, i64* @currentHandle, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = icmp sgt i32 %87, 65536
  br i1 %88, label %96, label %89

89:                                               ; preds = %37
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cinTable, align 8
  %91 = load i64, i64* @currentHandle, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %89, %37
  br label %97

97:                                               ; preds = %96, %89
  ret void
}

declare dso_local i32 @CL_ScaledMilliseconds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
