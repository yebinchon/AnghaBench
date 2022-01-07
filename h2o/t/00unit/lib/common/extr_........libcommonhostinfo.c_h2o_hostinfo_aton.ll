; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonhostinfo.c_h2o_hostinfo_aton.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_........libcommonhostinfo.c_h2o_hostinfo_aton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.TYPE_3__ = type { i8*, i32 }
%union.anon = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h2o_hostinfo_aton(i8* %0, i32 %1, %struct.in_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca %struct.in_addr*, align 8
  %7 = alloca %union.anon, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = bitcast %struct.TYPE_3__* %5 to { i8*, i32 }*
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %11, i32 0, i32 0
  store i8* %0, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %11, i32 0, i32 1
  store i32 %1, i32* %13, align 8
  store %struct.in_addr* %2, %struct.in_addr** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  store i8* %20, i8** %9, align 8
  store i64 0, i64* %10, align 8
  br label %21

21:                                               ; preds = %3, %45
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast %union.anon* %7 to [4 x i8]*
  %25 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 0
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = call i8* @fetch_aton_digit(i8* %22, i8* %23, i8* %27)
  store i8* %28, i8** %8, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %60

31:                                               ; preds = %21
  %32 = load i64, i64* %10, align 8
  %33 = icmp eq i64 %32, 3
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %50

35:                                               ; preds = %31
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %8, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 46
  br i1 %43, label %45, label %44

44:                                               ; preds = %39, %35
  store i32 -1, i32* %4, align 4
  br label %60

45:                                               ; preds = %39
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %8, align 8
  %48 = load i64, i64* %10, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %10, align 8
  br label %21

50:                                               ; preds = %34
  %51 = load i8*, i8** %8, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = icmp ne i8* %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 -1, i32* %4, align 4
  br label %60

55:                                               ; preds = %50
  %56 = bitcast %union.anon* %7 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.in_addr*, %struct.in_addr** %6, align 8
  %59 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %55, %54, %44, %30
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i8* @fetch_aton_digit(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
