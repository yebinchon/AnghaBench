; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-merge.c_write_out.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-merge.c_write_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILE_BUFFER_SIZE = common dso_local global i32 0, align 4
@woptr = common dso_local global i64 0, align 8
@obuff = common dso_local global i64 0, align 8
@roptr = common dso_local global i64 0, align 8
@wpos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @write_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_out(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @FILE_BUFFER_SIZE, align 4
  %8 = mul nsw i32 %7, 8
  %9 = icmp ult i32 %6, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i64, i64* @woptr, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* @obuff, align 8
  store i64 %15, i64* @roptr, align 8
  store i64 %15, i64* @woptr, align 8
  br label %16

16:                                               ; preds = %14, %2
  br label %17

17:                                               ; preds = %64, %16
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %65

20:                                               ; preds = %17
  %21 = load i64, i64* @obuff, align 8
  %22 = load i32, i32* @FILE_BUFFER_SIZE, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = load i64, i64* @woptr, align 8
  %26 = sub nsw i64 %24, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %20
  %34 = load i32, i32* %5, align 4
  %35 = icmp sgt i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i64, i64* @woptr, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @memcpy(i64 %38, i8* %39, i32 %40)
  %42 = load i8*, i8** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  store i8* %45, i8** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* @woptr, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* @woptr, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %4, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @wpos, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* @wpos, align 4
  %56 = load i64, i64* @woptr, align 8
  %57 = load i64, i64* @obuff, align 8
  %58 = load i32, i32* @FILE_BUFFER_SIZE, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = icmp eq i64 %56, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %33
  %63 = call i32 (...) @flush_out()
  br label %64

64:                                               ; preds = %62, %33
  br label %17

65:                                               ; preds = %17
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @flush_out(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
