; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_backend.c_read_kernel_binary.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_backend.c_read_kernel_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"\0A//%u\0A\00", align 1
@EXTRASZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64*, i8**, i32)* @read_kernel_binary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_kernel_binary(i32* %0, i8* %1, i64* %2, i8** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.stat, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @hc_fopen(i32* %12, i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %76

22:                                               ; preds = %5
  %23 = load i8*, i8** %8, align 8
  %24 = call i64 @stat(i8* %23, %struct.stat* %13)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 @hc_fclose(i32* %12)
  store i32 0, i32* %6, align 4
  br label %83

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %14, align 8
  %31 = load i64, i64* %14, align 8
  %32 = add i64 %31, 1
  %33 = add i64 %32, 100
  %34 = call i64 @hcmalloc(i64 %33)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %15, align 8
  %36 = load i8*, i8** %15, align 8
  %37 = load i64, i64* %14, align 8
  %38 = call i64 @hc_fread(i8* %36, i32 1, i64 %37, i32* %12)
  store i64 %38, i64* %16, align 8
  %39 = call i32 @hc_fclose(i32* %12)
  %40 = load i64, i64* %16, align 8
  %41 = load i64, i64* %14, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %28
  %44 = load i32*, i32** %7, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* @errno, align 4
  %47 = call i32 @strerror(i32 %46)
  %48 = call i32 @event_log_error(i32* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %45, i32 %47)
  %49 = load i8*, i8** %15, align 8
  %50 = call i32 @hcfree(i8* %49)
  store i32 0, i32* %6, align 4
  br label %83

51:                                               ; preds = %28
  %52 = load i8*, i8** %15, align 8
  %53 = load i64, i64* %14, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8 0, i8* %54, align 1
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = call i64 @time(i32* null)
  store i64 %58, i64* %17, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = load i64, i64* %14, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i64, i64* %17, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @snprintf(i8* %61, i64 100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %18, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %14, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %14, align 8
  br label %69

69:                                               ; preds = %57, %51
  %70 = load i64, i64* %14, align 8
  %71 = load i64*, i64** %9, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 0
  store i64 %70, i64* %72, align 8
  %73 = load i8*, i8** %15, align 8
  %74 = load i8**, i8*** %10, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 0
  store i8* %73, i8** %75, align 8
  br label %82

76:                                               ; preds = %5
  %77 = load i32*, i32** %7, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load i32, i32* @errno, align 4
  %80 = call i32 @strerror(i32 %79)
  %81 = call i32 @event_log_error(i32* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %78, i32 %80)
  store i32 0, i32* %6, align 4
  br label %83

82:                                               ; preds = %69
  store i32 1, i32* %6, align 4
  br label %83

83:                                               ; preds = %82, %76, %43, %26
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @hc_fopen(i32*, i8*, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @hc_fclose(i32*) #1

declare dso_local i64 @hcmalloc(i64) #1

declare dso_local i64 @hc_fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @event_log_error(i32*, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @hcfree(i8*) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
