; ModuleID = '/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_do_convert.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/cache/extr_cache-data.c_cache_do_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_uri = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cache_do_convert(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cache_uri*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = call %struct.cache_uri* @get_uri_f(i8* %9, i32 0)
  store %struct.cache_uri* %10, %struct.cache_uri** %8, align 8
  %11 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  %12 = icmp eq %struct.cache_uri* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %19

14:                                               ; preds = %3
  %15 = load %struct.cache_uri*, %struct.cache_uri** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @cache_convert(%struct.cache_uri* %15, i8* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %14, %13
  %20 = load i32, i32* %4, align 4
  ret i32 %20
}

declare dso_local %struct.cache_uri* @get_uri_f(i8*, i32) #1

declare dso_local i32 @cache_convert(%struct.cache_uri*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
