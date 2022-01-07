; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_get_dir_serialized.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_get_dir_serialized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, %struct.TYPE_6__, %struct.TYPE_5__, i64, i64, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.statfs = type { double, double }

@.str = private unnamed_addr constant [398 x i8] c"a:14:{s:4:\22path\22;s:%d:\22%s\22;s:7:\22binlogs\22;i:%d;s:8:\22disabled\22;i:%d;s:7:\22scanned\22;i:%d;s:19:\22read_last_fail_time\22;i:%d;s:21:\22read_sequential_fails\22;i:%d;s:12:\22read_success\22;d:%lld;s:10:\22read_fails\22;d:%lld;s:20:\22fsync_last_fail_time\22;i:%d;s:22:\22fsync_sequential_fails\22;i:%d;s:13:\22fsync_success\22;d:%lld;s:11:\22fsync_fails\22;d:%lld;s:18:\22free_space_percent\22;d:%.10lf;s:23:\22pending_aio_connections\22;i:%d;}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_7__*)* @get_dir_serialized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dir_serialized(i8* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.statfs, align 8
  %6 = alloca double, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @statfs(i8* %9, %struct.statfs* %5)
  %11 = getelementptr inbounds %struct.statfs, %struct.statfs* %5, i32 0, i32 0
  %12 = load double, double* %11, align 8
  %13 = fmul double 1.000000e+02, %12
  %14 = getelementptr inbounds %struct.statfs, %struct.statfs* %5, i32 0, i32 1
  %15 = load double, double* %14, align 8
  %16 = fdiv double %13, %15
  store double %16, double* %6, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @strlen(i8* %20)
  %22 = trunc i64 %21 to i32
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load double, double* %6, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([398 x i8], [398 x i8]* @.str, i64 0, i64 0), i32 %22, i8* %25, i32 %28, i32 %32, i32 %36, i32 %40, i32 %44, i32 %48, i32 %52, i32 %56, i32 %60, i32 %64, i32 %68, double %69, i32 %72)
  ret i32 %73
}

declare dso_local i32 @statfs(i8*, %struct.statfs*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
