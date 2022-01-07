; ModuleID = '/home/carl/AnghaBench/jq/src/extr_builtin.c_f_env.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_builtin.c_f_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@environ = common dso_local global i8** null, align 8
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @f_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_env(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @jv_free(i32 %9)
  %11 = call i32 (...) @jv_object()
  store i32 %11, i32* %5, align 4
  %12 = load i8**, i8*** @environ, align 8
  store i8** %12, i8*** %8, align 8
  br label %13

13:                                               ; preds = %58, %2
  %14 = load i8**, i8*** %8, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %61

17:                                               ; preds = %13
  %18 = load i8**, i8*** %8, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %6, align 8
  %21 = load i8**, i8*** %8, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @strchr(i8* %23, i8 signext 61)
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %17
  %28 = load i32, i32* %5, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @jv_string(i8* %29)
  %31 = call i32 (...) @jv_null()
  %32 = call i32 @jv_object_set(i32 %28, i32 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  br label %57

33:                                               ; preds = %17
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = load i32, i32* @INT_MAX, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %38, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %33
  %43 = load i32, i32* %5, align 4
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 @jv_string_sized(i8* %44, i32 %50)
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = call i32 @jv_string(i8* %53)
  %55 = call i32 @jv_object_set(i32 %43, i32 %51, i32 %54)
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %42, %33
  br label %57

57:                                               ; preds = %56, %27
  br label %58

58:                                               ; preds = %57
  %59 = load i8**, i8*** %8, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i32 1
  store i8** %60, i8*** %8, align 8
  br label %13

61:                                               ; preds = %13
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @jv_object(...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @jv_object_set(i32, i32, i32) #1

declare dso_local i32 @jv_string(i8*) #1

declare dso_local i32 @jv_null(...) #1

declare dso_local i32 @jv_string_sized(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
