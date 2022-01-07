; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_status.c_status_get_cpt.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_status.c_status_get_cpt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }

@.str = private unnamed_addr constant [41 x i8] c"CUR:%d,%d,%d AVG:%d,%d,%d (Min,Hour,Day)\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"CUR:%d,%d,N/A AVG:%d,%d,%d (Min,Hour,Day)\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"CUR:%d,N/A,N/A AVG:%d,%d,%d (Min,Hour,Day)\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"CUR:N/A,N/A,N/A AVG:%d,%d,%d (Min,Hour,Day)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @status_get_cpt(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %3, align 8
  %15 = call i64 @time(i32* null)
  store i64 %15, i64* %4, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = call i32 @status_get_cpt_cur_min(%struct.TYPE_10__* %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = call i32 @status_get_cpt_cur_hour(%struct.TYPE_10__* %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %21 = call i32 @status_get_cpt_cur_day(%struct.TYPE_10__* %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %23 = call i32 @status_get_cpt_avg_min(%struct.TYPE_10__* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %25 = call i32 @status_get_cpt_avg_hour(%struct.TYPE_10__* %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = call i32 @status_get_cpt_avg_day(%struct.TYPE_10__* %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 86400
  %32 = load i64, i64* %4, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %1
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 (i8**, i8*, i32, i32, i32, ...) @hc_asprintf(i8** %5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40)
  br label %76

42:                                               ; preds = %1
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 3600
  %47 = load i64, i64* %4, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 (i8**, i8*, i32, i32, i32, ...) @hc_asprintf(i8** %5, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51, i32 %52, i32 %53, i32 %54)
  br label %75

56:                                               ; preds = %42
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 60
  %61 = load i64, i64* %4, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 (i8**, i8*, i32, i32, i32, ...) @hc_asprintf(i8** %5, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %65, i32 %66, i32 %67)
  br label %74

69:                                               ; preds = %56
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 (i8**, i8*, i32, i32, i32, ...) @hc_asprintf(i8** %5, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %63
  br label %75

75:                                               ; preds = %74, %49
  br label %76

76:                                               ; preds = %75, %34
  %77 = load i8*, i8** %5, align 8
  ret i8* %77
}

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @status_get_cpt_cur_min(%struct.TYPE_10__*) #1

declare dso_local i32 @status_get_cpt_cur_hour(%struct.TYPE_10__*) #1

declare dso_local i32 @status_get_cpt_cur_day(%struct.TYPE_10__*) #1

declare dso_local i32 @status_get_cpt_avg_min(%struct.TYPE_10__*) #1

declare dso_local i32 @status_get_cpt_avg_hour(%struct.TYPE_10__*) #1

declare dso_local i32 @status_get_cpt_avg_day(%struct.TYPE_10__*) #1

declare dso_local i32 @hc_asprintf(i8**, i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
