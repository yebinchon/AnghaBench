; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_set_connect.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-data.c_set_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_copyexec_result_connect = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32 }

@now = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [99 x i8] c"set_connect: hostname didn't matched. Old hostname = %s, new hostname = %.*s. (log_cur_pos: %lld)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lev_copyexec_result_connect*)* @set_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_connect(%struct.lev_copyexec_result_connect* %0) #0 {
  %2 = alloca %struct.lev_copyexec_result_connect*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lev_copyexec_result_connect* %0, %struct.lev_copyexec_result_connect** %2, align 8
  %6 = load %struct.lev_copyexec_result_connect*, %struct.lev_copyexec_result_connect** %2, align 8
  %7 = getelementptr inbounds %struct.lev_copyexec_result_connect, %struct.lev_copyexec_result_connect* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.TYPE_3__* @get_host_by_random_tag(i32 %8, i32 1)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %3, align 8
  %10 = load %struct.lev_copyexec_result_connect*, %struct.lev_copyexec_result_connect** %2, align 8
  %11 = getelementptr inbounds %struct.lev_copyexec_result_connect, %struct.lev_copyexec_result_connect* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load %struct.lev_copyexec_result_connect*, %struct.lev_copyexec_result_connect** %2, align 8
  %16 = getelementptr inbounds %struct.lev_copyexec_result_connect, %struct.lev_copyexec_result_connect* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load %struct.lev_copyexec_result_connect*, %struct.lev_copyexec_result_connect** %2, align 8
  %21 = getelementptr inbounds %struct.lev_copyexec_result_connect, %struct.lev_copyexec_result_connect* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @now, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.lev_copyexec_result_connect*, %struct.lev_copyexec_result_connect** %2, align 8
  %29 = getelementptr inbounds %struct.lev_copyexec_result_connect, %struct.lev_copyexec_result_connect* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @strlen(i64 %38)
  %40 = trunc i64 %39 to i32
  br label %42

41:                                               ; preds = %1
  br label %42

42:                                               ; preds = %41, %35
  %43 = phi i32 [ %40, %35 ], [ -1, %41 ]
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %57, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.lev_copyexec_result_connect*, %struct.lev_copyexec_result_connect** %2, align 8
  %52 = getelementptr inbounds %struct.lev_copyexec_result_connect, %struct.lev_copyexec_result_connect* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i64 @memcmp(i64 %50, i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %89

57:                                               ; preds = %47, %42
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.lev_copyexec_result_connect*, %struct.lev_copyexec_result_connect** %2, align 8
  %67 = getelementptr inbounds %struct.lev_copyexec_result_connect, %struct.lev_copyexec_result_connect* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.lev_copyexec_result_connect*, %struct.lev_copyexec_result_connect** %2, align 8
  %70 = getelementptr inbounds %struct.lev_copyexec_result_connect, %struct.lev_copyexec_result_connect* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (...) @log_cur_pos()
  %73 = call i32 @kprintf(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i64 %65, i32 %68, i32 %71, i32 %72)
  %74 = call i32 @exit(i32 1) #3
  unreachable

75:                                               ; preds = %57
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  %78 = call i64 @zmalloc0(i32 %77)
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.lev_copyexec_result_connect*, %struct.lev_copyexec_result_connect** %2, align 8
  %85 = getelementptr inbounds %struct.lev_copyexec_result_connect, %struct.lev_copyexec_result_connect* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @memcpy(i64 %83, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %75, %47
  ret i32 0
}

declare dso_local %struct.TYPE_3__* @get_host_by_random_tag(i32, i32) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i64 @memcmp(i64, i32, i32) #1

declare dso_local i32 @kprintf(i8*, i64, i32, i32, i32) #1

declare dso_local i32 @log_cur_pos(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @zmalloc0(i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
