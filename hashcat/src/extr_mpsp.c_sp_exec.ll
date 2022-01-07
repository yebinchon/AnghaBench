; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_mpsp.c_sp_exec.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_mpsp.c_sp_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64* }

@CHARSIZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sp_exec(i64 %0, i8* %1, %struct.TYPE_4__* %2, %struct.TYPE_4__* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %13, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %21 = load i64, i64* %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %21
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %14, align 8
  %23 = load i64, i64* %11, align 8
  store i64 %23, i64* %15, align 8
  br label %24

24:                                               ; preds = %60, %6
  %25 = load i64, i64* %15, align 8
  %26 = load i64, i64* %12, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %63

28:                                               ; preds = %24
  %29 = load i64, i64* %13, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = urem i64 %29, %32
  store i64 %33, i64* %16, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = udiv i64 %34, %37
  store i64 %38, i64* %17, align 8
  %39 = load i64, i64* %17, align 8
  store i64 %39, i64* %13, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* %16, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %18, align 8
  %46 = load i64, i64* %18, align 8
  %47 = trunc i64 %46 to i8
  %48 = load i8*, i8** %8, align 8
  %49 = load i64, i64* %15, align 8
  %50 = load i64, i64* %11, align 8
  %51 = sub i64 %49, %50
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  store i8 %47, i8* %52, align 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* @CHARSIZ, align 8
  %56 = mul i64 %54, %55
  %57 = load i64, i64* %18, align 8
  %58 = add i64 %56, %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %58
  store %struct.TYPE_4__* %59, %struct.TYPE_4__** %14, align 8
  br label %60

60:                                               ; preds = %28
  %61 = load i64, i64* %15, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %15, align 8
  br label %24

63:                                               ; preds = %24
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
