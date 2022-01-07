; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_cache.c_show_cacheinfo.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_cache.c_show_cacheinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.cpu_cacheinfo = type { i32, %struct.cacheinfo* }
%struct.cacheinfo = type { i32, i64, i32, i32, i32, i64 }

@cpu_online_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"cache%-11d: \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"level=%d \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"type=%s \00", align 1
@cache_type_string = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"scope=%s \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Shared\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Private\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"size=%dK \00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"line_size=%u \00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"associativity=%d\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_cacheinfo(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca %struct.cpu_cacheinfo*, align 8
  %4 = alloca %struct.cacheinfo*, align 8
  %5 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %6 = call i32 @test_facility(i32 34)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %71

9:                                                ; preds = %1
  %10 = load i32, i32* @cpu_online_mask, align 4
  %11 = call i32 @cpumask_any(i32 %10)
  %12 = call %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32 %11)
  store %struct.cpu_cacheinfo* %12, %struct.cpu_cacheinfo** %3, align 8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %68, %9
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %3, align 8
  %16 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %71

19:                                               ; preds = %13
  %20 = load %struct.cpu_cacheinfo*, %struct.cpu_cacheinfo** %3, align 8
  %21 = getelementptr inbounds %struct.cpu_cacheinfo, %struct.cpu_cacheinfo* %20, i32 0, i32 1
  %22 = load %struct.cacheinfo*, %struct.cacheinfo** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %22, i64 %24
  store %struct.cacheinfo* %25, %struct.cacheinfo** %4, align 8
  %26 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %30 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %31 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %35 = load i32*, i32** @cache_type_string, align 8
  %36 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %37 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %43 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %44 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  %49 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %48)
  %50 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %51 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %52 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = ashr i32 %53, 10
  %55 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %54)
  %56 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %57 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %58 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %59)
  %61 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %62 = load %struct.cacheinfo*, %struct.cacheinfo** %4, align 8
  %63 = getelementptr inbounds %struct.cacheinfo, %struct.cacheinfo* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %61, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %64)
  %66 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %67 = call i32 @seq_puts(%struct.seq_file* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %68

68:                                               ; preds = %19
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %13

71:                                               ; preds = %8, %13
  ret void
}

declare dso_local i32 @test_facility(i32) #1

declare dso_local %struct.cpu_cacheinfo* @get_cpu_cacheinfo(i32) #1

declare dso_local i32 @cpumask_any(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
