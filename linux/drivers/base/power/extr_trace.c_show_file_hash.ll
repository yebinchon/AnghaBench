; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_trace.c_show_file_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_trace.c_show_file_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__tracedata_start = common dso_local global i8* null, align 8
@__tracedata_end = common dso_local global i8* null, align 8
@FILEHASH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"  hash matches %s:%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @show_file_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_file_hash(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %8 = load i8*, i8** @__tracedata_start, align 8
  store i8* %8, i8** %4, align 8
  br label %9

9:                                                ; preds = %35, %1
  %10 = load i8*, i8** %4, align 8
  %11 = load i8*, i8** @__tracedata_end, align 8
  %12 = icmp ult i8* %10, %11
  br i1 %12, label %13, label %38

13:                                               ; preds = %9
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to i16*
  %16 = load i16, i16* %15, align 2
  store i16 %16, i16* %5, align 2
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 2
  %19 = bitcast i8* %18 to i8**
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %6, align 8
  %21 = load i16, i16* %5, align 2
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* @FILEHASH, align 4
  %24 = call i32 @hash_string(i16 zeroext %21, i8* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %13
  br label %35

29:                                               ; preds = %13
  %30 = load i8*, i8** %6, align 8
  %31 = load i16, i16* %5, align 2
  %32 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %30, i16 zeroext %31)
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %29, %28
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 10
  store i8* %37, i8** %4, align 8
  br label %9

38:                                               ; preds = %9
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @hash_string(i16 zeroext, i8*, i32) #1

declare dso_local i32 @pr_info(i8*, i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
