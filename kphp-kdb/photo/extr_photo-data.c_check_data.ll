; ModuleID = '/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_check_data.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/photo/extr_photo-data.c_check_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@todel_n = common dso_local global i64 0, align 8
@MAX_ALBUMS = common dso_local global i64 0, align 8
@todel = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_data(i32* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load i64*, i64** %4, align 8
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i32*
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i64 @data_unload(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load i64, i64* @todel_n, align 8
  %14 = load i64, i64* @MAX_ALBUMS, align 8
  %15 = icmp slt i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @data_free(i32* %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @dl_free(i32* %20, i32 4)
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** @todel, align 8
  %25 = load i64, i64* @todel_n, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* @todel_n, align 8
  %27 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32 %23, i32* %27, align 4
  br label %28

28:                                               ; preds = %12, %2
  ret void
}

declare dso_local i64 @data_unload(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @data_free(i32*) #1

declare dso_local i32 @dl_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
