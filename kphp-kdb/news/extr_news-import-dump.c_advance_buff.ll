; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-import-dump.c_advance_buff.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-import-dump.c_advance_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@import_buff = common dso_local global i64 0, align 8
@rptr = common dso_local global i64 0, align 8
@rend = common dso_local global i64 0, align 8
@import_fd = common dso_local global i32 0, align 4
@IMPORT_BUFF_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @advance_buff() #0 {
  %1 = load i64, i64* @import_buff, align 8
  %2 = load i64, i64* @rptr, align 8
  %3 = load i64, i64* @rend, align 8
  %4 = load i64, i64* @rptr, align 8
  %5 = sub nsw i64 %3, %4
  %6 = call i32 @memmove(i64 %1, i64 %2, i64 %5)
  %7 = load i64, i64* @rptr, align 8
  %8 = load i64, i64* @import_buff, align 8
  %9 = sub nsw i64 %7, %8
  %10 = load i64, i64* @rend, align 8
  %11 = sub nsw i64 %10, %9
  store i64 %11, i64* @rend, align 8
  %12 = load i64, i64* @import_buff, align 8
  store i64 %12, i64* @rptr, align 8
  %13 = load i32, i32* @import_fd, align 4
  %14 = load i64, i64* @rend, align 8
  %15 = load i64, i64* @import_buff, align 8
  %16 = load i64, i64* @IMPORT_BUFF_SIZE, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i64, i64* @rend, align 8
  %19 = sub nsw i64 %17, %18
  %20 = call i64 @read(i32 %13, i64 %14, i64 %19)
  %21 = load i64, i64* @rend, align 8
  %22 = add nsw i64 %21, %20
  store i64 %22, i64* @rend, align 8
  ret void
}

declare dso_local i32 @memmove(i64, i64, i64) #1

declare dso_local i64 @read(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
