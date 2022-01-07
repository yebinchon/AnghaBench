; ModuleID = '/home/carl/AnghaBench/git/extr_convert.c_will_convert_lf_to_crlf.c'
source_filename = "/home/carl/AnghaBench/git/extr_convert.c_will_convert_lf_to_crlf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.text_stat = type { i64, i64, i32 }

@EOL_CRLF = common dso_local global i64 0, align 8
@CRLF_AUTO = common dso_local global i32 0, align 4
@CRLF_AUTO_INPUT = common dso_local global i32 0, align 4
@CRLF_AUTO_CRLF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.text_stat*, i32)* @will_convert_lf_to_crlf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @will_convert_lf_to_crlf(%struct.text_stat* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.text_stat*, align 8
  %5 = alloca i32, align 4
  store %struct.text_stat* %0, %struct.text_stat** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @output_eol(i32 %6)
  %8 = load i64, i64* @EOL_CRLF, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

11:                                               ; preds = %2
  %12 = load %struct.text_stat*, %struct.text_stat** %4, align 8
  %13 = getelementptr inbounds %struct.text_stat, %struct.text_stat* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %47

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @CRLF_AUTO, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @CRLF_AUTO_INPUT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @CRLF_AUTO_CRLF, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %25, %21, %17
  %30 = load %struct.text_stat*, %struct.text_stat** %4, align 8
  %31 = getelementptr inbounds %struct.text_stat, %struct.text_stat* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.text_stat*, %struct.text_stat** %4, align 8
  %36 = getelementptr inbounds %struct.text_stat, %struct.text_stat* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %29
  store i32 0, i32* %3, align 4
  br label %47

40:                                               ; preds = %34
  %41 = load %struct.text_stat*, %struct.text_stat** %4, align 8
  %42 = call i64 @convert_is_binary(%struct.text_stat* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %47

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %25
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %44, %39, %16, %10
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @output_eol(i32) #1

declare dso_local i64 @convert_is_binary(%struct.text_stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
