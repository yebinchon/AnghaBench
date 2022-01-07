; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_get_watchcat_key.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_get_watchcat_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@my_verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"name = %s\0A\00", align 1
@Q_WATCHCAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_watchcat_key(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @watchcat_query_hash(i8* %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = icmp eq i64 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %46

18:                                               ; preds = %4
  %19 = load i64, i64* %10, align 8
  %20 = call i8* @get_watchcat_s(i64 %19)
  store i8* %20, i8** %11, align 8
  %21 = load i32, i32* @my_verbosity, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @stderr, align 4
  %25 = load i8*, i8** %11, align 8
  %26 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i8*, i8** %11, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @Q_WATCHCAT, align 4
  %34 = call i8* @get_timestamp_key(i8* %28, i32 %29, i32 %30, i32 %31, i8* %32, i32 %33)
  store i8* %34, i8** %12, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = call i64 @memcmp(i8* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %27
  %40 = load i64, i64* %10, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @update_watchcat(i64 %40, i32 %41, i8* %42)
  br label %44

44:                                               ; preds = %39, %27
  %45 = load i8*, i8** %12, align 8
  store i8* %45, i8** %5, align 8
  br label %46

46:                                               ; preds = %44, %17
  %47 = load i8*, i8** %5, align 8
  ret i8* %47
}

declare dso_local i64 @watchcat_query_hash(i8*) #1

declare dso_local i8* @get_watchcat_s(i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @get_timestamp_key(i8*, i32, i32, i32, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @update_watchcat(i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
