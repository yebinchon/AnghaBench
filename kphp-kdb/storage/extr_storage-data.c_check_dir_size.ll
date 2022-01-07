; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_check_dir_size.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_check_dir_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, double, i64, i32 }
%struct.statvfs = type { i64, i64, i64, i64 }

@now = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"statvfs (\22%s\22) fail. %m\00", align 1
@statvfs_calls = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [80 x i8] c"path: %s, last_statvfs_time: %d, disk_total_bytes: %lld, disk_free_bytes: %lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_dir_size(%struct.TYPE_3__* %0, double %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca double, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.statvfs, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store double %1, double* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %47

13:                                               ; preds = %3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @now, align 4
  %18 = sub nsw i32 %17, 3600
  %19 = icmp sle i32 %16, %18
  br i1 %19, label %47, label %20

20:                                               ; preds = %13
  %21 = load double, double* %6, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load double, double* %23, align 8
  %25 = fmul double %21, %24
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load double, double* %27, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = sitofp i64 %31 to double
  %33 = fsub double %28, %32
  %34 = load i64, i64* %7, align 8
  %35 = sitofp i64 %34 to double
  %36 = fadd double %33, %35
  %37 = load i32, i32* @now, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %37, %40
  %42 = sext i32 %41 to i64
  %43 = mul nsw i64 %42, 200000000
  %44 = sitofp i64 %43 to double
  %45 = fadd double %36, %44
  %46 = fcmp olt double %25, %45
  br i1 %46, label %47, label %111

47:                                               ; preds = %20, %13, %3
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @statvfs(i32 %50, %struct.statvfs* %8)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %56)
  store i32 0, i32* %4, align 4
  br label %112

58:                                               ; preds = %47
  %59 = load i32, i32* @statvfs_calls, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* @statvfs_calls, align 4
  %61 = load i32, i32* @now, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %8, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %8, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = mul nsw i64 %65, %67
  %69 = sitofp i64 %68 to double
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store double %69, double* %71, align 8
  %72 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %8, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %8, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = mul nsw i64 %73, %75
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load double, double* %86, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %84, double %87, i64 %90)
  %92 = load double, double* %6, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load double, double* %94, align 8
  %96 = fmul double %92, %95
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load double, double* %98, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = sitofp i64 %102 to double
  %104 = fsub double %99, %103
  %105 = load i64, i64* %7, align 8
  %106 = sitofp i64 %105 to double
  %107 = fadd double %104, %106
  %108 = fcmp oge double %96, %107
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 1, i32 0
  store i32 %110, i32* %4, align 4
  br label %112

111:                                              ; preds = %20
  store i32 1, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %58, %53
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i64 @statvfs(i32, %struct.statvfs*) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
