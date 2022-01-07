; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_mcp_get_clusters_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_mcp_get_clusters_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.mc_cluster* }
%struct.mc_cluster = type { i32, i32, double, double, double, double, i32, i32, i32, i32, i32 }
%struct.connection = type { i32 }

@stats_buff = common dso_local global i8* null, align 8
@CurConf = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [68 x i8] c"Port\09Buckets\09Req*\09TX*\09RX*\09TOut*\09Tot_Req\09Tot_TX\09Tot_RX\09Tot_T/O\09Name\0A\00", align 1
@STATS_BUFF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"%d\09%d\09%.1f\09%.1f\09%.1f\09%.1f\09%lld\09%lld\09%lld\09%lld\09%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcp_get_clusters_stats(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mc_cluster*, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** @stats_buff, align 8
  store i8* %10, i8** %8, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CurConf, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.mc_cluster*, %struct.mc_cluster** %12, align 8
  store %struct.mc_cluster* %13, %struct.mc_cluster** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %16 = load i8*, i8** %8, align 8
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %8, align 8
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %73, %3
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CurConf, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %78

25:                                               ; preds = %19
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** @stats_buff, align 8
  %28 = load i32, i32* @STATS_BUFF_SIZE, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = getelementptr inbounds i8, i8* %30, i64 -1024
  %32 = icmp ult i8* %26, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i8*, i8** %8, align 8
  %36 = load %struct.mc_cluster*, %struct.mc_cluster** %9, align 8
  %37 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.mc_cluster*, %struct.mc_cluster** %9, align 8
  %40 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mc_cluster*, %struct.mc_cluster** %9, align 8
  %43 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %42, i32 0, i32 2
  %44 = load double, double* %43, align 8
  %45 = load %struct.mc_cluster*, %struct.mc_cluster** %9, align 8
  %46 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %45, i32 0, i32 3
  %47 = load double, double* %46, align 8
  %48 = load %struct.mc_cluster*, %struct.mc_cluster** %9, align 8
  %49 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %48, i32 0, i32 4
  %50 = load double, double* %49, align 8
  %51 = load %struct.mc_cluster*, %struct.mc_cluster** %9, align 8
  %52 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %51, i32 0, i32 5
  %53 = load double, double* %52, align 8
  %54 = load %struct.mc_cluster*, %struct.mc_cluster** %9, align 8
  %55 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.mc_cluster*, %struct.mc_cluster** %9, align 8
  %58 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %57, i32 0, i32 9
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.mc_cluster*, %struct.mc_cluster** %9, align 8
  %61 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.mc_cluster*, %struct.mc_cluster** %9, align 8
  %64 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mc_cluster*, %struct.mc_cluster** %9, align 8
  %67 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i8*, i8*, ...) @sprintf(i8* %35, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %41, double %44, double %47, double %50, double %53, i32 %56, i32 %59, i32 %62, i32 %65, i32 %68)
  %70 = load i8*, i8** %8, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %8, align 8
  br label %73

73:                                               ; preds = %25
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  %76 = load %struct.mc_cluster*, %struct.mc_cluster** %9, align 8
  %77 = getelementptr inbounds %struct.mc_cluster, %struct.mc_cluster* %76, i32 1
  store %struct.mc_cluster* %77, %struct.mc_cluster** %9, align 8
  br label %19

78:                                               ; preds = %19
  %79 = load %struct.connection*, %struct.connection** %4, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = load i8*, i8** @stats_buff, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load i8*, i8** @stats_buff, align 8
  %84 = ptrtoint i8* %82 to i64
  %85 = ptrtoint i8* %83 to i64
  %86 = sub i64 %84, %85
  %87 = trunc i64 %86 to i32
  %88 = call i32 @return_one_key(%struct.connection* %79, i8* %80, i8* %81, i32 %87)
  ret i32 %88
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
