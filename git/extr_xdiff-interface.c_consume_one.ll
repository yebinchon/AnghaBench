; ModuleID = '/home/carl/AnghaBench/git/extr_xdiff-interface.c_consume_one.c'
source_filename = "/home/carl/AnghaBench/git/extr_xdiff-interface.c_consume_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdiff_emit_state = type { i32, i32 (i32, i8*, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64)* @consume_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @consume_one(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xdiff_emit_state*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.xdiff_emit_state*
  store %struct.xdiff_emit_state* %11, %struct.xdiff_emit_state** %7, align 8
  br label %12

12:                                               ; preds = %30, %3
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %12
  %16 = load i8*, i8** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i8* @memchr(i8* %16, i8 signext 10, i64 %17)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i64, i64* %6, align 8
  br label %30

23:                                               ; preds = %15
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = add nsw i64 %28, 1
  br label %30

30:                                               ; preds = %23, %21
  %31 = phi i64 [ %22, %21 ], [ %29, %23 ]
  store i64 %31, i64* %9, align 8
  %32 = load %struct.xdiff_emit_state*, %struct.xdiff_emit_state** %7, align 8
  %33 = getelementptr inbounds %struct.xdiff_emit_state, %struct.xdiff_emit_state* %32, i32 0, i32 1
  %34 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** %33, align 8
  %35 = load %struct.xdiff_emit_state*, %struct.xdiff_emit_state** %7, align 8
  %36 = getelementptr inbounds %struct.xdiff_emit_state, %struct.xdiff_emit_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32 %34(i32 %37, i8* %38, i64 %39)
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %6, align 8
  %43 = sub i64 %42, %41
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 %44
  store i8* %46, i8** %5, align 8
  br label %12

47:                                               ; preds = %12
  ret void
}

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
