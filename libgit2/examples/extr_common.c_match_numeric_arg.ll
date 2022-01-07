; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_common.c_match_numeric_arg.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_common.c_match_numeric_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.args_info = type { i8**, i64, i32 }

@.str = private unnamed_addr constant [42 x i8] c"expected numeric value following argument\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.args_info*, i8*)* @match_numeric_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @match_numeric_arg(%struct.args_info* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.args_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.args_info* %0, %struct.args_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.args_info*, %struct.args_info** %4, align 8
  %9 = getelementptr inbounds %struct.args_info, %struct.args_info* %8, i32 0, i32 0
  %10 = load i8**, i8*** %9, align 8
  %11 = load %struct.args_info*, %struct.args_info** %4, align 8
  %12 = getelementptr inbounds %struct.args_info, %struct.args_info* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i8*, i8** %10, i64 %13
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @is_prefixed(i8* %16, i8* %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %68

22:                                               ; preds = %2
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %54, label %28

28:                                               ; preds = %22
  %29 = load %struct.args_info*, %struct.args_info** %4, align 8
  %30 = getelementptr inbounds %struct.args_info, %struct.args_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, 1
  %33 = load %struct.args_info*, %struct.args_info** %4, align 8
  %34 = getelementptr inbounds %struct.args_info, %struct.args_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = icmp eq i64 %32, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %38, %28
  %42 = load %struct.args_info*, %struct.args_info** %4, align 8
  %43 = getelementptr inbounds %struct.args_info, %struct.args_info* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = load %struct.args_info*, %struct.args_info** %4, align 8
  %47 = getelementptr inbounds %struct.args_info, %struct.args_info* %46, i32 0, i32 0
  %48 = load i8**, i8*** %47, align 8
  %49 = load %struct.args_info*, %struct.args_info** %4, align 8
  %50 = getelementptr inbounds %struct.args_info, %struct.args_info* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i8*, i8** %48, i64 %51
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %6, align 8
  br label %66

54:                                               ; preds = %22
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %6, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 61
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %6, align 8
  br label %65

65:                                               ; preds = %62, %54
  br label %66

66:                                               ; preds = %65, %41
  %67 = load i8*, i8** %6, align 8
  store i8* %67, i8** %3, align 8
  br label %68

68:                                               ; preds = %66, %21
  %69 = load i8*, i8** %3, align 8
  ret i8* %69
}

declare dso_local i64 @is_prefixed(i8*, i8*) #1

declare dso_local i32 @fatal(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
