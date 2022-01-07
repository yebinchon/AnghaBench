; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_md4.c_mdfour_tail.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_md4.c_mdfour_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@m = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @mdfour_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdfour_tail(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [128 x i32], align 16
  %6 = alloca [16 x i32], align 16
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @m, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @m, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %15, 8
  store i32 %16, i32* %7, align 4
  %17 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %18 = call i32 @Com_Memset(i32* %17, i32 0, i32 128)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @Com_Memcpy(i32* %22, i32* %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %2
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 %28
  store i32 128, i32* %29, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp sle i32 %30, 55
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %34 = getelementptr inbounds i32, i32* %33, i64 56
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @copy4(i32* %34, i32 %35)
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %38 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %39 = call i32 @copy64(i32* %37, i32* %38)
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %41 = call i32 @mdfour64(i32* %40)
  br label %58

42:                                               ; preds = %26
  %43 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %44 = getelementptr inbounds i32, i32* %43, i64 120
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @copy4(i32* %44, i32 %45)
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %48 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %49 = call i32 @copy64(i32* %47, i32* %48)
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %51 = call i32 @mdfour64(i32* %50)
  %52 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %53 = getelementptr inbounds [128 x i32], [128 x i32]* %5, i64 0, i64 0
  %54 = getelementptr inbounds i32, i32* %53, i64 64
  %55 = call i32 @copy64(i32* %52, i32* %54)
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %57 = call i32 @mdfour64(i32* %56)
  br label %58

58:                                               ; preds = %42, %32
  ret void
}

declare dso_local i32 @Com_Memset(i32*, i32, i32) #1

declare dso_local i32 @Com_Memcpy(i32*, i32*, i32) #1

declare dso_local i32 @copy4(i32*, i32) #1

declare dso_local i32 @copy64(i32*, i32*) #1

declare dso_local i32 @mdfour64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
