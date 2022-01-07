; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-merge-extension.c_free_gather.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-merge-extension.c_free_gather.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gather_data = type { i32, i32, i64, i64, %struct.gather_data*, i64, %struct.gather_data*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, %struct.gather_data* }

@GD_MAGIC_MASK = common dso_local global i32 0, align 4
@GD_MAGIC = common dso_local global i32 0, align 4
@active_gathers = common dso_local global i64 0, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Gather structure %p freed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gather_data*)* @free_gather to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_gather(%struct.gather_data* %0) #0 {
  %2 = alloca %struct.gather_data*, align 8
  %3 = alloca i32, align 4
  store %struct.gather_data* %0, %struct.gather_data** %2, align 8
  %4 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %5 = icmp ne %struct.gather_data* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %103

7:                                                ; preds = %1
  %8 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %9 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @GD_MAGIC_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @GD_MAGIC, align 4
  %14 = icmp eq i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %18 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %17, i32 0, i32 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %7
  %22 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %23 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %22, i32 0, i32 8
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @free_gather_extra(i64 %24)
  br label %26

26:                                               ; preds = %21, %7
  %27 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %28 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load i64, i64* @active_gathers, align 8
  %30 = icmp sgt i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* @verbosity, align 4
  %34 = icmp sge i32 %33, 2
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load i32, i32* @stderr, align 4
  %37 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %38 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.gather_data* %37)
  br label %39

39:                                               ; preds = %35, %26
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %76, %39
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %43 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %79

46:                                               ; preds = %40
  %47 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %48 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %47, i32 0, i32 7
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %46
  %57 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %58 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %57, i32 0, i32 7
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load %struct.gather_data*, %struct.gather_data** %63, align 8
  %65 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %66 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %65, i32 0, i32 7
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 4
  %74 = call i32 @zzfree(%struct.gather_data* %64, i64 %73)
  br label %75

75:                                               ; preds = %56, %46
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %40

79:                                               ; preds = %40
  %80 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %81 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %80, i32 0, i32 6
  %82 = load %struct.gather_data*, %struct.gather_data** %81, align 8
  %83 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %84 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  %87 = call i32 @zzfree(%struct.gather_data* %82, i64 %86)
  %88 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %89 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %88, i32 0, i32 4
  %90 = load %struct.gather_data*, %struct.gather_data** %89, align 8
  %91 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %92 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 1
  %95 = call i32 @zzfree(%struct.gather_data* %90, i64 %94)
  %96 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %97 = load %struct.gather_data*, %struct.gather_data** %2, align 8
  %98 = getelementptr inbounds %struct.gather_data, %struct.gather_data* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @zzfree(%struct.gather_data* %96, i64 %99)
  %101 = load i64, i64* @active_gathers, align 8
  %102 = add nsw i64 %101, -1
  store i64 %102, i64* @active_gathers, align 8
  br label %103

103:                                              ; preds = %79, %6
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free_gather_extra(i64) #1

declare dso_local i32 @fprintf(i32, i8*, %struct.gather_data*) #1

declare dso_local i32 @zzfree(%struct.gather_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
