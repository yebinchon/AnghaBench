; ModuleID = '/home/carl/AnghaBench/libevent/extr_event.c_event_mm_calloc_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_event.c_event_mm_calloc_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EV_SIZE_MAX = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @event_mm_calloc_(i64 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  store i8* null, i8** %3, align 8
  br label %43

15:                                               ; preds = %11
  br i1 true, label %16, label %35

16:                                               ; preds = %15
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = mul i64 %17, %18
  store i64 %19, i64* %6, align 8
  store i8* null, i8** %7, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @EV_SIZE_MAX, align 8
  %22 = load i64, i64* %5, align 8
  %23 = udiv i64 %21, %22
  %24 = icmp ugt i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %41

26:                                               ; preds = %16
  %27 = load i64, i64* %6, align 8
  %28 = call i8* @mm_malloc_fn_(i64 %27)
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %6, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %32, i8 0, i64 %33, i1 false)
  store i8* %32, i8** %3, align 8
  br label %43

34:                                               ; preds = %26
  br label %40

35:                                               ; preds = %15
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i8* @calloc(i64 %36, i64 %37)
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  store i8* %39, i8** %3, align 8
  br label %43

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %25
  %42 = load i32, i32* @ENOMEM, align 4
  store i32 %42, i32* @errno, align 4
  store i8* null, i8** %3, align 8
  br label %43

43:                                               ; preds = %41, %35, %31, %14
  %44 = load i8*, i8** %3, align 8
  ret i8* %44
}

declare dso_local i8* @mm_malloc_fn_(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @calloc(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
