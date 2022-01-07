; ModuleID = '/home/carl/AnghaBench/git/extr_parse-options-cb.c_parse_options_dup.c'
source_filename = "/home/carl/AnghaBench/git/extr_parse-options-cb.c_parse_options_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i64 }

@OPTION_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.option* @parse_options_dup(%struct.option* %0) #0 {
  %2 = alloca %struct.option*, align 8
  %3 = alloca %struct.option*, align 8
  %4 = alloca i32, align 4
  store %struct.option* %0, %struct.option** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %16, %1
  %6 = load %struct.option*, %struct.option** %2, align 8
  %7 = icmp ne %struct.option* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load %struct.option*, %struct.option** %2, align 8
  %10 = getelementptr inbounds %struct.option, %struct.option* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @OPTION_END, align 8
  %13 = icmp ne i64 %11, %12
  br label %14

14:                                               ; preds = %8, %5
  %15 = phi i1 [ false, %5 ], [ %13, %8 ]
  br i1 %15, label %16, label %21

16:                                               ; preds = %14
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  %19 = load %struct.option*, %struct.option** %2, align 8
  %20 = getelementptr inbounds %struct.option, %struct.option* %19, i32 1
  store %struct.option* %20, %struct.option** %2, align 8
  br label %5

21:                                               ; preds = %14
  %22 = load %struct.option*, %struct.option** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  %25 = call i32 @ALLOC_ARRAY(%struct.option* %22, i32 %24)
  %26 = load %struct.option*, %struct.option** %3, align 8
  %27 = load %struct.option*, %struct.option** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = sub i64 0, %29
  %31 = getelementptr inbounds %struct.option, %struct.option* %27, i64 %30
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 8, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memcpy(%struct.option* %26, %struct.option* %31, i32 %35)
  %37 = load %struct.option*, %struct.option** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.option, %struct.option* %37, i64 %39
  %41 = call i32 @memset(%struct.option* %40, i32 0, i32 8)
  %42 = load i64, i64* @OPTION_END, align 8
  %43 = load %struct.option*, %struct.option** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.option, %struct.option* %43, i64 %45
  %47 = getelementptr inbounds %struct.option, %struct.option* %46, i32 0, i32 0
  store i64 %42, i64* %47, align 8
  %48 = load %struct.option*, %struct.option** %3, align 8
  ret %struct.option* %48
}

declare dso_local i32 @ALLOC_ARRAY(%struct.option*, i32) #1

declare dso_local i32 @memcpy(%struct.option*, %struct.option*, i32) #1

declare dso_local i32 @memset(%struct.option*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
