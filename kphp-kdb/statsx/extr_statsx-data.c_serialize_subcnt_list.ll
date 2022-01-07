; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_serialize_subcnt_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_serialize_subcnt_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter = type { i32, i64, i32* }

@.str = private unnamed_addr constant [19 x i8] c"s:5:\22extra\22;a:0:{}\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"s:5:\22extra\22;a:%d:{\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"i:%d;i:%d;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.counter*)* @serialize_subcnt_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @serialize_subcnt_list(i8* %0, %struct.counter* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.counter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.counter* %1, %struct.counter** %5, align 8
  %10 = load %struct.counter*, %struct.counter** %5, align 8
  %11 = getelementptr inbounds %struct.counter, %struct.counter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %12, 1296637200
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 (i8*, i8*, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load i8*, i8** %4, align 8
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  store i8* %20, i8** %3, align 8
  br label %67

21:                                               ; preds = %2
  %22 = load %struct.counter*, %struct.counter** %5, align 8
  %23 = getelementptr inbounds %struct.counter, %struct.counter* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @ipopcount(i64 %24)
  store i32 %25, i32* %6, align 4
  store i64 1, i64* %7, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 (i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i8*, i8** %4, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %58, %21
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 64
  br i1 %34, label %35, label %63

35:                                               ; preds = %32
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.counter*, %struct.counter** %5, align 8
  %38 = getelementptr inbounds %struct.counter, %struct.counter* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = and i64 %36, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %35
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.counter*, %struct.counter** %5, align 8
  %46 = getelementptr inbounds %struct.counter, %struct.counter* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, i8*, ...) @sprintf(i8* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %52)
  %54 = load i8*, i8** %4, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %4, align 8
  br label %57

57:                                               ; preds = %42, %35
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  %61 = load i64, i64* %7, align 8
  %62 = shl i64 %61, 1
  store i64 %62, i64* %7, align 8
  br label %32

63:                                               ; preds = %32
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %4, align 8
  store i8 125, i8* %64, align 1
  %66 = load i8*, i8** %4, align 8
  store i8* %66, i8** %3, align 8
  br label %67

67:                                               ; preds = %63, %14
  %68 = load i8*, i8** %3, align 8
  ret i8* %68
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @ipopcount(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
