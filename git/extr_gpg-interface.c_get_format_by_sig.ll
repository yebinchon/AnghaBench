; ModuleID = '/home/carl/AnghaBench/git/extr_gpg-interface.c_get_format_by_sig.c'
source_filename = "/home/carl/AnghaBench/git/extr_gpg-interface.c_get_format_by_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpg_format = type { i64* }

@gpg_format = common dso_local global %struct.gpg_format* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gpg_format* (i8*)* @get_format_by_sig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gpg_format* @get_format_by_sig(i8* %0) #0 {
  %2 = alloca %struct.gpg_format*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %48, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.gpg_format*, %struct.gpg_format** @gpg_format, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.gpg_format* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %51

11:                                               ; preds = %6
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %44, %11
  %13 = load %struct.gpg_format*, %struct.gpg_format** @gpg_format, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.gpg_format, %struct.gpg_format* %13, i64 %15
  %17 = getelementptr inbounds %struct.gpg_format, %struct.gpg_format* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %47

24:                                               ; preds = %12
  %25 = load i8*, i8** %3, align 8
  %26 = load %struct.gpg_format*, %struct.gpg_format** @gpg_format, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.gpg_format, %struct.gpg_format* %26, i64 %28
  %30 = getelementptr inbounds %struct.gpg_format, %struct.gpg_format* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @starts_with(i8* %25, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %24
  %39 = load %struct.gpg_format*, %struct.gpg_format** @gpg_format, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.gpg_format, %struct.gpg_format* %39, i64 %41
  store %struct.gpg_format* %42, %struct.gpg_format** %2, align 8
  br label %52

43:                                               ; preds = %24
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %12

47:                                               ; preds = %12
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %6

51:                                               ; preds = %6
  store %struct.gpg_format* null, %struct.gpg_format** %2, align 8
  br label %52

52:                                               ; preds = %51, %38
  %53 = load %struct.gpg_format*, %struct.gpg_format** %2, align 8
  ret %struct.gpg_format* %53
}

declare dso_local i32 @ARRAY_SIZE(%struct.gpg_format*) #1

declare dso_local i64 @starts_with(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
