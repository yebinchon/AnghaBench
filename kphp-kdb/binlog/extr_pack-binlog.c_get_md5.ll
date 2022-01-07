; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_pack-binlog.c_get_md5.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_pack-binlog.c_get_md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_md5.output = internal global [33 x i8] zeroinitializer, align 16
@hcyf = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_md5(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %40, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 16
  br i1 %6, label %7, label %43

7:                                                ; preds = %4
  %8 = load i8*, i8** @hcyf, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = ashr i32 %14, 4
  %16 = and i32 %15, 15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %8, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = load i32, i32* %3, align 4
  %21 = mul nsw i32 2, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [33 x i8], [33 x i8]* @get_md5.output, i64 0, i64 %22
  store i8 %19, i8* %23, align 1
  %24 = load i8*, i8** @hcyf, align 8
  %25 = load i8*, i8** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 15
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %24, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = load i32, i32* %3, align 4
  %36 = mul nsw i32 2, %35
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [33 x i8], [33 x i8]* @get_md5.output, i64 0, i64 %38
  store i8 %34, i8* %39, align 1
  br label %40

40:                                               ; preds = %7
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %4

43:                                               ; preds = %4
  store i8 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @get_md5.output, i64 0, i64 32), align 16
  ret i8* getelementptr inbounds ([33 x i8], [33 x i8]* @get_md5.output, i64 0, i64 0)
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
