; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_bgzf.c_check_header.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_bgzf.c_check_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @check_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_header(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 31
  br i1 %6, label %7, label %43

7:                                                ; preds = %1
  %8 = load i32*, i32** %2, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 139
  br i1 %11, label %12, label %43

12:                                               ; preds = %7
  %13 = load i32*, i32** %2, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 8
  br i1 %16, label %17, label %43

17:                                               ; preds = %12
  %18 = load i32*, i32** %2, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 3
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %17
  %24 = load i32*, i32** %2, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 10
  %26 = call i32 @unpackInt16(i32* %25)
  %27 = icmp eq i32 %26, 6
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load i32*, i32** %2, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 12
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 66
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i32*, i32** %2, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 13
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 67
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32*, i32** %2, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 14
  %41 = call i32 @unpackInt16(i32* %40)
  %42 = icmp eq i32 %41, 2
  br label %43

43:                                               ; preds = %38, %33, %28, %23, %17, %12, %7, %1
  %44 = phi i1 [ false, %33 ], [ false, %28 ], [ false, %23 ], [ false, %17 ], [ false, %12 ], [ false, %7 ], [ false, %1 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  ret i32 %45
}

declare dso_local i32 @unpackInt16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
