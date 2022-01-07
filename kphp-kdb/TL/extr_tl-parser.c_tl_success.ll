; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_success.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser.c_tl_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_compiler = type { i32, i64* }

@.str = private unnamed_addr constant [21 x i8] c"tl_success (%p, %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tl_success(%struct.tl_compiler* %0, i32 %1) #0 {
  %3 = alloca %struct.tl_compiler*, align 8
  %4 = alloca i32, align 4
  store %struct.tl_compiler* %0, %struct.tl_compiler** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.tl_compiler*, %struct.tl_compiler** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @vkprintf(i32 5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.tl_compiler* %5, i32 %6)
  br label %8

8:                                                ; preds = %39, %2
  %9 = load %struct.tl_compiler*, %struct.tl_compiler** %3, align 8
  %10 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %8
  %15 = load %struct.tl_compiler*, %struct.tl_compiler** %3, align 8
  %16 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 8
  %19 = load %struct.tl_compiler*, %struct.tl_compiler** %3, align 8
  %20 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load %struct.tl_compiler*, %struct.tl_compiler** %3, align 8
  %23 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %21, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %14
  %30 = load %struct.tl_compiler*, %struct.tl_compiler** %3, align 8
  %31 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load %struct.tl_compiler*, %struct.tl_compiler** %3, align 8
  %34 = getelementptr inbounds %struct.tl_compiler, %struct.tl_compiler* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %32, i64 %36
  %38 = call i32 @cstr_free(i64* %37)
  br label %39

39:                                               ; preds = %29, %14
  br label %8

40:                                               ; preds = %8
  ret i32 0
}

declare dso_local i32 @vkprintf(i32, i8*, %struct.tl_compiler*, i32) #1

declare dso_local i32 @cstr_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
