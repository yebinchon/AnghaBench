; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_mpsp.c_mp_setup_usr.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_mpsp.c_mp_setup_usr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"%s: Custom charset file is too large.\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: Custom charset file is empty.\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"%s: Custom charset file is corrupted.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i8*, i32)* @mp_setup_usr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_setup_usr(i32* %0, i32* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [1024 x i8], align 16
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = call i32 @hc_fopen(i32* %12, i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %5
  %22 = load i32*, i32** %7, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = call i64 @strlen(i8* %24)
  %26 = load i32*, i32** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @mp_expand(i32* %22, i8* %23, i64 %25, i32* %26, i32* %27, i32 %28, i32 1)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  store i32 -1, i32* %6, align 4
  br label %77

33:                                               ; preds = %21
  br label %76

34:                                               ; preds = %5
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %36 = call i64 @hc_fread(i8* %35, i32 1, i32 1023, i32* %12)
  store i64 %36, i64* %15, align 8
  %37 = call i32 @hc_feof(i32* %12)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i32*, i32** %7, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @event_log_error(i32* %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = call i32 @hc_fclose(i32* %12)
  store i32 -1, i32* %6, align 4
  br label %77

44:                                               ; preds = %34
  %45 = call i32 @hc_fclose(i32* %12)
  %46 = load i64, i64* %15, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32*, i32** %7, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @event_log_error(i32* %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  store i32 -1, i32* %6, align 4
  br label %77

52:                                               ; preds = %44
  %53 = load i64, i64* %15, align 8
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 %53
  store i8 0, i8* %54, align 1
  %55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %56 = load i64, i64* %15, align 8
  %57 = call i64 @superchop_with_length(i8* %55, i64 %56)
  store i64 %57, i64* %16, align 8
  %58 = load i64, i64* %16, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load i32*, i32** %7, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 @event_log_error(i32* %61, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  store i32 -1, i32* %6, align 4
  br label %77

64:                                               ; preds = %52
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  %67 = load i64, i64* %16, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @mp_expand(i32* %65, i8* %66, i64 %67, i32* %68, i32* %69, i32 %70, i32 0)
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  store i32 -1, i32* %6, align 4
  br label %77

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75, %33
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %76, %74, %60, %48, %39, %32
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @hc_fopen(i32*, i8*, i8*) #1

declare dso_local i32 @mp_expand(i32*, i8*, i64, i32*, i32*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @hc_fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @hc_feof(i32*) #1

declare dso_local i32 @event_log_error(i32*, i8*, i8*) #1

declare dso_local i32 @hc_fclose(i32*) #1

declare dso_local i64 @superchop_with_length(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
