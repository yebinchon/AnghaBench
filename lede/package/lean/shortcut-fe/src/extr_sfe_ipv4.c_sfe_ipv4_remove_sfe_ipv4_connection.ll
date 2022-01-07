; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_remove_sfe_ipv4_connection.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv4.c_sfe_ipv4_remove_sfe_ipv4_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv4 = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_5__** }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.sfe_ipv4_connection = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfe_ipv4*, %struct.sfe_ipv4_connection*)* @sfe_ipv4_remove_sfe_ipv4_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfe_ipv4_remove_sfe_ipv4_connection(%struct.sfe_ipv4* %0, %struct.sfe_ipv4_connection* %1) #0 {
  %3 = alloca %struct.sfe_ipv4*, align 8
  %4 = alloca %struct.sfe_ipv4_connection*, align 8
  %5 = alloca i32, align 4
  store %struct.sfe_ipv4* %0, %struct.sfe_ipv4** %3, align 8
  store %struct.sfe_ipv4_connection* %1, %struct.sfe_ipv4_connection** %4, align 8
  %6 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %3, align 8
  %7 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %8 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %7, i32 0, i32 10
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @sfe_ipv4_remove_sfe_ipv4_connection_match(%struct.sfe_ipv4* %6, i32 %9)
  %11 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %3, align 8
  %12 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %13 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sfe_ipv4_remove_sfe_ipv4_connection_match(%struct.sfe_ipv4* %11, i32 %14)
  %16 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %17 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %22 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %21, i32 0, i32 3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %25 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %27, align 8
  br label %54

28:                                               ; preds = %2
  %29 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %30 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %33 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %36 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %39 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %42 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @sfe_ipv4_get_connection_hash(i32 %31, i32 %34, i32 %37, i32 %40, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %46 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %45, i32 0, i32 3
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %3, align 8
  %49 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %48, i32 0, i32 3
  %50 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %50, i64 %52
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %53, align 8
  br label %54

54:                                               ; preds = %28, %20
  %55 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %56 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %55, i32 0, i32 3
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = icmp ne %struct.TYPE_5__* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %61 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %60, i32 0, i32 2
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %64 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %63, i32 0, i32 3
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %66, align 8
  br label %67

67:                                               ; preds = %59, %54
  %68 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %69 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = icmp ne %struct.TYPE_8__* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %74 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %73, i32 0, i32 1
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %77 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** %79, align 8
  br label %86

80:                                               ; preds = %67
  %81 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %82 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %3, align 8
  %85 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %84, i32 0, i32 2
  store %struct.TYPE_7__* %83, %struct.TYPE_7__** %85, align 8
  br label %86

86:                                               ; preds = %80, %72
  %87 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %88 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = icmp ne %struct.TYPE_7__* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %93 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %92, i32 0, i32 0
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %96 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %95, i32 0, i32 1
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  store %struct.TYPE_8__* %94, %struct.TYPE_8__** %98, align 8
  br label %105

99:                                               ; preds = %86
  %100 = load %struct.sfe_ipv4_connection*, %struct.sfe_ipv4_connection** %4, align 8
  %101 = getelementptr inbounds %struct.sfe_ipv4_connection, %struct.sfe_ipv4_connection* %100, i32 0, i32 0
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %3, align 8
  %104 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %103, i32 0, i32 1
  store %struct.TYPE_8__* %102, %struct.TYPE_8__** %104, align 8
  br label %105

105:                                              ; preds = %99, %91
  %106 = load %struct.sfe_ipv4*, %struct.sfe_ipv4** %3, align 8
  %107 = getelementptr inbounds %struct.sfe_ipv4, %struct.sfe_ipv4* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %107, align 8
  ret void
}

declare dso_local i32 @sfe_ipv4_remove_sfe_ipv4_connection_match(%struct.sfe_ipv4*, i32) #1

declare dso_local i32 @sfe_ipv4_get_connection_hash(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
