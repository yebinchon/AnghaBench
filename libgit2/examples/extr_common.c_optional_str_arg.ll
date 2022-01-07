; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_common.c_optional_str_arg.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_common.c_optional_str_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.args_info = type { i8**, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @optional_str_arg(i8** %0, %struct.args_info* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.args_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8** %0, i8*** %6, align 8
  store %struct.args_info* %1, %struct.args_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.args_info*, %struct.args_info** %7, align 8
  %13 = getelementptr inbounds %struct.args_info, %struct.args_info* %12, i32 0, i32 0
  %14 = load i8**, i8*** %13, align 8
  %15 = load %struct.args_info*, %struct.args_info** %7, align 8
  %16 = getelementptr inbounds %struct.args_info, %struct.args_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i8*, i8** %14, i64 %17
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @is_prefixed(i8* %20, i8* %21)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %73

26:                                               ; preds = %4
  %27 = load i8*, i8** %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %59, label %32

32:                                               ; preds = %26
  %33 = load %struct.args_info*, %struct.args_info** %7, align 8
  %34 = getelementptr inbounds %struct.args_info, %struct.args_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 1
  %37 = load %struct.args_info*, %struct.args_info** %7, align 8
  %38 = getelementptr inbounds %struct.args_info, %struct.args_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = icmp eq i64 %36, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i8*, i8** %9, align 8
  %44 = load i8**, i8*** %6, align 8
  store i8* %43, i8** %44, align 8
  store i32 1, i32* %5, align 4
  br label %73

45:                                               ; preds = %32
  %46 = load %struct.args_info*, %struct.args_info** %7, align 8
  %47 = getelementptr inbounds %struct.args_info, %struct.args_info* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = load %struct.args_info*, %struct.args_info** %7, align 8
  %51 = getelementptr inbounds %struct.args_info, %struct.args_info* %50, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = load %struct.args_info*, %struct.args_info** %7, align 8
  %54 = getelementptr inbounds %struct.args_info, %struct.args_info* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i8*, i8** %52, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load i8**, i8*** %6, align 8
  store i8* %57, i8** %58, align 8
  store i32 1, i32* %5, align 4
  br label %73

59:                                               ; preds = %26
  %60 = load i8*, i8** %10, align 8
  %61 = load i64, i64* %11, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 61
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load i8*, i8** %10, align 8
  %68 = load i64, i64* %11, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8**, i8*** %6, align 8
  store i8* %70, i8** %71, align 8
  store i32 1, i32* %5, align 4
  br label %73

72:                                               ; preds = %59
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %66, %45, %42, %25
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i64 @is_prefixed(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
