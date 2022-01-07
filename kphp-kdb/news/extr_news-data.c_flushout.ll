; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_flushout.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_flushout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@newidx_fd = common dso_local global i32 0, align 4
@buff = common dso_local global i64 0, align 8
@wptr = common dso_local global i64 0, align 8
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"written %ld bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flushout() #0 {
  %1 = load i32, i32* @newidx_fd, align 4
  %2 = load i64, i64* @buff, align 8
  %3 = load i64, i64* @wptr, align 8
  %4 = load i64, i64* @buff, align 8
  %5 = sub nsw i64 %3, %4
  %6 = call i32 @write(i32 %1, i64 %2, i64 %5)
  %7 = load i64, i64* @verbosity, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %0
  %10 = load i32, i32* @stderr, align 4
  %11 = load i64, i64* @wptr, align 8
  %12 = load i64, i64* @buff, align 8
  %13 = sub nsw i64 %11, %12
  %14 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %13)
  br label %15

15:                                               ; preds = %9, %0
  %16 = call i32 (...) @clearin()
  ret void
}

declare dso_local i32 @write(i32, i64, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i32 @clearin(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
