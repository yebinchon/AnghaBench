; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_remove_connection_match.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_remove_connection_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv6 = type { %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_4__** }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.sfe_ipv6_connection_match = type { %struct.TYPE_6__*, %struct.TYPE_6__*, i64, %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfe_ipv6*, %struct.sfe_ipv6_connection_match*)* @sfe_ipv6_remove_connection_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfe_ipv6_remove_connection_match(%struct.sfe_ipv6* %0, %struct.sfe_ipv6_connection_match* %1) #0 {
  %3 = alloca %struct.sfe_ipv6*, align 8
  %4 = alloca %struct.sfe_ipv6_connection_match*, align 8
  %5 = alloca i32, align 4
  store %struct.sfe_ipv6* %0, %struct.sfe_ipv6** %3, align 8
  store %struct.sfe_ipv6_connection_match* %1, %struct.sfe_ipv6_connection_match** %4, align 8
  %6 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %7 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %6, i32 0, i32 3
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %12 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %11, i32 0, i32 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %15 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %14, i32 0, i32 3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %17, align 8
  br label %47

18:                                               ; preds = %2
  %19 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %20 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %23 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %26 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %29 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %32 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %35 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @sfe_ipv6_get_connection_match_hash(i32 %21, i32 %24, i32 %27, i32 %30, i32 %33, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %39 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %38, i32 0, i32 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %3, align 8
  %42 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %43, i64 %45
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %46, align 8
  br label %47

47:                                               ; preds = %18, %10
  %48 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %49 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %48, i32 0, i32 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = icmp ne %struct.TYPE_4__* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %54 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %53, i32 0, i32 3
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %57 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %56, i32 0, i32 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %59, align 8
  br label %60

60:                                               ; preds = %52, %47
  %61 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %62 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %106

65:                                               ; preds = %60
  %66 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %67 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = call i64 @likely(%struct.TYPE_6__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %73 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %76 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store %struct.TYPE_6__* %74, %struct.TYPE_6__** %78, align 8
  br label %85

79:                                               ; preds = %65
  %80 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %81 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %3, align 8
  %84 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %83, i32 0, i32 1
  store %struct.TYPE_6__* %82, %struct.TYPE_6__** %84, align 8
  br label %85

85:                                               ; preds = %79, %71
  %86 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %87 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = call i64 @likely(%struct.TYPE_6__* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %85
  %92 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %93 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %96 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store %struct.TYPE_6__* %94, %struct.TYPE_6__** %98, align 8
  br label %105

99:                                               ; preds = %85
  %100 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %101 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %3, align 8
  %104 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %103, i32 0, i32 0
  store %struct.TYPE_6__* %102, %struct.TYPE_6__** %104, align 8
  br label %105

105:                                              ; preds = %99, %91
  br label %106

106:                                              ; preds = %105, %60
  ret void
}

declare dso_local i32 @sfe_ipv6_get_connection_match_hash(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @likely(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
