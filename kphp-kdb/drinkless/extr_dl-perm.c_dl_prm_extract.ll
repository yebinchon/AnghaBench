; ModuleID = '/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-perm.c_dl_prm_extract.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/drinkless/extr_dl-perm.c_dl_prm_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, %struct.TYPE_8__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dl_prm_extract(%struct.TYPE_8__* %0, %struct.TYPE_8__** %1, %struct.TYPE_8__** %2, %struct.TYPE_8__** %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_8__**, align 8
  %8 = alloca %struct.TYPE_8__**, align 8
  %9 = alloca %struct.TYPE_8__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %7, align 8
  store %struct.TYPE_8__** %2, %struct.TYPE_8__*** %8, align 8
  store %struct.TYPE_8__** %3, %struct.TYPE_8__*** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %12, align 8
  br label %18

18:                                               ; preds = %123, %5
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = icmp ne %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %124

21:                                               ; preds = %18
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 5
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = call i32 @LEN(%struct.TYPE_8__* %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %21
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 4
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %32, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %12, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %35, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 5
  store %struct.TYPE_8__** %37, %struct.TYPE_8__*** %8, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 5
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %6, align 8
  br label %123

41:                                               ; preds = %21
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %10, align 4
  %44 = sub nsw i32 %43, %42
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %48, %51
  %53 = icmp slt i32 %45, %52
  br i1 %53, label %54, label %102

54:                                               ; preds = %41
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 5
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  store %struct.TYPE_8__* %57, %struct.TYPE_8__** %58, align 8
  %59 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = icmp ne %struct.TYPE_8__* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %54
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %64 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 4
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %66, align 8
  br label %67

67:                                               ; preds = %62, %54
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %71, align 8
  %72 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = icmp ne %struct.TYPE_8__* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %67
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %77 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 4
  store %struct.TYPE_8__* %76, %struct.TYPE_8__** %79, align 8
  br label %80

80:                                               ; preds = %75, %67
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %82, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %84, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %86, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 5
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %88, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %91, %94
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %99 = call i32 @dl_prm_fix(%struct.TYPE_8__* %98)
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %101 = call i32 @dl_prm_fix(%struct.TYPE_8__* %100)
  br label %126

102:                                              ; preds = %41
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %105, %108
  %110 = load i32, i32* %10, align 4
  %111 = sub nsw i32 %110, %109
  store i32 %111, i32* %10, align 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 4
  store %struct.TYPE_8__* %112, %struct.TYPE_8__** %114, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %115, %struct.TYPE_8__** %11, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %117 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  store %struct.TYPE_8__* %116, %struct.TYPE_8__** %117, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 3
  store %struct.TYPE_8__** %119, %struct.TYPE_8__*** %7, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 3
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  store %struct.TYPE_8__* %122, %struct.TYPE_8__** %6, align 8
  br label %123

123:                                              ; preds = %102, %29
  br label %18

124:                                              ; preds = %18
  %125 = call i32 @assert(i32 0)
  br label %126

126:                                              ; preds = %124, %80
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @LEN(%struct.TYPE_8__*) #1

declare dso_local i32 @dl_prm_fix(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
