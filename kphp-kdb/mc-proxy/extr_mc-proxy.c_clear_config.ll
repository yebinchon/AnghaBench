; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_clear_config.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_clear_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc_config = type { i32, i64, %struct.mc_cluster* }
%struct.mc_cluster = type { i32, i64, i64, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"destroying target %s:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_config(%struct.mc_config* %0, i32 %1) #0 {
  %3 = alloca %struct.mc_config*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mc_cluster*, align 8
  store %struct.mc_config* %0, %struct.mc_config** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %103, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.mc_config*, %struct.mc_config** %3, align 8
  %11 = getelementptr inbounds %struct.mc_config, %struct.mc_config* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %106

14:                                               ; preds = %8
  %15 = load %struct.mc_config*, %struct.mc_config** %3, align 8
  %16 = getelementptr inbounds %struct.mc_config, %struct.mc_config* %15, i32 0, i32 2
  %17 = load %struct.mc_cluster*, %struct.mc_cluster** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %17, i64 %19
  store %struct.mc_cluster* %20, %struct.mc_cluster** %7, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %73

23:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %59, %23
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.mc_cluster*, %struct.mc_cluster** %7, align 8
  %27 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %62

30:                                               ; preds = %24
  %31 = load %struct.mc_cluster*, %struct.mc_cluster** %7, align 8
  %32 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %31, i32 0, i32 3
  %33 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %33, i64 %35
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @inet_ntoa(i32 %39)
  %41 = load %struct.mc_cluster*, %struct.mc_cluster** %7, align 8
  %42 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %41, i32 0, i32 3
  %43 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %43, i64 %45
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %49)
  %51 = load %struct.mc_cluster*, %struct.mc_cluster** %7, align 8
  %52 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %51, i32 0, i32 3
  %53 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %53, i64 %55
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = call i32 @destroy_target(%struct.TYPE_3__* %57)
  br label %59

59:                                               ; preds = %30
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %24

62:                                               ; preds = %24
  %63 = load %struct.mc_cluster*, %struct.mc_cluster** %7, align 8
  %64 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %63, i32 0, i32 3
  %65 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %64, align 8
  %66 = load %struct.mc_cluster*, %struct.mc_cluster** %7, align 8
  %67 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @memset(%struct.TYPE_3__** %65, i32 0, i32 %71)
  br label %73

73:                                               ; preds = %62, %14
  %74 = load %struct.mc_cluster*, %struct.mc_cluster** %7, align 8
  %75 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load %struct.mc_cluster*, %struct.mc_cluster** %7, align 8
  %80 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @free(i64 %81)
  %83 = load %struct.mc_cluster*, %struct.mc_cluster** %7, align 8
  %84 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %78, %73
  %86 = load %struct.mc_cluster*, %struct.mc_cluster** %7, align 8
  %87 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %85
  %91 = load %struct.mc_cluster*, %struct.mc_cluster** %7, align 8
  %92 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.mc_cluster*, %struct.mc_cluster** %7, align 8
  %95 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @strlen(i64 %96)
  %98 = add nsw i64 %97, 1
  %99 = call i32 @zfree(i64 %93, i64 %98)
  %100 = load %struct.mc_cluster*, %struct.mc_cluster** %7, align 8
  %101 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %100, i32 0, i32 1
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %90, %85
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %8

106:                                              ; preds = %8
  %107 = load %struct.mc_config*, %struct.mc_config** %3, align 8
  %108 = getelementptr inbounds %struct.mc_config, %struct.mc_config* %107, i32 0, i32 1
  store i64 0, i64* %108, align 8
  %109 = load %struct.mc_config*, %struct.mc_config** %3, align 8
  %110 = getelementptr inbounds %struct.mc_config, %struct.mc_config* %109, i32 0, i32 0
  store i32 0, i32* %110, align 8
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @destroy_target(%struct.TYPE_3__*) #1

declare dso_local i32 @memset(%struct.TYPE_3__**, i32, i32) #1

declare dso_local i32 @free(i64) #1

declare dso_local i32 @zfree(i64, i64) #1

declare dso_local i64 @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
