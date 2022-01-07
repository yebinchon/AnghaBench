; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_shared.c_hc_same_files.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_shared.c_hc_same_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hc_same_files(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %64

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %64

15:                                               ; preds = %12
  store i32 0, i32* %8, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @hc_fopen(i32* %9, i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = call i32 @hc_fileno(i32* %9)
  %21 = call i64 @fstat(i32 %20, %struct.stat* %6)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @hc_fclose(i32* %9)
  store i32 0, i32* %3, align 4
  br label %65

25:                                               ; preds = %19
  %26 = call i32 @hc_fclose(i32* %9)
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %25, %15
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @hc_fopen(i32* %9, i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = call i32 @hc_fileno(i32* %9)
  %35 = call i64 @fstat(i32 %34, %struct.stat* %7)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @hc_fclose(i32* %9)
  store i32 0, i32* %3, align 4
  br label %65

39:                                               ; preds = %33
  %40 = call i32 @hc_fclose(i32* %9)
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %39, %29
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %63

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 8
  store i64 0, i64* %47, align 8
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 7
  store i64 0, i64* %48, align 8
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 6
  store i64 0, i64* %49, align 8
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 5
  store i64 0, i64* %50, align 8
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 8
  store i64 0, i64* %53, align 8
  %54 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 7
  store i64 0, i64* %54, align 8
  %55 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 6
  store i64 0, i64* %55, align 8
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 5
  store i64 0, i64* %56, align 8
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 4
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = call i64 @memcmp(%struct.stat* %6, %struct.stat* %7, i32 72)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  store i32 1, i32* %3, align 4
  br label %65

62:                                               ; preds = %46
  br label %63

63:                                               ; preds = %62, %43
  br label %64

64:                                               ; preds = %63, %12, %2
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %61, %37, %23
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @hc_fopen(i32*, i8*, i8*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @hc_fileno(i32*) #1

declare dso_local i32 @hc_fclose(i32*) #1

declare dso_local i64 @memcmp(%struct.stat*, %struct.stat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
