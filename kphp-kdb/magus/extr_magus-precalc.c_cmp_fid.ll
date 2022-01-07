; ModuleID = '/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-precalc.c_cmp_fid.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/magus/extr_magus-precalc.c_cmp_fid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@f_size = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmp_fid(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i64*, i64** @f_size, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i64, i64* %5, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = load i64*, i64** @f_size, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %12, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %11, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load i8*, i8** %3, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %4, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  %28 = sext i32 %27 to i64
  br label %45

29:                                               ; preds = %2
  %30 = load i64*, i64** @f_size, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %30, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** @f_size, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %37, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %36, %43
  br label %45

45:                                               ; preds = %29, %20
  %46 = phi i64 [ %28, %20 ], [ %44, %29 ]
  %47 = trunc i64 %46 to i32
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
