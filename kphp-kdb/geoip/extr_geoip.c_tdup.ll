; ModuleID = '/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip.c_tdup.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/geoip/extr_geoip.c_tdup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32, i32, i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i64, i64 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%u.%u.%u.%u\0A\00", align 1
@total = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tdup(%struct.tree* %0) #0 {
  %2 = alloca %struct.tree*, align 8
  store %struct.tree* %0, %struct.tree** %2, align 8
  %3 = load %struct.tree*, %struct.tree** %2, align 8
  %4 = getelementptr inbounds %struct.tree, %struct.tree* %3, i32 0, i32 5
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.tree*, %struct.tree** %2, align 8
  %11 = getelementptr inbounds %struct.tree, %struct.tree* %10, i32 0, i32 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.tree*, %struct.tree** %2, align 8
  %18 = getelementptr inbounds %struct.tree, %struct.tree* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 32
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32, i32* @verbosity, align 4
  %24 = icmp sge i32 %23, 3
  br i1 %24, label %25, label %46

25:                                               ; preds = %1
  %26 = load i32, i32* @stderr, align 4
  %27 = load %struct.tree*, %struct.tree** %2, align 8
  %28 = getelementptr inbounds %struct.tree, %struct.tree* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 24
  %31 = load %struct.tree*, %struct.tree** %2, align 8
  %32 = getelementptr inbounds %struct.tree, %struct.tree* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 16
  %35 = and i32 %34, 255
  %36 = load %struct.tree*, %struct.tree** %2, align 8
  %37 = getelementptr inbounds %struct.tree, %struct.tree* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 8
  %40 = and i32 %39, 255
  %41 = load %struct.tree*, %struct.tree** %2, align 8
  %42 = getelementptr inbounds %struct.tree, %struct.tree* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 255
  %45 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %35, i32 %40, i32 %44)
  br label %46

46:                                               ; preds = %25, %1
  %47 = call i8* @malloc(i32 40)
  %48 = bitcast i8* %47 to %struct.TYPE_3__*
  %49 = load %struct.tree*, %struct.tree** %2, align 8
  %50 = getelementptr inbounds %struct.tree, %struct.tree* %49, i32 0, i32 5
  store %struct.TYPE_3__* %48, %struct.TYPE_3__** %50, align 8
  %51 = load %struct.tree*, %struct.tree** %2, align 8
  %52 = getelementptr inbounds %struct.tree, %struct.tree* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.tree*, %struct.tree** %2, align 8
  %55 = getelementptr inbounds %struct.tree, %struct.tree* %54, i32 0, i32 5
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 8
  %58 = load %struct.tree*, %struct.tree** %2, align 8
  %59 = getelementptr inbounds %struct.tree, %struct.tree* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  %62 = load %struct.tree*, %struct.tree** %2, align 8
  %63 = getelementptr inbounds %struct.tree, %struct.tree* %62, i32 0, i32 5
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i32 %61, i32* %65, align 4
  %66 = load %struct.tree*, %struct.tree** %2, align 8
  %67 = getelementptr inbounds %struct.tree, %struct.tree* %66, i32 0, i32 5
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 6
  store i64 0, i64* %69, align 8
  %70 = load %struct.tree*, %struct.tree** %2, align 8
  %71 = getelementptr inbounds %struct.tree, %struct.tree* %70, i32 0, i32 5
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 5
  store i64 0, i64* %73, align 8
  %74 = load %struct.tree*, %struct.tree** %2, align 8
  %75 = getelementptr inbounds %struct.tree, %struct.tree* %74, i32 0, i32 5
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  store i32 0, i32* %77, align 8
  %78 = load %struct.tree*, %struct.tree** %2, align 8
  %79 = getelementptr inbounds %struct.tree, %struct.tree* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.tree*, %struct.tree** %2, align 8
  %82 = getelementptr inbounds %struct.tree, %struct.tree* %81, i32 0, i32 5
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 4
  store i64 %80, i64* %84, align 8
  %85 = load %struct.tree*, %struct.tree** %2, align 8
  %86 = getelementptr inbounds %struct.tree, %struct.tree* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 31, %87
  %89 = shl i32 1, %88
  %90 = load %struct.tree*, %struct.tree** %2, align 8
  %91 = getelementptr inbounds %struct.tree, %struct.tree* %90, i32 0, i32 5
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  store i32 %89, i32* %93, align 8
  %94 = load %struct.tree*, %struct.tree** %2, align 8
  %95 = getelementptr inbounds %struct.tree, %struct.tree* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.tree*, %struct.tree** %2, align 8
  %98 = getelementptr inbounds %struct.tree, %struct.tree* %97, i32 0, i32 5
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  store i32 %96, i32* %100, align 4
  %101 = call i8* @malloc(i32 40)
  %102 = bitcast i8* %101 to %struct.TYPE_4__*
  %103 = load %struct.tree*, %struct.tree** %2, align 8
  %104 = getelementptr inbounds %struct.tree, %struct.tree* %103, i32 0, i32 4
  store %struct.TYPE_4__* %102, %struct.TYPE_4__** %104, align 8
  %105 = load %struct.tree*, %struct.tree** %2, align 8
  %106 = getelementptr inbounds %struct.tree, %struct.tree* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.tree*, %struct.tree** %2, align 8
  %109 = getelementptr inbounds %struct.tree, %struct.tree* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 31, %110
  %112 = shl i32 1, %111
  %113 = add nsw i32 %107, %112
  %114 = load %struct.tree*, %struct.tree** %2, align 8
  %115 = getelementptr inbounds %struct.tree, %struct.tree* %114, i32 0, i32 4
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store i32 %113, i32* %117, align 8
  %118 = load %struct.tree*, %struct.tree** %2, align 8
  %119 = getelementptr inbounds %struct.tree, %struct.tree* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  %122 = load %struct.tree*, %struct.tree** %2, align 8
  %123 = getelementptr inbounds %struct.tree, %struct.tree* %122, i32 0, i32 4
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  store i32 %121, i32* %125, align 4
  %126 = load %struct.tree*, %struct.tree** %2, align 8
  %127 = getelementptr inbounds %struct.tree, %struct.tree* %126, i32 0, i32 4
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 6
  store i64 0, i64* %129, align 8
  %130 = load %struct.tree*, %struct.tree** %2, align 8
  %131 = getelementptr inbounds %struct.tree, %struct.tree* %130, i32 0, i32 4
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 5
  store i64 0, i64* %133, align 8
  %134 = load %struct.tree*, %struct.tree** %2, align 8
  %135 = getelementptr inbounds %struct.tree, %struct.tree* %134, i32 0, i32 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 2
  store i32 0, i32* %137, align 8
  %138 = load %struct.tree*, %struct.tree** %2, align 8
  %139 = getelementptr inbounds %struct.tree, %struct.tree* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.tree*, %struct.tree** %2, align 8
  %142 = getelementptr inbounds %struct.tree, %struct.tree* %141, i32 0, i32 4
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 4
  store i64 %140, i64* %144, align 8
  %145 = load %struct.tree*, %struct.tree** %2, align 8
  %146 = getelementptr inbounds %struct.tree, %struct.tree* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = sub nsw i32 31, %147
  %149 = shl i32 1, %148
  %150 = load %struct.tree*, %struct.tree** %2, align 8
  %151 = getelementptr inbounds %struct.tree, %struct.tree* %150, i32 0, i32 4
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 2
  store i32 %149, i32* %153, align 8
  %154 = load %struct.tree*, %struct.tree** %2, align 8
  %155 = getelementptr inbounds %struct.tree, %struct.tree* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.tree*, %struct.tree** %2, align 8
  %158 = getelementptr inbounds %struct.tree, %struct.tree* %157, i32 0, i32 4
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 3
  store i32 %156, i32* %160, align 4
  %161 = load %struct.tree*, %struct.tree** %2, align 8
  %162 = getelementptr inbounds %struct.tree, %struct.tree* %161, i32 0, i32 2
  store i64 0, i64* %162, align 8
  %163 = load i32, i32* @total, align 4
  %164 = add nsw i32 %163, 2
  store i32 %164, i32* @total, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i8* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
