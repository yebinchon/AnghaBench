; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_do_connect.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_do_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.lev_copyexec_result_connect = type { i64, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [82 x i8] c"do_connect (c: %p, volume_id: 0x%llx, random_tag: 0x%llx, hostname: %s, pid: %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"get_host_on_connect returns %d.\0A\00", align 1
@now = common dso_local global i32 0, align 4
@LEV_COPYEXEC_RESULT_CONNECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_connect(%struct.connection* %0, i64 %1, i64 %2, i8* %3, i32 %4, %struct.TYPE_4__** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.connection*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.lev_copyexec_result_connect*, align 8
  store %struct.connection* %0, %struct.connection** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.TYPE_4__** %5, %struct.TYPE_4__*** %13, align 8
  %17 = load %struct.connection*, %struct.connection** %8, align 8
  %18 = ptrtoint %struct.connection* %17 to i32
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load i32, i32* %12, align 4
  %23 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 3, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %18, i64 %19, i64 %20, i8* %21, i32 %22)
  %24 = load %struct.connection*, %struct.connection** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %13, align 8
  %30 = call i32 @get_host_on_connect(%struct.connection* %24, i64 %25, i64 %26, i8* %27, i32 %28, %struct.TYPE_4__** %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = call i32 (i32, i8*, i32, ...) @vkprintf(i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %6
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %7, align 4
  br label %84

37:                                               ; preds = %6
  %38 = load i32, i32* @now, align 4
  %39 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %13, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %82

44:                                               ; preds = %37
  %45 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %13, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = icmp ne %struct.TYPE_4__* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @strlen(i8* %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* @LEV_COPYEXEC_RESULT_CONNECT, align 4
  %53 = load i32, i32* %15, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 32, %54
  %56 = trunc i64 %55 to i32
  %57 = call %struct.lev_copyexec_result_connect* @alloc_log_event(i32 %52, i32 %56, i32 0)
  store %struct.lev_copyexec_result_connect* %57, %struct.lev_copyexec_result_connect** %16, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.lev_copyexec_result_connect*, %struct.lev_copyexec_result_connect** %16, align 8
  %60 = getelementptr inbounds %struct.lev_copyexec_result_connect, %struct.lev_copyexec_result_connect* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load %struct.lev_copyexec_result_connect*, %struct.lev_copyexec_result_connect** %16, align 8
  %63 = getelementptr inbounds %struct.lev_copyexec_result_connect, %struct.lev_copyexec_result_connect* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %13, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.lev_copyexec_result_connect*, %struct.lev_copyexec_result_connect** %16, align 8
  %69 = getelementptr inbounds %struct.lev_copyexec_result_connect, %struct.lev_copyexec_result_connect* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load %struct.lev_copyexec_result_connect*, %struct.lev_copyexec_result_connect** %16, align 8
  %72 = getelementptr inbounds %struct.lev_copyexec_result_connect, %struct.lev_copyexec_result_connect* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.lev_copyexec_result_connect*, %struct.lev_copyexec_result_connect** %16, align 8
  %74 = getelementptr inbounds %struct.lev_copyexec_result_connect, %struct.lev_copyexec_result_connect* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @memcpy(i32 %75, i8* %76, i32 %77)
  %79 = load i32, i32* %12, align 4
  %80 = load %struct.lev_copyexec_result_connect*, %struct.lev_copyexec_result_connect** %16, align 8
  %81 = getelementptr inbounds %struct.lev_copyexec_result_connect, %struct.lev_copyexec_result_connect* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %44, %37
  %83 = load i32, i32* %14, align 4
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %82, %35
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i32 @vkprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @get_host_on_connect(%struct.connection*, i64, i64, i8*, i32, %struct.TYPE_4__**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.lev_copyexec_result_connect* @alloc_log_event(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
