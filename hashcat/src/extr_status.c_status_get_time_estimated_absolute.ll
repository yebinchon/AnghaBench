; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_status.c_status_get_time_estimated_absolute.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_status.c_status_get_time_estimated_absolute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ETA_ABSOLUTE_MAX_EXCEEDED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @status_get_time_estimated_absolute(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i64 @status_get_sec_etc(i32* %9)
  store i64 %10, i64* %3, align 8
  %11 = call i32 @time(i64* %4)
  %12 = bitcast [32 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 32, i1 false)
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @overflow_check_u64_add(i64 %13, i64 %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i64, i64* @ETA_ABSOLUTE_MAX_EXCEEDED, align 8
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %6, align 8
  br label %32

20:                                               ; preds = %1
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %3, align 8
  %23 = add nsw i64 %21, %22
  store i64 %23, i64* %7, align 8
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %25 = call i8* @ctime_r(i64* %7, i8* %24)
  store i8* %25, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i64, i64* @ETA_ABSOLUTE_MAX_EXCEEDED, align 8
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %6, align 8
  br label %31

31:                                               ; preds = %28, %20
  br label %32

32:                                               ; preds = %31, %17
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @strlen(i8* %33)
  store i64 %34, i64* %8, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %8, align 8
  %37 = sub i64 %36, 1
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load i8*, i8** %6, align 8
  %44 = load i64, i64* %8, align 8
  %45 = sub i64 %44, 1
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8 0, i8* %46, align 1
  br label %47

47:                                               ; preds = %42, %32
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %8, align 8
  %50 = sub i64 %49, 2
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 13
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load i8*, i8** %6, align 8
  %57 = load i64, i64* %8, align 8
  %58 = sub i64 %57, 2
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8 0, i8* %59, align 1
  br label %60

60:                                               ; preds = %55, %47
  %61 = load i8*, i8** %6, align 8
  %62 = call i8* @strdup(i8* %61)
  ret i8* %62
}

declare dso_local i64 @status_get_sec_etc(i32*) #1

declare dso_local i32 @time(i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @overflow_check_u64_add(i64, i64) #1

declare dso_local i8* @ctime_r(i64*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
