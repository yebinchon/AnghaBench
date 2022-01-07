; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_flushout.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_flushout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wptr = common dso_local global i64 0, align 8
@wptr0 = common dso_local global i64 0, align 8
@write_pos = common dso_local global i32 0, align 4
@metafile_pos = common dso_local global i32 0, align 4
@rptr = common dso_local global i64 0, align 8
@newidx_fd = common dso_local global i32 0, align 4
@SWS = common dso_local global i32 0, align 4
@Buff = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flushout() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @wptr, align 8
  %3 = load i64, i64* @wptr0, align 8
  %4 = icmp sgt i64 %2, %3
  br i1 %4, label %5, label %16

5:                                                ; preds = %0
  %6 = load i64, i64* @wptr, align 8
  %7 = load i64, i64* @wptr0, align 8
  %8 = sub nsw i64 %6, %7
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @write_pos, align 4
  %12 = add nsw i32 %11, %10
  store i32 %12, i32* @write_pos, align 4
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @metafile_pos, align 4
  %15 = add nsw i32 %14, %13
  store i32 %15, i32* @metafile_pos, align 4
  br label %16

16:                                               ; preds = %5, %0
  %17 = load i64, i64* @rptr, align 8
  %18 = load i64, i64* @wptr, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load i64, i64* @wptr, align 8
  %22 = load i64, i64* @rptr, align 8
  %23 = sub nsw i64 %21, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* @newidx_fd, align 4
  %26 = icmp sge i32 %25, 1
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load i32, i32* @newidx_fd, align 4
  %29 = load i64, i64* @rptr, align 8
  %30 = load i32, i32* %1, align 4
  %31 = call i32 @write(i32 %28, i64 %29, i32 %30)
  %32 = load i32, i32* %1, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  br label %40

36:                                               ; preds = %20
  %37 = load i64, i64* @rptr, align 8
  %38 = load i32, i32* %1, align 4
  %39 = call i32 @kfs_sws_write(i32* @SWS, i64 %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %27
  br label %41

41:                                               ; preds = %40, %16
  %42 = load i64, i64* @Buff, align 8
  store i64 %42, i64* @wptr0, align 8
  store i64 %42, i64* @wptr, align 8
  store i64 %42, i64* @rptr, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @write(i32, i64, i32) #1

declare dso_local i32 @kfs_sws_write(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
