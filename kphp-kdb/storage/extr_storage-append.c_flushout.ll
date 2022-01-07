; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-append.c_flushout.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-append.c_flushout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rptr = common dso_local global i64 0, align 8
@wptr = common dso_local global i64 0, align 8
@wfd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"write (%d, %p, %d) fail, written %d bytes, %m\0A\00", align 1
@Buff = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @flushout() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  br label %4

4:                                                ; preds = %32, %0
  %5 = load i64, i64* @rptr, align 8
  %6 = load i64, i64* @wptr, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %39

8:                                                ; preds = %4
  %9 = load i64, i64* @wptr, align 8
  %10 = load i64, i64* @rptr, align 8
  %11 = sub nsw i64 %9, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @wfd, align 4
  %14 = load i64, i64* @rptr, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @write(i32 %13, i64 %14, i32 %15)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %8
  %21 = load i32, i32* @wfd, align 4
  %22 = load i64, i64* @rptr, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @kprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %21, i64 %22, i32 %23, i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %20
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @rptr, align 8
  %36 = add nsw i64 %35, %34
  store i64 %36, i64* @rptr, align 8
  br label %4

37:                                               ; preds = %28, %20
  store i32 -1, i32* %1, align 4
  br label %41

38:                                               ; preds = %8
  br label %39

39:                                               ; preds = %38, %4
  %40 = load i64, i64* @Buff, align 8
  store i64 %40, i64* @wptr, align 8
  store i64 %40, i64* @rptr, align 8
  store i32 0, i32* %1, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i32 @write(i32, i64, i32) #1

declare dso_local i32 @kprintf(i8*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
