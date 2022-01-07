; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_submodule.c_write_mapped_var.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_submodule.c_write_mapped_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ERROR_SUBMODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"invalid value for %s\00", align 1
@GIT_CONFIGMAP_TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i64, i8*, i32)* @write_mapped_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_mapped_var(i32* %0, i8* %1, i32* %2, i64 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32*, i32** %10, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i32, i32* %13, align 4
  %19 = call i64 @git_config_lookup_map_enum(i64* %14, i8** %15, i32* %16, i64 %17, i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %6
  %22 = load i32, i32* @GIT_ERROR_SUBMODULE, align 4
  %23 = load i8*, i8** %12, align 8
  %24 = call i32 @git_error_set(i32 %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 -1, i32* %7, align 4
  br label %36

25:                                               ; preds = %6
  %26 = load i64, i64* %14, align 8
  %27 = load i64, i64* @GIT_CONFIGMAP_TRUE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 8
  br label %30

30:                                               ; preds = %29, %25
  %31 = load i32*, i32** %8, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = call i32 @write_var(i32* %31, i8* %32, i8* %33, i8* %34)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %30, %21
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local i64 @git_config_lookup_map_enum(i64*, i8**, i32*, i64, i32) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

declare dso_local i32 @write_var(i32*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
