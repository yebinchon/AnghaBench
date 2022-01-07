; ModuleID = '/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip_v6.c_tdup.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip_v6.c_tdup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i64, i64, i64, i64, i32 }
%struct.TYPE_3__ = type { i32, i64, i64, i64, i64, i32 }

@total = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tdup(%struct.tree* %0) #0 {
  %2 = alloca %struct.tree*, align 8
  store %struct.tree* %0, %struct.tree** %2, align 8
  %3 = load %struct.tree*, %struct.tree** %2, align 8
  %4 = getelementptr inbounds %struct.tree, %struct.tree* %3, i32 0, i32 2
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.tree*, %struct.tree** %2, align 8
  %11 = getelementptr inbounds %struct.tree, %struct.tree* %10, i32 0, i32 3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.tree*, %struct.tree** %2, align 8
  %18 = getelementptr inbounds %struct.tree, %struct.tree* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 128
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = call i8* @malloc(i32 40)
  %24 = bitcast i8* %23 to %struct.TYPE_4__*
  %25 = load %struct.tree*, %struct.tree** %2, align 8
  %26 = getelementptr inbounds %struct.tree, %struct.tree* %25, i32 0, i32 2
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %26, align 8
  %27 = load %struct.tree*, %struct.tree** %2, align 8
  %28 = getelementptr inbounds %struct.tree, %struct.tree* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.tree*, %struct.tree** %2, align 8
  %31 = getelementptr inbounds %struct.tree, %struct.tree* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 5
  store i32 %29, i32* %33, align 8
  %34 = load %struct.tree*, %struct.tree** %2, align 8
  %35 = getelementptr inbounds %struct.tree, %struct.tree* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  %38 = load %struct.tree*, %struct.tree** %2, align 8
  %39 = getelementptr inbounds %struct.tree, %struct.tree* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 8
  %42 = load %struct.tree*, %struct.tree** %2, align 8
  %43 = getelementptr inbounds %struct.tree, %struct.tree* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = load %struct.tree*, %struct.tree** %2, align 8
  %47 = getelementptr inbounds %struct.tree, %struct.tree* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load %struct.tree*, %struct.tree** %2, align 8
  %51 = getelementptr inbounds %struct.tree, %struct.tree* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.tree*, %struct.tree** %2, align 8
  %55 = getelementptr inbounds %struct.tree, %struct.tree* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.tree*, %struct.tree** %2, align 8
  %58 = getelementptr inbounds %struct.tree, %struct.tree* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  store i64 %56, i64* %60, align 8
  %61 = load %struct.tree*, %struct.tree** %2, align 8
  %62 = getelementptr inbounds %struct.tree, %struct.tree* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 127, %63
  %65 = call i64 @deg2(i32 %64)
  %66 = load %struct.tree*, %struct.tree** %2, align 8
  %67 = getelementptr inbounds %struct.tree, %struct.tree* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i64 %65, i64* %69, align 8
  %70 = call i8* @malloc(i32 40)
  %71 = bitcast i8* %70 to %struct.TYPE_3__*
  %72 = load %struct.tree*, %struct.tree** %2, align 8
  %73 = getelementptr inbounds %struct.tree, %struct.tree* %72, i32 0, i32 3
  store %struct.TYPE_3__* %71, %struct.TYPE_3__** %73, align 8
  %74 = load %struct.tree*, %struct.tree** %2, align 8
  %75 = getelementptr inbounds %struct.tree, %struct.tree* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.tree*, %struct.tree** %2, align 8
  %78 = getelementptr inbounds %struct.tree, %struct.tree* %77, i32 0, i32 3
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 5
  store i32 %76, i32* %80, align 8
  %81 = load %struct.tree*, %struct.tree** %2, align 8
  %82 = getelementptr inbounds %struct.tree, %struct.tree* %81, i32 0, i32 3
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 5
  %85 = load %struct.tree*, %struct.tree** %2, align 8
  %86 = getelementptr inbounds %struct.tree, %struct.tree* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 127, %87
  %89 = call i32 @set_bit(i32* %84, i32 %88)
  %90 = load %struct.tree*, %struct.tree** %2, align 8
  %91 = getelementptr inbounds %struct.tree, %struct.tree* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  %94 = load %struct.tree*, %struct.tree** %2, align 8
  %95 = getelementptr inbounds %struct.tree, %struct.tree* %94, i32 0, i32 3
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  store i32 %93, i32* %97, align 8
  %98 = load %struct.tree*, %struct.tree** %2, align 8
  %99 = getelementptr inbounds %struct.tree, %struct.tree* %98, i32 0, i32 3
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 4
  store i64 0, i64* %101, align 8
  %102 = load %struct.tree*, %struct.tree** %2, align 8
  %103 = getelementptr inbounds %struct.tree, %struct.tree* %102, i32 0, i32 3
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  store i64 0, i64* %105, align 8
  %106 = load %struct.tree*, %struct.tree** %2, align 8
  %107 = getelementptr inbounds %struct.tree, %struct.tree* %106, i32 0, i32 3
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  store i64 0, i64* %109, align 8
  %110 = load %struct.tree*, %struct.tree** %2, align 8
  %111 = getelementptr inbounds %struct.tree, %struct.tree* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.tree*, %struct.tree** %2, align 8
  %114 = getelementptr inbounds %struct.tree, %struct.tree* %113, i32 0, i32 3
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  store i64 %112, i64* %116, align 8
  %117 = load %struct.tree*, %struct.tree** %2, align 8
  %118 = getelementptr inbounds %struct.tree, %struct.tree* %117, i32 0, i32 2
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.tree*, %struct.tree** %2, align 8
  %123 = getelementptr inbounds %struct.tree, %struct.tree* %122, i32 0, i32 3
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  store i64 %121, i64* %125, align 8
  %126 = load %struct.tree*, %struct.tree** %2, align 8
  %127 = getelementptr inbounds %struct.tree, %struct.tree* %126, i32 0, i32 1
  store i64 0, i64* %127, align 8
  %128 = load i32, i32* @total, align 4
  %129 = add nsw i32 %128, 2
  store i32 %129, i32* @total, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @deg2(i32) #1

declare dso_local i32 @set_bit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
