; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-merge.c_flush_out.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-merge.c_flush_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@woptr = common dso_local global i32 0, align 4
@roptr = common dso_local global i32 0, align 4
@fd = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"error writing to %s: %d bytes written out of %d: %m\0A\00", align 1
@fnames = common dso_local global i8** null, align 8
@obuff = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @flush_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_out() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @woptr, align 4
  %4 = load i32, i32* @roptr, align 4
  %5 = sub nsw i32 %3, %4
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %0
  %9 = load i32*, i32** @fd, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @roptr, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @write(i32 %11, i32 %12, i32 %13)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %8
  %19 = load i32, i32* @stderr, align 4
  %20 = load i8**, i8*** @fnames, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 2
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %18, %8
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* %2, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  br label %32

32:                                               ; preds = %26, %0
  %33 = load i32, i32* @obuff, align 4
  store i32 %33, i32* @roptr, align 4
  store i32 %33, i32* @woptr, align 4
  ret void
}

declare dso_local i32 @write(i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
