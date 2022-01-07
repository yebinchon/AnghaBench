; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_do_detailed_server_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_do_detailed_server_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__* }

@tot_servers = common dso_local global i32 0, align 4
@STAT_SERVER_HASH_PRIME = common dso_local global i32 0, align 4
@HSS = common dso_local global %struct.TYPE_6__** null, align 8
@.str = private unnamed_addr constant [40 x i8] c"cache_do_detailed_server_stats: n = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_do_detailed_server_stats(%struct.TYPE_6__*** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__***, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__**, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32 (i8*, i8*)*, align 8
  store %struct.TYPE_6__*** %0, %struct.TYPE_6__**** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_6__***, %struct.TYPE_6__**** %4, align 8
  store %struct.TYPE_6__** null, %struct.TYPE_6__*** %11, align 8
  %12 = load i32, i32* @tot_servers, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %71

15:                                               ; preds = %2
  %16 = load i32, i32* @tot_servers, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = trunc i64 %18 to i32
  %20 = call %struct.TYPE_6__** @zmalloc0(i32 %19)
  store %struct.TYPE_6__** %20, %struct.TYPE_6__*** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %51, %15
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @STAT_SERVER_HASH_PRIME, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %21
  %26 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @HSS, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %26, i64 %28
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %7, align 8
  br label %31

31:                                               ; preds = %46, %25
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = icmp ne %struct.TYPE_6__* %32, null
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @tot_servers, align 4
  %37 = icmp slt i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %41, i64 %44
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %45, align 8
  br label %46

46:                                               ; preds = %34
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %7, align 8
  br label %31

50:                                               ; preds = %31
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %21

54:                                               ; preds = %21
  store i32 (i8*, i8*)* null, i32 (i8*, i8*)** %10, align 8
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, 3
  switch i32 %56, label %61 [
    i32 0, label %57
    i32 1, label %58
    i32 2, label %59
    i32 3, label %60
  ]

57:                                               ; preds = %54
  store i32 (i8*, i8*)* @cmp_stat_server_id, i32 (i8*, i8*)** %10, align 8
  br label %61

58:                                               ; preds = %54
  store i32 (i8*, i8*)* @cmp_stat_server_access, i32 (i8*, i8*)** %10, align 8
  br label %61

59:                                               ; preds = %54
  store i32 (i8*, i8*)* @cmp_stat_server_files_bytes, i32 (i8*, i8*)** %10, align 8
  br label %61

60:                                               ; preds = %54
  store i32 (i8*, i8*)* @cmp_stat_server_files, i32 (i8*, i8*)** %10, align 8
  br label %61

61:                                               ; preds = %54, %60, %59, %58, %57
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @vkprintf(i32 4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %10, align 8
  %67 = call i32 @qsort(%struct.TYPE_6__** %64, i32 %65, i32 8, i32 (i8*, i8*)* %66)
  %68 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %69 = load %struct.TYPE_6__***, %struct.TYPE_6__**** %4, align 8
  store %struct.TYPE_6__** %68, %struct.TYPE_6__*** %69, align 8
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %61, %14
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.TYPE_6__** @zmalloc0(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cmp_stat_server_id(i8*, i8*) #1

declare dso_local i32 @cmp_stat_server_access(i8*, i8*) #1

declare dso_local i32 @cmp_stat_server_files_bytes(i8*, i8*) #1

declare dso_local i32 @cmp_stat_server_files(i8*, i8*) #1

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local i32 @qsort(%struct.TYPE_6__**, i32, i32, i32 (i8*, i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
