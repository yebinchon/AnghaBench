; ModuleID = '/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-import-dump.c_conv_key.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/pmemcached/extr_pmemcached-import-dump.c_conv_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@split_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unknown split mode!\00", align 1
@split_modulo = common dso_local global i64 0, align 8
@split_rem = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @conv_key(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i64 -1, i64* %4, align 8
  %5 = load i32, i32* @split_mode, align 4
  switch i32 %5, label %41 [
    i32 129, label %6
    i32 130, label %11
    i32 128, label %16
  ]

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 @strlen(i8* %8)
  %10 = call i64 @hash_key(i8* %7, i64 %9)
  store i64 %10, i64* %3, align 8
  br label %47

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = call i64 @strlen(i8* %13)
  %15 = call i64 @extract_num(i8* %12, i64 %14, i32* null)
  store i64 %15, i64* %3, align 8
  br label %47

16:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %17

17:                                               ; preds = %34, %16
  %18 = load i8*, i8** %2, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load i8*, i8** %2, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 46
  br label %31

31:                                               ; preds = %24, %17
  %32 = phi i1 [ false, %17 ], [ %30, %24 ]
  br i1 %32, label %33, label %37

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %4, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %4, align 8
  br label %17

37:                                               ; preds = %31
  %38 = load i8*, i8** %2, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @hash_key(i8* %38, i64 %39)
  store i64 %40, i64* %3, align 8
  br label %47

41:                                               ; preds = %1
  br i1 true, label %42, label %43

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42, %41
  %44 = phi i1 [ false, %41 ], [ false, %42 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  br label %47

47:                                               ; preds = %43, %37, %11, %6
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* @split_modulo, align 8
  %50 = urem i64 %48, %49
  %51 = load i64, i64* @split_rem, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 0, i32 -1
  ret i32 %54
}

declare dso_local i64 @hash_key(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @extract_num(i8*, i64, i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
