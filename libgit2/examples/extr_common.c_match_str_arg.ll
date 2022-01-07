; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_common.c_match_str_arg.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_common.c_match_str_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.args_info = type { i8**, i64, i32 }

@.str = private unnamed_addr constant [34 x i8] c"expected value following argument\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @match_str_arg(i8** %0, %struct.args_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.args_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store %struct.args_info* %1, %struct.args_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.args_info*, %struct.args_info** %6, align 8
  %11 = getelementptr inbounds %struct.args_info, %struct.args_info* %10, i32 0, i32 0
  %12 = load i8**, i8*** %11, align 8
  %13 = load %struct.args_info*, %struct.args_info** %6, align 8
  %14 = getelementptr inbounds %struct.args_info, %struct.args_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i8*, i8** %12, i64 %15
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @is_prefixed(i8* %18, i8* %19)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %71

24:                                               ; preds = %3
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %57, label %30

30:                                               ; preds = %24
  %31 = load %struct.args_info*, %struct.args_info** %6, align 8
  %32 = getelementptr inbounds %struct.args_info, %struct.args_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 1
  %35 = load %struct.args_info*, %struct.args_info** %6, align 8
  %36 = getelementptr inbounds %struct.args_info, %struct.args_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = icmp eq i64 %34, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @fatal(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %40, %30
  %44 = load %struct.args_info*, %struct.args_info** %6, align 8
  %45 = getelementptr inbounds %struct.args_info, %struct.args_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = load %struct.args_info*, %struct.args_info** %6, align 8
  %49 = getelementptr inbounds %struct.args_info, %struct.args_info* %48, i32 0, i32 0
  %50 = load i8**, i8*** %49, align 8
  %51 = load %struct.args_info*, %struct.args_info** %6, align 8
  %52 = getelementptr inbounds %struct.args_info, %struct.args_info* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i8*, i8** %50, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = load i8**, i8*** %5, align 8
  store i8* %55, i8** %56, align 8
  store i32 1, i32* %4, align 4
  br label %71

57:                                               ; preds = %24
  %58 = load i8*, i8** %8, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 61
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load i8*, i8** %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8**, i8*** %5, align 8
  store i8* %68, i8** %69, align 8
  store i32 1, i32* %4, align 4
  br label %71

70:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %64, %43, %23
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @is_prefixed(i8*, i8*) #1

declare dso_local i32 @fatal(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
