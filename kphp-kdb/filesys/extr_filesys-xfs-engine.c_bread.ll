; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-xfs-engine.c_bread.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-xfs-engine.c_bread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFFSIZE = common dso_local global i32 0, align 4
@idx_crc32_complement = common dso_local global i32 0, align 4
@bytes_read = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @bread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bread(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* @BUFFSIZE, align 4
  %9 = ashr i32 %8, 1
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %22, %2
  %11 = load i64, i64* %4, align 8
  %12 = icmp ugt i64 %11, 0
  br i1 %12, label %13, label %48

13:                                               ; preds = %10
  %14 = load i64, i64* %4, align 8
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = icmp ugt i64 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %6, align 8
  br label %22

22:                                               ; preds = %19, %13
  %23 = load i64, i64* %6, align 8
  %24 = call i8* @readin(i64 %23)
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i8*, i8** %3, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @memcpy(i8* %29, i8* %30, i64 %31)
  %33 = load i8*, i8** %3, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* @idx_crc32_complement, align 4
  %36 = call i32 @crc32_partial(i8* %33, i64 %34, i32 %35)
  store i32 %36, i32* @idx_crc32_complement, align 4
  %37 = load i64, i64* %6, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr i8, i8* %38, i64 %37
  store i8* %39, i8** %3, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @readadv(i64 %40)
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @bytes_read, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* @bytes_read, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %4, align 8
  %47 = sub i64 %46, %45
  store i64 %47, i64* %4, align 8
  br label %10

48:                                               ; preds = %10
  ret void
}

declare dso_local i8* @readin(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @crc32_partial(i8*, i64, i32) #1

declare dso_local i32 @readadv(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
