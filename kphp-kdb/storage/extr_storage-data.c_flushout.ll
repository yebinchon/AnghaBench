; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_flushout.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-data.c_flushout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rptr = common dso_local global i64 0, align 8
@wptr = common dso_local global i64 0, align 8
@newidx_fds = common dso_local global i32 0, align 4
@newidx_fd = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [49 x i8] c"Write to %s failed (%d of %d) bytes written. %m\0A\00", align 1
@filename_newidx = common dso_local global i32* null, align 8
@io_buff = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @flushout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flushout() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* @rptr, align 8
  %5 = load i64, i64* @wptr, align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %7, label %60

7:                                                ; preds = %0
  %8 = load i64, i64* @wptr, align 8
  %9 = load i64, i64* @rptr, align 8
  %10 = sub nsw i64 %8, %9
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %56, %7
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @newidx_fds, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %59

16:                                               ; preds = %12
  %17 = load i32*, i32** @newidx_fd, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %16
  %24 = load i32*, i32** @newidx_fd, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* @rptr, align 8
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @write(i32 %28, i64 %29, i32 %30)
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* %1, align 4
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %23
  %36 = load i32*, i32** @filename_newidx, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @kprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41, i32 %42)
  %44 = load i32*, i32** @newidx_fd, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @close(i32 %48)
  %50 = load i32*, i32** @newidx_fd, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 -1, i32* %53, align 4
  br label %54

54:                                               ; preds = %35, %23
  br label %55

55:                                               ; preds = %54, %16
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %12

59:                                               ; preds = %12
  br label %60

60:                                               ; preds = %59, %0
  %61 = load i64, i64* @io_buff, align 8
  store i64 %61, i64* @wptr, align 8
  store i64 %61, i64* @rptr, align 8
  ret void
}

declare dso_local i32 @write(i32, i64, i32) #1

declare dso_local i32 @kprintf(i8*, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
