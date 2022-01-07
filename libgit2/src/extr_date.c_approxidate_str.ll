; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_date.c_approxidate_str.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_date.c_approxidate_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @approxidate_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @approxidate_str(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tm, align 4
  %10 = alloca %struct.tm, align 4
  %11 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = bitcast %struct.tm* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 16, i1 false)
  %13 = call i32 @p_localtime_r(i32* %5, %struct.tm* %9)
  %14 = bitcast %struct.tm* %10 to i8*
  %15 = bitcast %struct.tm* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 16, i1 false)
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 0
  store i32 -1, i32* %16, align 4
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 1
  store i32 -1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 2
  store i32 -1, i32* %18, align 4
  br label %19

19:                                               ; preds = %44, %31, %3
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %11, align 1
  %22 = load i8, i8* %11, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %45

25:                                               ; preds = %19
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %4, align 8
  %28 = load i8, i8* %11, align 1
  %29 = call i64 @isdigit(i8 zeroext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = call i32 @pending_number(%struct.tm* %9, i32* %7)
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 -1
  %35 = call i8* @approxidate_digit(i8* %34, %struct.tm* %9, i32* %7)
  store i8* %35, i8** %4, align 8
  store i32 1, i32* %8, align 4
  br label %19

36:                                               ; preds = %25
  %37 = load i8, i8* %11, align 1
  %38 = call i64 @isalpha(i8 zeroext %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 -1
  %43 = call i8* @approxidate_alpha(i8* %42, %struct.tm* %9, %struct.tm* %10, i32* %7, i32* %8)
  store i8* %43, i8** %4, align 8
  br label %44

44:                                               ; preds = %40, %36
  br label %19

45:                                               ; preds = %24
  %46 = call i32 @pending_number(%struct.tm* %9, i32* %7)
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = load i32*, i32** %6, align 8
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %49, %45
  %52 = call i32 @update_tm(%struct.tm* %9, %struct.tm* %10, i32 0)
  ret i32 %52
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @p_localtime_r(i32*, %struct.tm*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @isdigit(i8 zeroext) #2

declare dso_local i32 @pending_number(%struct.tm*, i32*) #2

declare dso_local i8* @approxidate_digit(i8*, %struct.tm*, i32*) #2

declare dso_local i64 @isalpha(i8 zeroext) #2

declare dso_local i8* @approxidate_alpha(i8*, %struct.tm*, %struct.tm*, i32*, i32*) #2

declare dso_local i32 @update_tm(%struct.tm*, %struct.tm*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
