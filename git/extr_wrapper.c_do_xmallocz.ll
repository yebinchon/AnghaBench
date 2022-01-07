; ModuleID = '/home/carl/AnghaBench/git/extr_wrapper.c_do_xmallocz.c'
source_filename = "/home/carl/AnghaBench/git/extr_wrapper.c_do_xmallocz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"Data too large to fit into virtual memory space.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i32)* @do_xmallocz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @do_xmallocz(i64 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @unsigned_add_overflows(i64 %7, i32 1)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %31

15:                                               ; preds = %10
  %16 = call i32 @die(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %17, %2
  %19 = load i64, i64* %4, align 8
  %20 = add i64 %19, 1
  %21 = load i32, i32* %5, align 4
  %22 = call i8* @do_xmalloc(i64 %20, i32 %21)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8 0, i8* %28, align 1
  br label %29

29:                                               ; preds = %25, %18
  %30 = load i8*, i8** %6, align 8
  store i8* %30, i8** %3, align 8
  br label %31

31:                                               ; preds = %29, %13
  %32 = load i8*, i8** %3, align 8
  ret i8* %32
}

declare dso_local i64 @unsigned_add_overflows(i64, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i8* @do_xmalloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
