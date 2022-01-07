; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_servers2.c_ArenaServers_Remove.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_servers2.c_ArenaServers_Remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i64, %struct.TYPE_12__*, %struct.TYPE_10__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }

@g_arenaservers = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@MAX_ADDRESSLENGTH = common dso_local global i32 0, align 4
@g_numfavoriteservers = common dso_local global i32 0, align 4
@g_favoriteserverlist = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ArenaServers_Remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ArenaServers_Remove() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g_arenaservers, i32 0, i32 4, i32 1), align 8
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %117

7:                                                ; preds = %0
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g_arenaservers, i32 0, i32 5), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g_arenaservers, i32 0, i32 4, i32 0), align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i64 %9
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %3, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %2, align 8
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %62, %7
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g_arenaservers, i32 0, i32 0), align 8
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %65

18:                                               ; preds = %14
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g_arenaservers, i32 0, i32 3), align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i64 %21
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @Q_stricmp(i32 %27, i32 %25)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %61, label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g_arenaservers, i32 0, i32 0), align 8
  %33 = sub nsw i32 %32, 1
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %30
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g_arenaservers, i32 0, i32 3), align 8
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i64 %38
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g_arenaservers, i32 0, i32 3), align 8
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i64 %43
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g_arenaservers, i32 0, i32 0), align 8
  %46 = load i32, i32* %1, align 4
  %47 = sub nsw i32 %45, %46
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* @MAX_ADDRESSLENGTH, align 4
  %50 = mul nsw i32 %48, %49
  %51 = call i32 @memcpy(%struct.TYPE_12__* %39, %struct.TYPE_12__* %44, i32 %50)
  br label %52

52:                                               ; preds = %35, %30
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g_arenaservers, i32 0, i32 0), align 8
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g_arenaservers, i32 0, i32 0), align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g_arenaservers, i32 0, i32 3), align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g_arenaservers, i32 0, i32 0), align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i64 %57
  %59 = load i32, i32* @MAX_ADDRESSLENGTH, align 4
  %60 = call i32 @memset(%struct.TYPE_12__* %58, i32 0, i32 %59)
  br label %65

61:                                               ; preds = %18
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %1, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %1, align 4
  br label %14

65:                                               ; preds = %52, %14
  store i32 0, i32* %1, align 4
  br label %66

66:                                               ; preds = %109, %65
  %67 = load i32, i32* %1, align 4
  %68 = load i32, i32* @g_numfavoriteservers, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %112

70:                                               ; preds = %66
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g_favoriteserverlist, align 8
  %72 = load i32, i32* %1, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i64 %73
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %76 = icmp eq %struct.TYPE_12__* %74, %75
  br i1 %76, label %77, label %108

77:                                               ; preds = %70
  %78 = load i32, i32* %1, align 4
  %79 = load i32, i32* @g_numfavoriteservers, align 4
  %80 = sub nsw i32 %79, 1
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %77
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g_favoriteserverlist, align 8
  %84 = load i32, i32* %1, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i64 %85
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g_favoriteserverlist, align 8
  %88 = load i32, i32* %1, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i64 %90
  %92 = load i32, i32* @g_numfavoriteservers, align 4
  %93 = load i32, i32* %1, align 4
  %94 = sub nsw i32 %92, %93
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 4
  %98 = trunc i64 %97 to i32
  %99 = call i32 @memcpy(%struct.TYPE_12__* %86, %struct.TYPE_12__* %91, i32 %98)
  br label %100

100:                                              ; preds = %82, %77
  %101 = load i32, i32* @g_numfavoriteservers, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* @g_numfavoriteservers, align 4
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g_favoriteserverlist, align 8
  %104 = load i32, i32* @g_numfavoriteservers, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i64 %105
  %107 = call i32 @memset(%struct.TYPE_12__* %106, i32 0, i32 4)
  br label %112

108:                                              ; preds = %70
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %1, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %1, align 4
  br label %66

112:                                              ; preds = %100, %66
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g_arenaservers, i32 0, i32 0), align 8
  %114 = sext i32 %113 to i64
  store i64 %114, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g_arenaservers, i32 0, i32 1), align 8
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g_arenaservers, i32 0, i32 0), align 8
  %116 = sext i32 %115 to i64
  store i64 %116, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @g_arenaservers, i32 0, i32 2), align 8
  br label %117

117:                                              ; preds = %112, %6
  ret void
}

declare dso_local i32 @Q_stricmp(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
