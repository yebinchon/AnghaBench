; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_print.c_jv_dump_string_trunc.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_print.c_jv_dump_string_trunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @jv_dump_string_trunc(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @jv_dump_string(i32 %9, i32 0)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i8* @jv_string_value(i32 %11)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @strlen(i8* %13)
  store i64 %14, i64* %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @strncpy(i8* %15, i8* %16, i64 %17)
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = sub i64 %20, 1
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8 0, i8* %22, align 1
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %6, align 8
  %25 = sub i64 %24, 1
  %26 = icmp ugt i64 %23, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %3
  %28 = load i64, i64* %6, align 8
  %29 = icmp uge i64 %28, 4
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = sub i64 %32, 2
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  store i8 46, i8* %34, align 1
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = sub i64 %36, 3
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  store i8 46, i8* %38, align 1
  %39 = load i8*, i8** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = sub i64 %40, 4
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8 46, i8* %42, align 1
  br label %43

43:                                               ; preds = %30, %27, %3
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @jv_free(i32 %44)
  %46 = load i8*, i8** %5, align 8
  ret i8* %46
}

declare dso_local i32 @jv_dump_string(i32, i32) #1

declare dso_local i8* @jv_string_value(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @jv_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
