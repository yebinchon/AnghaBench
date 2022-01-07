; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_crc32c.c_crc32c_partial_sse42.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_crc32c.c_crc32c_partial_sse42.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @crc32c_partial_sse42 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crc32c_partial_sse42(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %8, align 8
  br label %12

12:                                               ; preds = %22, %3
  %13 = load i8*, i8** %4, align 8
  %14 = ptrtoint i8* %13 to i64
  %15 = and i64 %14, 7
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 0
  br label %20

20:                                               ; preds = %17, %12
  %21 = phi i1 [ false, %12 ], [ %19, %17 ]
  br i1 %21, label %22, label %30

22:                                               ; preds = %20
  %23 = load i64, i64* %8, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 asm sideeffect "crc32b ($2), $1\0A\09", "=r,0,r,~{dirflag},~{fpsr},~{flags}"(i64 %23, i8* %24) #1, !srcloc !2
  store i64 %25, i64* %8, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %7, align 8
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %5, align 4
  br label %12

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %34, %30
  %32 = load i32, i32* %5, align 4
  %33 = icmp sge i32 %32, 8
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i64, i64* %8, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i64 asm sideeffect "crc32q ($2), $1\0A\09", "=r,0,r,~{dirflag},~{fpsr},~{flags}"(i64 %35, i8* %36) #1, !srcloc !3
  store i64 %37, i64* %8, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 8
  store i8* %39, i8** %7, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %40, 8
  store i32 %41, i32* %5, align 4
  br label %31

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %46, %42
  %44 = load i32, i32* %5, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load i64, i64* %8, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i64 asm sideeffect "crc32b ($2), $1\0A\09", "=r,0,r,~{dirflag},~{fpsr},~{flags}"(i64 %47, i8* %48) #1, !srcloc !4
  store i64 %49, i64* %8, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %7, align 8
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %5, align 4
  br label %43

54:                                               ; preds = %43
  %55 = load i64, i64* %8, align 8
  %56 = trunc i64 %55 to i32
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 366, i32 384}
!3 = !{i32 506, i32 524}
!4 = !{i32 651, i32 669}
