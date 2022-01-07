; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_shared.c_naive_escape.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_shared.c_naive_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @naive_escape(i8* %0, i64 %1, i8 signext %2, i8 signext %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca [1024 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %15 = bitcast [1024 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 1024, i1 false)
  store i64 1024, i64* %10, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  br label %18

18:                                               ; preds = %48, %4
  %19 = load i64, i64* %12, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %53

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %12, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %14, align 1
  %27 = load i8, i8* %14, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8, i8* %7, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load i8, i8* %8, align 1
  %34 = load i64, i64* %13, align 8
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 %34
  store i8 %33, i8* %35, align 1
  %36 = load i64, i64* %13, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %13, align 8
  br label %38

38:                                               ; preds = %32, %22
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* %10, align 8
  %41 = sub i64 %40, 2
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %53

44:                                               ; preds = %38
  %45 = load i8, i8* %14, align 1
  %46 = load i64, i64* %13, align 8
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 %46
  store i8 %45, i8* %47, align 1
  br label %48

48:                                               ; preds = %44
  %49 = load i64, i64* %12, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %13, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %13, align 8
  br label %18

53:                                               ; preds = %43, %18
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %56 = load i64, i64* %6, align 8
  %57 = sub i64 %56, 1
  %58 = call i32 @strncpy(i8* %54, i8* %55, i64 %57)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strncpy(i8*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
