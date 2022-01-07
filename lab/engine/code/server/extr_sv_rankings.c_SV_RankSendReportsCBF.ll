; ModuleID = '/home/carl/AnghaBench/lab/engine/code/server/extr_sv_rankings.c_SV_RankSendReportsCBF.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/server/extr_sv_rankings.c_SV_RankSendReportsCBF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"SV_RankSendReportsCBF( %08X, %08X );\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"SV_RankSendReportsCBF: server\0A\00", align 1
@s_server_context = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"SV_RankSendReportsCBF: player\0A\00", align 1
@GR_STATUS_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"SV_RankSendReportsCBF: Unexpected status %s\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"SV_RankSendReportsCBF: WARNING: context == 0\00", align 1
@SV_RankCleanupCBF = common dso_local global i32 0, align 4
@GR_OPT_END = common dso_local global i32 0, align 4
@GR_STATUS_PENDING = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [81 x i8] c"SV_RankSendReportsCBF: Expected GR_STATUS_PENDING from GRankCleanupAsync, got %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i8*)* @SV_RankSendReportsCBF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SV_RankSendReportsCBF(i64* %0, i8* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i64*, i64** %3, align 8
  %9 = icmp ne i64* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i64*, i64** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64* %12, i8* %13)
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %5, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = icmp eq %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i64, i64* @s_server_context, align 8
  store i64 %21, i64* %6, align 8
  br label %27

22:                                               ; preds = %2
  %23 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %22, %19
  %28 = load i64*, i64** %3, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @GR_STATUS_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i64*, i64** %3, align 8
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @SV_RankStatusString(i64 %34)
  %36 = call i32 @SV_RankError(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i64, i64* %6, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = call i32 (i8*, ...) @Com_DPrintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = call i32 @SV_RankCloseContext(%struct.TYPE_3__* %42)
  br label %60

44:                                               ; preds = %37
  %45 = load i64, i64* %6, align 8
  %46 = load i32, i32* @SV_RankCleanupCBF, align 4
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* @GR_OPT_END, align 4
  %49 = call i64 @GRankCleanupAsync(i64 %45, i32 0, i32 %46, i8* %47, i32 %48)
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @GR_STATUS_PENDING, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @SV_RankStatusString(i64 %54)
  %56 = call i32 @SV_RankError(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.5, i64 0, i64 0), i32 %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = call i32 @SV_RankCloseContext(%struct.TYPE_3__* %57)
  br label %59

59:                                               ; preds = %53, %44
  br label %60

60:                                               ; preds = %59, %40
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @Com_DPrintf(i8*, ...) #1

declare dso_local i32 @SV_RankError(i8*, i32) #1

declare dso_local i32 @SV_RankStatusString(i64) #1

declare dso_local i32 @SV_RankCloseContext(%struct.TYPE_3__*) #1

declare dso_local i64 @GRankCleanupAsync(i64, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
