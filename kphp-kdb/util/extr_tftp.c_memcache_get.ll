; ModuleID = '/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_memcache_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/util/extr_tftp.c_memcache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@stats_buff = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_get(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @get_at_prefix_length(i8* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  store i8* %16, i8** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sge i32 %20, 5
  br i1 %21, label %22, label %38

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @memcmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = load %struct.connection*, %struct.connection** %5, align 8
  %28 = call i32 @tftp_prepare_stats(%struct.connection* %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.connection*, %struct.connection** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = sub i64 0, %32
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = load i32, i32* @stats_buff, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @return_one_key(%struct.connection* %29, i8* %34, i32 %35, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %39

38:                                               ; preds = %22, %3
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %26
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @get_at_prefix_length(i8*, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @tftp_prepare_stats(%struct.connection*) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
