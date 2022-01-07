; ModuleID = '/home/carl/AnghaBench/kphp-kdb/weights/extr_weights-data.c_readin.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/weights/extr_weights-data.c_readin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rptr = common dso_local global i64 0, align 8
@wptr = common dso_local global i64 0, align 8
@Buff = common dso_local global i64 0, align 8
@BUFFSIZE = common dso_local global i64 0, align 8
@Snapshot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @readin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @readin(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp uge i64 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load i64, i64* @rptr, align 8
  %9 = load i64, i64* %3, align 8
  %10 = add i64 %8, %9
  %11 = load i64, i64* @wptr, align 8
  %12 = icmp ule i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i64, i64* @rptr, align 8
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %2, align 8
  br label %55

16:                                               ; preds = %1
  %17 = load i64, i64* @wptr, align 8
  %18 = load i64, i64* @Buff, align 8
  %19 = load i64, i64* @BUFFSIZE, align 8
  %20 = add nsw i64 %18, %19
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i8* null, i8** %2, align 8
  br label %55

23:                                               ; preds = %16
  %24 = load i64, i64* @Buff, align 8
  %25 = load i64, i64* @rptr, align 8
  %26 = load i64, i64* @wptr, align 8
  %27 = load i64, i64* @rptr, align 8
  %28 = sub nsw i64 %26, %27
  %29 = call i32 @memcpy(i64 %24, i64 %25, i64 %28)
  %30 = load i64, i64* @rptr, align 8
  %31 = load i64, i64* @Buff, align 8
  %32 = sub nsw i64 %30, %31
  %33 = load i64, i64* @wptr, align 8
  %34 = sub nsw i64 %33, %32
  store i64 %34, i64* @wptr, align 8
  %35 = load i64, i64* @Buff, align 8
  store i64 %35, i64* @rptr, align 8
  %36 = load i32, i32* @Snapshot, align 4
  %37 = load i64, i64* @wptr, align 8
  %38 = load i64, i64* @Buff, align 8
  %39 = load i64, i64* @BUFFSIZE, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i64, i64* @wptr, align 8
  %42 = sub nsw i64 %40, %41
  %43 = call i64 @kfs_read_file(i32 %36, i64 %37, i64 %42)
  %44 = load i64, i64* @wptr, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* @wptr, align 8
  %46 = load i64, i64* @rptr, align 8
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %46, %47
  %49 = load i64, i64* @wptr, align 8
  %50 = icmp ule i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %23
  %52 = load i64, i64* @rptr, align 8
  %53 = inttoptr i64 %52 to i8*
  store i8* %53, i8** %2, align 8
  br label %55

54:                                               ; preds = %23
  store i8* null, i8** %2, align 8
  br label %55

55:                                               ; preds = %54, %51, %22, %13
  %56 = load i8*, i8** %2, align 8
  ret i8* %56
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i64, i64, i64) #1

declare dso_local i64 @kfs_read_file(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
