; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_memcache_write_res.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-engine.c_memcache_write_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@REQ_WAITING = common dso_local global i32 0, align 4
@get_hits = common dso_local global i32 0, align 4
@REQ_RUNNING = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@get_missed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*, i8*, i32)* @memcache_write_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memcache_write_res(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @REQ_WAITING, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32, i32* @get_hits, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @get_hits, align 4
  %14 = load %struct.connection*, %struct.connection** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @return_one_key_int(%struct.connection* %14, i8* %15, i32 2)
  store i32 %16, i32* %4, align 4
  br label %50

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @REQ_RUNNING, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* @get_hits, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @get_hits, align 4
  %24 = load %struct.connection*, %struct.connection** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @return_one_key_int(%struct.connection* %24, i8* %25, i32 3)
  store i32 %26, i32* %4, align 4
  br label %50

27:                                               ; preds = %17
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @EXIT_SUCCESS, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32, i32* @get_hits, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @get_hits, align 4
  %34 = load %struct.connection*, %struct.connection** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @return_one_key_int(%struct.connection* %34, i8* %35, i32 0)
  store i32 %36, i32* %4, align 4
  br label %50

37:                                               ; preds = %27
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @EXIT_FAILURE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* @get_hits, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @get_hits, align 4
  %44 = load %struct.connection*, %struct.connection** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @return_one_key_int(%struct.connection* %44, i8* %45, i32 1)
  store i32 %46, i32* %4, align 4
  br label %50

47:                                               ; preds = %37
  %48 = load i32, i32* @get_missed, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @get_missed, align 4
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %41, %31, %21, %11
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @return_one_key_int(%struct.connection*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
